; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_output.c_omapdss_output_set_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_output.c_omapdss_output_set_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i64, i64, %struct.omap_dss_device*, %struct.omap_dss_device*, i32 }

@output_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"output already has device %s connected to it\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"output type and display type don't match\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omapdss_output_set_device(%struct.omap_dss_device* %0, %struct.omap_dss_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca %struct.omap_dss_device*, align 8
  %6 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %4, align 8
  store %struct.omap_dss_device* %1, %struct.omap_dss_device** %5, align 8
  %7 = call i32 @mutex_lock(i32* @output_lock)
  %8 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %9 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %8, i32 0, i32 3
  %10 = load %struct.omap_dss_device*, %struct.omap_dss_device** %9, align 8
  %11 = icmp ne %struct.omap_dss_device* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %14 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %13, i32 0, i32 3
  %15 = load %struct.omap_dss_device*, %struct.omap_dss_device** %14, align 8
  %16 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %41

21:                                               ; preds = %2
  %22 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %23 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %26 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %41

33:                                               ; preds = %21
  %34 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %35 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %36 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %35, i32 0, i32 3
  store %struct.omap_dss_device* %34, %struct.omap_dss_device** %36, align 8
  %37 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %38 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %39 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %38, i32 0, i32 2
  store %struct.omap_dss_device* %37, %struct.omap_dss_device** %39, align 8
  %40 = call i32 @mutex_unlock(i32* @output_lock)
  store i32 0, i32* %3, align 4
  br label %44

41:                                               ; preds = %29, %12
  %42 = call i32 @mutex_unlock(i32* @output_lock)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %33
  %45 = load i32, i32* %3, align 4
  ret i32 %45
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
