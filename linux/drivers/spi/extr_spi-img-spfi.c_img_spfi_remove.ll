; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-img-spfi.c_img_spfi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-img-spfi.c_img_spfi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.spi_master = type { i32 }
%struct.img_spfi = type { i32, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @img_spfi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_spfi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca %struct.img_spfi*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.spi_master* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.spi_master* %6, %struct.spi_master** %3, align 8
  %7 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %8 = call %struct.img_spfi* @spi_master_get_devdata(%struct.spi_master* %7)
  store %struct.img_spfi* %8, %struct.img_spfi** %4, align 8
  %9 = load %struct.img_spfi*, %struct.img_spfi** %4, align 8
  %10 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.img_spfi*, %struct.img_spfi** %4, align 8
  %15 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @dma_release_channel(i64 %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.img_spfi*, %struct.img_spfi** %4, align 8
  %20 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.img_spfi*, %struct.img_spfi** %4, align 8
  %25 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @dma_release_channel(i64 %26)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.img_spfi*, %struct.img_spfi** %4, align 8
  %30 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @pm_runtime_disable(i32 %31)
  %33 = load %struct.img_spfi*, %struct.img_spfi** %4, align 8
  %34 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @pm_runtime_status_suspended(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %28
  %39 = load %struct.img_spfi*, %struct.img_spfi** %4, align 8
  %40 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @clk_disable_unprepare(i32 %41)
  %43 = load %struct.img_spfi*, %struct.img_spfi** %4, align 8
  %44 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @clk_disable_unprepare(i32 %45)
  br label %47

47:                                               ; preds = %38, %28
  ret i32 0
}

declare dso_local %struct.spi_master* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.img_spfi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @dma_release_channel(i64) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

declare dso_local i32 @pm_runtime_status_suspended(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
