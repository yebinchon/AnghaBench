; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32_spi_transfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32_spi_transfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i64 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* }
%struct.spi_device = type opaque
%struct.spi_device.0 = type { i32 }
%struct.spi_transfer = type { i32, i64, i64 }
%struct.stm32_spi = type { i32, %struct.TYPE_2__*, i32, i64, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 (%struct.stm32_spi*)* }

@.str = private unnamed_addr constant [27 x i8] c"SPI transfer setup failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device.0*, %struct.spi_transfer*)* @stm32_spi_transfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_spi_transfer_one(%struct.spi_master* %0, %struct.spi_device.0* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.spi_device.0*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.stm32_spi*, align 8
  %9 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %5, align 8
  store %struct.spi_device.0* %1, %struct.spi_device.0** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %10 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %11 = call %struct.stm32_spi* @spi_master_get_devdata(%struct.spi_master* %10)
  store %struct.stm32_spi* %11, %struct.stm32_spi** %8, align 8
  %12 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.stm32_spi*, %struct.stm32_spi** %8, align 8
  %16 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %15, i32 0, i32 5
  store i64 %14, i64* %16, align 8
  %17 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.stm32_spi*, %struct.stm32_spi** %8, align 8
  %21 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %20, i32 0, i32 3
  store i64 %19, i64* %21, align 8
  %22 = load %struct.stm32_spi*, %struct.stm32_spi** %8, align 8
  %23 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %28 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  br label %31

30:                                               ; preds = %3
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i32 [ %29, %26 ], [ 0, %30 ]
  %33 = load %struct.stm32_spi*, %struct.stm32_spi** %8, align 8
  %34 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 8
  %35 = load %struct.stm32_spi*, %struct.stm32_spi** %8, align 8
  %36 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %41 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  br label %44

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %39
  %45 = phi i32 [ %42, %39 ], [ 0, %43 ]
  %46 = load %struct.stm32_spi*, %struct.stm32_spi** %8, align 8
  %47 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %49 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %48, i32 0, i32 0
  %50 = load i64 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)*, i64 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)** %49, align 8
  %51 = icmp ne i64 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %44
  %53 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %54 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %53, i32 0, i32 0
  %55 = load i64 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)*, i64 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)** %54, align 8
  %56 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %57 = load %struct.spi_device.0*, %struct.spi_device.0** %6, align 8
  %58 = bitcast %struct.spi_device.0* %57 to %struct.spi_device*
  %59 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %60 = call i64 %55(%struct.spi_master* %56, %struct.spi_device* %58, %struct.spi_transfer* %59)
  %61 = icmp ne i64 %60, 0
  br label %62

62:                                               ; preds = %52, %44
  %63 = phi i1 [ false, %44 ], [ %61, %52 ]
  %64 = zext i1 %63 to i32
  %65 = load %struct.stm32_spi*, %struct.stm32_spi** %8, align 8
  %66 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.stm32_spi*, %struct.stm32_spi** %8, align 8
  %68 = load %struct.spi_device.0*, %struct.spi_device.0** %6, align 8
  %69 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %70 = call i32 @stm32_spi_transfer_one_setup(%struct.stm32_spi* %67, %struct.spi_device.0* %68, %struct.spi_transfer* %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %62
  %74 = load %struct.stm32_spi*, %struct.stm32_spi** %8, align 8
  %75 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @dev_err(i32 %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %4, align 4
  br label %96

79:                                               ; preds = %62
  %80 = load %struct.stm32_spi*, %struct.stm32_spi** %8, align 8
  %81 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load %struct.stm32_spi*, %struct.stm32_spi** %8, align 8
  %86 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %87 = call i32 @stm32_spi_transfer_one_dma(%struct.stm32_spi* %85, %struct.spi_transfer* %86)
  store i32 %87, i32* %4, align 4
  br label %96

88:                                               ; preds = %79
  %89 = load %struct.stm32_spi*, %struct.stm32_spi** %8, align 8
  %90 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32 (%struct.stm32_spi*)*, i32 (%struct.stm32_spi*)** %92, align 8
  %94 = load %struct.stm32_spi*, %struct.stm32_spi** %8, align 8
  %95 = call i32 %93(%struct.stm32_spi* %94)
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %88, %84, %73
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.stm32_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @stm32_spi_transfer_one_setup(%struct.stm32_spi*, %struct.spi_device.0*, %struct.spi_transfer*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @stm32_spi_transfer_one_dma(%struct.stm32_spi*, %struct.spi_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
