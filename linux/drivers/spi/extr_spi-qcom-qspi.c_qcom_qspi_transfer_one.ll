; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qcom-qspi.c_qcom_qspi_transfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qcom-qspi.c_qcom_qspi_transfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.spi_device = type { i64 }
%struct.spi_transfer = type { i64, i32, i32, i32, i32, i64, i32 }
%struct.qcom_qspi = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@QSPI_CLK_CORE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Failed to set core clk %d\0A\00", align 1
@QSPI_READ = common dso_local global i32 0, align 4
@QSPI_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @qcom_qspi_transfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_qspi_transfer_one(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.qcom_qspi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.spi_master* %0, %struct.spi_master** %5, align 8
  store %struct.spi_device* %1, %struct.spi_device** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %12 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %13 = call %struct.qcom_qspi* @spi_master_get_devdata(%struct.spi_master* %12)
  store %struct.qcom_qspi* %13, %struct.qcom_qspi** %8, align 8
  %14 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  %17 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %10, align 8
  br label %25

25:                                               ; preds = %21, %3
  %26 = load %struct.qcom_qspi*, %struct.qcom_qspi** %8, align 8
  %27 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i64, i64* @QSPI_CLK_CORE, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %10, align 8
  %34 = mul i64 %33, 4
  %35 = call i32 @clk_set_rate(i32 %32, i64 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %25
  %39 = load %struct.qcom_qspi*, %struct.qcom_qspi** %8, align 8
  %40 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %111

45:                                               ; preds = %25
  %46 = load %struct.qcom_qspi*, %struct.qcom_qspi** %8, align 8
  %47 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %46, i32 0, i32 0
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %51 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %45
  %55 = load i32, i32* @QSPI_READ, align 4
  %56 = load %struct.qcom_qspi*, %struct.qcom_qspi** %8, align 8
  %57 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 4
  store i32 %55, i32* %58, align 8
  %59 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %60 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.qcom_qspi*, %struct.qcom_qspi** %8, align 8
  %63 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 3
  store i32 %61, i32* %64, align 4
  %65 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %66 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.qcom_qspi*, %struct.qcom_qspi** %8, align 8
  %69 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 5
  store i64 %67, i64* %70, align 8
  br label %88

71:                                               ; preds = %45
  %72 = load i32, i32* @QSPI_WRITE, align 4
  %73 = load %struct.qcom_qspi*, %struct.qcom_qspi** %8, align 8
  %74 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 4
  store i32 %72, i32* %75, align 8
  %76 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %77 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.qcom_qspi*, %struct.qcom_qspi** %8, align 8
  %80 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 3
  store i32 %78, i32* %81, align 4
  %82 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %83 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.qcom_qspi*, %struct.qcom_qspi** %8, align 8
  %86 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  store i32 %84, i32* %87, align 8
  br label %88

88:                                               ; preds = %71, %54
  %89 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %90 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %89, i32 0, i32 2
  %91 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %92 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = call i32 @list_is_last(i32* %90, i32* %94)
  %96 = load %struct.qcom_qspi*, %struct.qcom_qspi** %8, align 8
  %97 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  store i32 %95, i32* %98, align 4
  %99 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %100 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.qcom_qspi*, %struct.qcom_qspi** %8, align 8
  %103 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 8
  %105 = load %struct.qcom_qspi*, %struct.qcom_qspi** %8, align 8
  %106 = call i32 @qcom_qspi_pio_xfer(%struct.qcom_qspi* %105)
  %107 = load %struct.qcom_qspi*, %struct.qcom_qspi** %8, align 8
  %108 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %107, i32 0, i32 0
  %109 = load i64, i64* %11, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32* %108, i64 %109)
  store i32 1, i32* %4, align 4
  br label %111

111:                                              ; preds = %88, %38
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local %struct.qcom_qspi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_is_last(i32*, i32*) #1

declare dso_local i32 @qcom_qspi_pio_xfer(%struct.qcom_qspi*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
