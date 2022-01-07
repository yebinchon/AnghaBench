; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_exec_mem_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_exec_mem_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_mem = type { %struct.spi_device* }
%struct.spi_device = type { i32 }
%struct.spi_mem_op = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.bcm_qspi = type { i32 }

@SPI_MEM_DATA_IN = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@ADDR_4MB_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_mem*, %struct.spi_mem_op*)* @bcm_qspi_exec_mem_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_qspi_exec_mem_op(%struct.spi_mem* %0, %struct.spi_mem_op* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_mem*, align 8
  %5 = alloca %struct.spi_mem_op*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.bcm_qspi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.spi_mem* %0, %struct.spi_mem** %4, align 8
  store %struct.spi_mem_op* %1, %struct.spi_mem_op** %5, align 8
  %13 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %14 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %13, i32 0, i32 0
  %15 = load %struct.spi_device*, %struct.spi_device** %14, align 8
  store %struct.spi_device* %15, %struct.spi_device** %6, align 8
  %16 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.bcm_qspi* @spi_master_get_devdata(i32 %18)
  store %struct.bcm_qspi* %19, %struct.bcm_qspi** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %20 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %21 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %2
  %26 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %27 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %33 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %35, 4
  br i1 %36, label %44, label %37

37:                                               ; preds = %31
  %38 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %39 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SPI_MEM_DATA_IN, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %37, %31, %25, %2
  %45 = load i32, i32* @ENOTSUPP, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %116

47:                                               ; preds = %37
  %48 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %49 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %12, align 8
  %53 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %54 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %10, align 4
  %57 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %58 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %11, align 4
  %61 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %62 = call i32 @bcm_qspi_bspi_ver_three(%struct.bcm_qspi* %61)
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %83

64:                                               ; preds = %47
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 12582912
  %67 = and i32 %66, 16777215
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* @ADDR_4MB_MASK, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %10, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @ADDR_4MB_MASK, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %74, %75
  %77 = sub nsw i32 %76, 1
  %78 = and i32 %73, %77
  %79 = xor i32 %71, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %64
  store i32 1, i32* %9, align 4
  br label %82

82:                                               ; preds = %81, %64
  br label %83

83:                                               ; preds = %82, %47
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = call i32 @IS_ALIGNED(i64 %85, i32 4)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = load i32*, i32** %12, align 8
  %90 = ptrtoint i32* %89 to i64
  %91 = call i32 @IS_ALIGNED(i64 %90, i32 4)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32, i32* %11, align 4
  %95 = icmp slt i32 %94, 4
  br i1 %95, label %96, label %97

96:                                               ; preds = %93, %88, %83
  store i32 1, i32* %9, align 4
  br label %97

97:                                               ; preds = %96, %93
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %102 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %103 = call i32 @bcm_qspi_mspi_exec_mem_op(%struct.spi_device* %101, %struct.spi_mem_op* %102)
  store i32 %103, i32* %3, align 4
  br label %116

104:                                              ; preds = %97
  %105 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %106 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %107 = call i32 @bcm_qspi_bspi_set_mode(%struct.bcm_qspi* %105, %struct.spi_mem_op* %106, i32 0)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %104
  %111 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %112 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %113 = call i32 @bcm_qspi_bspi_exec_mem_op(%struct.spi_device* %111, %struct.spi_mem_op* %112)
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %110, %104
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %114, %100, %44
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.bcm_qspi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @bcm_qspi_bspi_ver_three(%struct.bcm_qspi*) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local i32 @bcm_qspi_mspi_exec_mem_op(%struct.spi_device*, %struct.spi_mem_op*) #1

declare dso_local i32 @bcm_qspi_bspi_set_mode(%struct.bcm_qspi*, %struct.spi_mem_op*, i32) #1

declare dso_local i32 @bcm_qspi_bspi_exec_mem_op(%struct.spi_device*, %struct.spi_mem_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
