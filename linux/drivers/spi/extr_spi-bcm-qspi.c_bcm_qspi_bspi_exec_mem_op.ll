; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_bspi_exec_mem_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_bspi_exec_mem_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.spi_mem_op = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.bcm_qspi = type { i32, %struct.TYPE_8__*, i32, %struct.bcm_qspi_soc_intc*, i64, %struct.spi_mem_op*, i64, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.bcm_qspi_soc_intc = type { i32 (%struct.bcm_qspi_soc_intc*, i32, i32)*, i32 (%struct.bcm_qspi_soc_intc*, i32)* }
%struct.TYPE_6__ = type { i32 }

@BSPI_ADDRLEN_4BYTES = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@MSPI = common dso_local global i32 0, align 4
@MSPI_WRITE_LOCK = common dso_local global i32 0, align 4
@BSPI = common dso_local global i32 0, align 4
@BSPI_BSPI_FLASH_UPPER_ADDR_BYTE = common dso_local global i32 0, align 4
@BSPI_READ_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"bspi xfr addr 0x%x len 0x%x\00", align 1
@BSPI_RAF_START_ADDR = common dso_local global i32 0, align 4
@BSPI_RAF_NUM_WORDS = common dso_local global i32 0, align 4
@BSPI_RAF_WATERMARK = common dso_local global i32 0, align 4
@MSPI_BSPI_DONE = common dso_local global i32 0, align 4
@BSPI_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"timeout waiting for BSPI\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_mem_op*)* @bcm_qspi_bspi_exec_mem_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_qspi_bspi_exec_mem_op(%struct.spi_device* %0, %struct.spi_mem_op* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.spi_mem_op*, align 8
  %6 = alloca %struct.bcm_qspi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.bcm_qspi_soc_intc*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.spi_mem_op* %1, %struct.spi_mem_op** %5, align 8
  %15 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.bcm_qspi* @spi_master_get_devdata(i32 %17)
  store %struct.bcm_qspi* %18, %struct.bcm_qspi** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %19 = call i64 @msecs_to_jiffies(i32 100)
  store i64 %19, i64* %13, align 8
  %20 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %21 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %20, i32 0, i32 3
  %22 = load %struct.bcm_qspi_soc_intc*, %struct.bcm_qspi_soc_intc** %21, align 8
  store %struct.bcm_qspi_soc_intc* %22, %struct.bcm_qspi_soc_intc** %14, align 8
  %23 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %24 = call i32 @bcm_qspi_bspi_ver_three(%struct.bcm_qspi* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %2
  %27 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %28 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BSPI_ADDRLEN_4BYTES, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %180

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %2
  %38 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %39 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %11, align 4
  %42 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %43 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %44 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @bcm_qspi_chip_select(%struct.bcm_qspi* %42, i32 %45)
  %47 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %48 = load i32, i32* @MSPI, align 4
  %49 = load i32, i32* @MSPI_WRITE_LOCK, align 4
  %50 = call i32 @bcm_qspi_write(%struct.bcm_qspi* %47, i32 %48, i32 %49, i32 0)
  %51 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %52 = call i32 @bcm_qspi_bspi_ver_three(%struct.bcm_qspi* %51)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %37
  %55 = load i32, i32* %11, align 4
  %56 = and i32 %55, -16777216
  store i32 %56, i32* %7, align 4
  %57 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %58 = load i32, i32* @BSPI, align 4
  %59 = load i32, i32* @BSPI_BSPI_FLASH_UPPER_ADDR_BYTE, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @bcm_qspi_write(%struct.bcm_qspi* %57, i32 %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %54, %37
  %63 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %64 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %63, i32 0, i32 7
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %7, align 4
  br label %73

70:                                               ; preds = %62
  %71 = load i32, i32* %11, align 4
  %72 = and i32 %71, 16777215
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %70, %68
  %74 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %75 = call i32 @bcm_qspi_bspi_ver_three(%struct.bcm_qspi* %74)
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 12582912
  %80 = and i32 %79, 16777215
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %77, %73
  %82 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %83 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %8, align 4
  %86 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %87 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %86, i32 0, i32 6
  store i64 0, i64* %87, align 8
  br label %88

88:                                               ; preds = %175, %81
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @BSPI_READ_LENGTH, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, i32* @BSPI_READ_LENGTH, align 4
  store i32 %93, i32* %9, align 4
  br label %96

94:                                               ; preds = %88
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %98 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %97, i32 0, i32 2
  %99 = call i32 @reinit_completion(i32* %98)
  %100 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %101 = call i32 @bcm_qspi_enable_bspi(%struct.bcm_qspi* %100)
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 3
  %104 = ashr i32 %103, 2
  store i32 %104, i32* %10, align 4
  %105 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %106 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %107 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %106, i32 0, i32 5
  store %struct.spi_mem_op* %105, %struct.spi_mem_op** %107, align 8
  %108 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %109 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %108, i32 0, i32 4
  store i64 0, i64* %109, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %112 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %114 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %113, i32 0, i32 1
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @dev_dbg(i32* %116, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %117, i32 %118)
  %120 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %121 = load i32, i32* @BSPI, align 4
  %122 = load i32, i32* @BSPI_RAF_START_ADDR, align 4
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @bcm_qspi_write(%struct.bcm_qspi* %120, i32 %121, i32 %122, i32 %123)
  %125 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %126 = load i32, i32* @BSPI, align 4
  %127 = load i32, i32* @BSPI_RAF_NUM_WORDS, align 4
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @bcm_qspi_write(%struct.bcm_qspi* %125, i32 %126, i32 %127, i32 %128)
  %130 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %131 = load i32, i32* @BSPI, align 4
  %132 = load i32, i32* @BSPI_RAF_WATERMARK, align 4
  %133 = call i32 @bcm_qspi_write(%struct.bcm_qspi* %130, i32 %131, i32 %132, i32 0)
  %134 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %135 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %134, i32 0, i32 3
  %136 = load %struct.bcm_qspi_soc_intc*, %struct.bcm_qspi_soc_intc** %135, align 8
  %137 = icmp ne %struct.bcm_qspi_soc_intc* %136, null
  br i1 %137, label %138, label %151

138:                                              ; preds = %96
  %139 = load %struct.bcm_qspi_soc_intc*, %struct.bcm_qspi_soc_intc** %14, align 8
  %140 = getelementptr inbounds %struct.bcm_qspi_soc_intc, %struct.bcm_qspi_soc_intc* %139, i32 0, i32 1
  %141 = load i32 (%struct.bcm_qspi_soc_intc*, i32)*, i32 (%struct.bcm_qspi_soc_intc*, i32)** %140, align 8
  %142 = load %struct.bcm_qspi_soc_intc*, %struct.bcm_qspi_soc_intc** %14, align 8
  %143 = load i32, i32* @MSPI_BSPI_DONE, align 4
  %144 = call i32 %141(%struct.bcm_qspi_soc_intc* %142, i32 %143)
  %145 = load %struct.bcm_qspi_soc_intc*, %struct.bcm_qspi_soc_intc** %14, align 8
  %146 = getelementptr inbounds %struct.bcm_qspi_soc_intc, %struct.bcm_qspi_soc_intc* %145, i32 0, i32 0
  %147 = load i32 (%struct.bcm_qspi_soc_intc*, i32, i32)*, i32 (%struct.bcm_qspi_soc_intc*, i32, i32)** %146, align 8
  %148 = load %struct.bcm_qspi_soc_intc*, %struct.bcm_qspi_soc_intc** %14, align 8
  %149 = load i32, i32* @BSPI_DONE, align 4
  %150 = call i32 %147(%struct.bcm_qspi_soc_intc* %148, i32 %149, i32 1)
  br label %151

151:                                              ; preds = %138, %96
  %152 = call i32 (...) @mb()
  %153 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %154 = call i32 @bcm_qspi_bspi_lr_start(%struct.bcm_qspi* %153)
  %155 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %156 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %155, i32 0, i32 2
  %157 = load i64, i64* %13, align 8
  %158 = call i32 @wait_for_completion_timeout(i32* %156, i64 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %168, label %160

160:                                              ; preds = %151
  %161 = load %struct.bcm_qspi*, %struct.bcm_qspi** %6, align 8
  %162 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %161, i32 0, i32 1
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = call i32 @dev_err(i32* %164, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %166 = load i32, i32* @ETIMEDOUT, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %12, align 4
  br label %178

168:                                              ; preds = %151
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* %7, align 4
  %171 = add nsw i32 %170, %169
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* %8, align 4
  %174 = sub nsw i32 %173, %172
  store i32 %174, i32* %8, align 4
  br label %175

175:                                              ; preds = %168
  %176 = load i32, i32* %8, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %88, label %178

178:                                              ; preds = %175, %160
  %179 = load i32, i32* %12, align 4
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %178, %33
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local %struct.bcm_qspi* @spi_master_get_devdata(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @bcm_qspi_bspi_ver_three(%struct.bcm_qspi*) #1

declare dso_local i32 @bcm_qspi_chip_select(%struct.bcm_qspi*, i32) #1

declare dso_local i32 @bcm_qspi_write(%struct.bcm_qspi*, i32, i32, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @bcm_qspi_enable_bspi(%struct.bcm_qspi*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @bcm_qspi_bspi_lr_start(%struct.bcm_qspi*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
