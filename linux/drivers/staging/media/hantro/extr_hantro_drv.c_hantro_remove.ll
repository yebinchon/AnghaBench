; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_drv.c_hantro_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_drv.c_hantro_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hantro_dev = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"Removing %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hantro_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hantro_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.hantro_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.hantro_dev* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.hantro_dev* %5, %struct.hantro_dev** %3, align 8
  %6 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %6, i32 0, i32 3
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @v4l2_info(i32* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %12, i32 0, i32 5
  %14 = call i32 @media_device_unregister(i32* %13)
  %15 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %16 = call i32 @hantro_remove_dec_func(%struct.hantro_dev* %15)
  %17 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %18 = call i32 @hantro_remove_enc_func(%struct.hantro_dev* %17)
  %19 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %20 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %19, i32 0, i32 5
  %21 = call i32 @media_device_cleanup(i32* %20)
  %22 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %23 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @v4l2_m2m_release(i32 %24)
  %26 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %27 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %26, i32 0, i32 3
  %28 = call i32 @v4l2_device_unregister(i32* %27)
  %29 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %30 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %35 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @clk_bulk_unprepare(i32 %33, i32 %36)
  %38 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %39 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pm_runtime_dont_use_autosuspend(i32 %40)
  %42 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %43 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @pm_runtime_disable(i32 %44)
  ret i32 0
}

declare dso_local %struct.hantro_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @v4l2_info(i32*, i8*, i32) #1

declare dso_local i32 @media_device_unregister(i32*) #1

declare dso_local i32 @hantro_remove_dec_func(%struct.hantro_dev*) #1

declare dso_local i32 @hantro_remove_enc_func(%struct.hantro_dev*) #1

declare dso_local i32 @media_device_cleanup(i32*) #1

declare dso_local i32 @v4l2_m2m_release(i32) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @clk_bulk_unprepare(i32, i32) #1

declare dso_local i32 @pm_runtime_dont_use_autosuspend(i32) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
