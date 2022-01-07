; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_output.c_omapdss_output_unset_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_output.c_omapdss_output_unset_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32*, i32 }

@output_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"output doesn't have a device connected to it\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OMAP_DSS_DISPLAY_DISABLED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"device %s is not disabled, cannot unset device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omapdss_output_unset_device(%struct.omap_dss_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_dss_device*, align 8
  %4 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %3, align 8
  %5 = call i32 @mutex_lock(i32* @output_lock)
  %6 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %7 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %39

14:                                               ; preds = %1
  %15 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %16 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @OMAP_DSS_DISPLAY_DISABLED, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %14
  %23 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %24 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %39

31:                                               ; preds = %14
  %32 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %33 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %37 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %36, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %37, align 8
  %38 = call i32 @mutex_unlock(i32* @output_lock)
  store i32 0, i32* %2, align 4
  br label %42

39:                                               ; preds = %22, %10
  %40 = call i32 @mutex_unlock(i32* @output_lock)
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %39, %31
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DSSERR(i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
