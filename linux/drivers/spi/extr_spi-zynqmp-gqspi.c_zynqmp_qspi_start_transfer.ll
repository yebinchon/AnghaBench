; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynqmp-gqspi.c_zynqmp_qspi_start_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynqmp-gqspi.c_zynqmp_qspi_start_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32, i32*, i32* }
%struct.zynqmp_qspi = type { i32, i32, i64, i32, i32, i32*, i32* }

@GQSPI_MODE_DMA = common dso_local global i64 0, align 8
@GQSPI_GENFIFO_IMM_DATA_MASK = common dso_local global i32 0, align 4
@GQSPI_GEN_FIFO_OFST = common dso_local global i32 0, align 4
@GQSPI_GENFIFO_EXP = common dso_local global i32 0, align 4
@GQSPI_GENFIFO_EXP_START = common dso_local global i32 0, align 4
@GQSPI_MODE_IO = common dso_local global i64 0, align 8
@GQSPI_CONFIG_OFST = common dso_local global i32 0, align 4
@GQSPI_CFG_START_GEN_FIFO_MASK = common dso_local global i32 0, align 4
@GQSPI_IER_OFST = common dso_local global i32 0, align 4
@GQSPI_IER_TXEMPTY_MASK = common dso_local global i32 0, align 4
@GQSPI_IER_GENFIFOEMPTY_MASK = common dso_local global i32 0, align 4
@GQSPI_IER_TXNOT_FULL_MASK = common dso_local global i32 0, align 4
@GQSPI_QSPIDMA_DST_I_EN_OFST = common dso_local global i32 0, align 4
@GQSPI_QSPIDMA_DST_I_EN_DONE_MASK = common dso_local global i32 0, align 4
@GQSPI_IER_RXNEMPTY_MASK = common dso_local global i32 0, align 4
@GQSPI_IER_RXEMPTY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @zynqmp_qspi_start_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynqmp_qspi_start_transfer(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca %struct.zynqmp_qspi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %4, align 8
  store %struct.spi_device* %1, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %13 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %14 = call %struct.zynqmp_qspi* @spi_master_get_devdata(%struct.spi_master* %13)
  store %struct.zynqmp_qspi* %14, %struct.zynqmp_qspi** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %7, align 8
  %19 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %18, i32 0, i32 6
  store i32* %17, i32** %19, align 8
  %20 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %7, align 8
  %24 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %23, i32 0, i32 5
  store i32* %22, i32** %24, align 8
  %25 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %26 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %27 = call i32 @zynqmp_qspi_setup_transfer(%struct.spi_device* %25, %struct.spi_transfer* %26)
  %28 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %7, align 8
  %29 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  %33 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %7, align 8
  %34 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %7, align 8
  %39 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %40 = call i32 @zynqmp_qspi_txrxsetup(%struct.zynqmp_qspi* %38, %struct.spi_transfer* %39, i32* %8)
  %41 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %7, align 8
  %42 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @GQSPI_MODE_DMA, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %3
  %47 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %7, align 8
  %48 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %9, align 4
  br label %54

50:                                               ; preds = %3
  %51 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %52 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %7, align 8
  %57 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @GQSPI_GENFIFO_IMM_DATA_MASK, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %54
  %62 = load i32, i32* @GQSPI_GENFIFO_IMM_DATA_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  %69 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %7, align 8
  %70 = load i32, i32* @GQSPI_GEN_FIFO_OFST, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %69, i32 %70, i32 %71)
  br label %135

73:                                               ; preds = %54
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %10, align 4
  store i32 8, i32* %11, align 4
  %75 = load i32, i32* %10, align 4
  %76 = and i32 %75, 255
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %10, align 4
  %78 = and i32 %77, 255
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %10, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %114

84:                                               ; preds = %73
  %85 = load i32, i32* @GQSPI_GENFIFO_EXP, align 4
  %86 = load i32, i32* %8, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %108, %84
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %113

91:                                               ; preds = %88
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @GQSPI_GENFIFO_EXP_START, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %91
  %97 = load i32, i32* @GQSPI_GENFIFO_IMM_DATA_MASK, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %8, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %8, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %8, align 4
  %104 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %7, align 8
  %105 = load i32, i32* @GQSPI_GEN_FIFO_OFST, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %96, %91
  %109 = load i32, i32* %10, align 4
  %110 = ashr i32 %109, 1
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  br label %88

113:                                              ; preds = %88
  br label %114

114:                                              ; preds = %113, %73
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %134

117:                                              ; preds = %114
  %118 = load i32, i32* @GQSPI_GENFIFO_EXP, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %8, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* @GQSPI_GENFIFO_IMM_DATA_MASK, align 4
  %123 = xor i32 %122, -1
  %124 = load i32, i32* %8, align 4
  %125 = and i32 %124, %123
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %12, align 4
  %127 = and i32 %126, 255
  %128 = load i32, i32* %8, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %8, align 4
  %130 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %7, align 8
  %131 = load i32, i32* @GQSPI_GEN_FIFO_OFST, align 4
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %130, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %117, %114
  br label %135

135:                                              ; preds = %134, %61
  %136 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %7, align 8
  %137 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @GQSPI_MODE_IO, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %150

141:                                              ; preds = %135
  %142 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %7, align 8
  %143 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %142, i32 0, i32 5
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %7, align 8
  %148 = load i32, i32* @GQSPI_GEN_FIFO_OFST, align 4
  %149 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %147, i32 %148, i32 0)
  br label %150

150:                                              ; preds = %146, %141, %135
  %151 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %7, align 8
  %152 = load i32, i32* @GQSPI_CONFIG_OFST, align 4
  %153 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %7, align 8
  %154 = load i32, i32* @GQSPI_CONFIG_OFST, align 4
  %155 = call i32 @zynqmp_gqspi_read(%struct.zynqmp_qspi* %153, i32 %154)
  %156 = load i32, i32* @GQSPI_CFG_START_GEN_FIFO_MASK, align 4
  %157 = or i32 %155, %156
  %158 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %151, i32 %152, i32 %157)
  %159 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %7, align 8
  %160 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %159, i32 0, i32 6
  %161 = load i32*, i32** %160, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %172

163:                                              ; preds = %150
  %164 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %7, align 8
  %165 = load i32, i32* @GQSPI_IER_OFST, align 4
  %166 = load i32, i32* @GQSPI_IER_TXEMPTY_MASK, align 4
  %167 = load i32, i32* @GQSPI_IER_GENFIFOEMPTY_MASK, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @GQSPI_IER_TXNOT_FULL_MASK, align 4
  %170 = or i32 %168, %169
  %171 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %164, i32 %165, i32 %170)
  br label %172

172:                                              ; preds = %163, %150
  %173 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %7, align 8
  %174 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %173, i32 0, i32 5
  %175 = load i32*, i32** %174, align 8
  %176 = icmp ne i32* %175, null
  br i1 %176, label %177, label %198

177:                                              ; preds = %172
  %178 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %7, align 8
  %179 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @GQSPI_MODE_DMA, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %177
  %184 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %7, align 8
  %185 = load i32, i32* @GQSPI_QSPIDMA_DST_I_EN_OFST, align 4
  %186 = load i32, i32* @GQSPI_QSPIDMA_DST_I_EN_DONE_MASK, align 4
  %187 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %184, i32 %185, i32 %186)
  br label %197

188:                                              ; preds = %177
  %189 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %7, align 8
  %190 = load i32, i32* @GQSPI_IER_OFST, align 4
  %191 = load i32, i32* @GQSPI_IER_GENFIFOEMPTY_MASK, align 4
  %192 = load i32, i32* @GQSPI_IER_RXNEMPTY_MASK, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @GQSPI_IER_RXEMPTY_MASK, align 4
  %195 = or i32 %193, %194
  %196 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %189, i32 %190, i32 %195)
  br label %197

197:                                              ; preds = %188, %183
  br label %198

198:                                              ; preds = %197, %172
  %199 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %200 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  ret i32 %201
}

declare dso_local %struct.zynqmp_qspi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @zynqmp_qspi_setup_transfer(%struct.spi_device*, %struct.spi_transfer*) #1

declare dso_local i32 @zynqmp_qspi_txrxsetup(%struct.zynqmp_qspi*, %struct.spi_transfer*, i32*) #1

declare dso_local i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi*, i32, i32) #1

declare dso_local i32 @zynqmp_gqspi_read(%struct.zynqmp_qspi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
