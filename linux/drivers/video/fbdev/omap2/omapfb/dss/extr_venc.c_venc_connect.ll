; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_venc.c_venc_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_venc.c_venc_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32, i32 }
%struct.omap_overlay_manager = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"failed to connect output to new device: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, %struct.omap_dss_device*)* @venc_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_connect(%struct.omap_dss_device* %0, %struct.omap_dss_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca %struct.omap_dss_device*, align 8
  %6 = alloca %struct.omap_overlay_manager*, align 8
  %7 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %4, align 8
  store %struct.omap_dss_device* %1, %struct.omap_dss_device** %5, align 8
  %8 = call i32 (...) @venc_init_regulator()
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %3, align 4
  br label %47

13:                                               ; preds = %2
  %14 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %15 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.omap_overlay_manager* @omap_dss_get_overlay_manager(i32 %16)
  store %struct.omap_overlay_manager* %17, %struct.omap_overlay_manager** %6, align 8
  %18 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %6, align 8
  %19 = icmp ne %struct.omap_overlay_manager* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %47

23:                                               ; preds = %13
  %24 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %6, align 8
  %25 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %26 = call i32 @dss_mgr_connect(%struct.omap_overlay_manager* %24, %struct.omap_dss_device* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %47

31:                                               ; preds = %23
  %32 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %33 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %34 = call i32 @omapdss_output_set_device(%struct.omap_dss_device* %32, %struct.omap_dss_device* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %39 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @DSSERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %6, align 8
  %43 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %44 = call i32 @dss_mgr_disconnect(%struct.omap_overlay_manager* %42, %struct.omap_dss_device* %43)
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %37, %29, %20, %11
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @venc_init_regulator(...) #1

declare dso_local %struct.omap_overlay_manager* @omap_dss_get_overlay_manager(i32) #1

declare dso_local i32 @dss_mgr_connect(%struct.omap_overlay_manager*, %struct.omap_dss_device*) #1

declare dso_local i32 @omapdss_output_set_device(%struct.omap_dss_device*, %struct.omap_dss_device*) #1

declare dso_local i32 @DSSERR(i8*, i32) #1

declare dso_local i32 @dss_mgr_disconnect(%struct.omap_overlay_manager*, %struct.omap_dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
