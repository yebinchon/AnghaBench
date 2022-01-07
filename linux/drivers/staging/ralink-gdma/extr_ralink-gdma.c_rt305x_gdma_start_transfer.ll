; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ralink-gdma/extr_ralink-gdma.c_rt305x_gdma_start_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ralink-gdma/extr_ralink-gdma.c_rt305x_gdma_start_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdma_dmaengine_chan = type { i32, i64, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.gdma_dma_sg* }
%struct.gdma_dma_sg = type { i32, i32, i32 }
%struct.gdma_dma_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@GDMA_REG_CTRL0_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"chan %d is start(%08x).\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@GDMA_REG_CTRL0_DST_ADDR_FIXED = common dso_local global i32 0, align 4
@GDMA_RT305X_CTRL0_SRC_REQ_SHIFT = common dso_local global i32 0, align 4
@GDMA_RT305X_CTRL0_DST_REQ_SHIFT = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@GDMA_REG_CTRL0_SRC_ADDR_FIXED = common dso_local global i32 0, align 4
@DMA_MEM_TO_MEM = common dso_local global i32 0, align 4
@GDMA_REG_CTRL0_SW_MODE = common dso_local global i32 0, align 4
@GDMA_REG_CTRL1_SRC_REQ_SHIFT = common dso_local global i32 0, align 4
@GDMA_REG_CTRL1_DST_REQ_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"direction type %d error\0A\00", align 1
@GDMA_REG_CTRL0_TX_SHIFT = common dso_local global i32 0, align 4
@GDMA_REG_CTRL0_BURST_SHIFT = common dso_local global i32 0, align 4
@GDMA_REG_CTRL0_DONE_INT = common dso_local global i32 0, align 4
@GDMA_REG_CTRL1_NEXT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdma_dmaengine_chan*)* @rt305x_gdma_start_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt305x_gdma_start_transfer(%struct.gdma_dmaengine_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gdma_dmaengine_chan*, align 8
  %4 = alloca %struct.gdma_dma_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gdma_dma_sg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gdma_dmaengine_chan* %0, %struct.gdma_dmaengine_chan** %3, align 8
  %10 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %11 = call %struct.gdma_dma_dev* @gdma_dma_chan_get_dev(%struct.gdma_dmaengine_chan* %10)
  store %struct.gdma_dma_dev* %11, %struct.gdma_dma_dev** %4, align 8
  %12 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %4, align 8
  %13 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %14 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @GDMA_REG_CTRL0(i32 %15)
  %17 = call i32 @gdma_dma_read(%struct.gdma_dma_dev* %12, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @GDMA_REG_CTRL0_ENABLE, align 4
  %20 = and i32 %18, %19
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %1
  %24 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %4, align 8
  %25 = getelementptr inbounds %struct.gdma_dma_dev, %struct.gdma_dma_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %29 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %4, align 8
  %34 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %35 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @rt305x_dump_reg(%struct.gdma_dma_dev* %33, i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %192

40:                                               ; preds = %1
  %41 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %42 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %41, i32 0, i32 5
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load %struct.gdma_dma_sg*, %struct.gdma_dma_sg** %44, align 8
  %46 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %47 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.gdma_dma_sg, %struct.gdma_dma_sg* %45, i64 %48
  store %struct.gdma_dma_sg* %49, %struct.gdma_dma_sg** %7, align 8
  %50 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %51 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %50, i32 0, i32 5
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %40
  %58 = load %struct.gdma_dma_sg*, %struct.gdma_dma_sg** %7, align 8
  %59 = getelementptr inbounds %struct.gdma_dma_sg, %struct.gdma_dma_sg* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %5, align 4
  %61 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %62 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* @GDMA_REG_CTRL0_DST_ADDR_FIXED, align 4
  %65 = load i32, i32* @GDMA_RT305X_CTRL0_SRC_REQ_SHIFT, align 4
  %66 = shl i32 8, %65
  %67 = or i32 %64, %66
  %68 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %69 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @GDMA_RT305X_CTRL0_DST_REQ_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = or i32 %67, %72
  store i32 %73, i32* %8, align 4
  br label %136

74:                                               ; preds = %40
  %75 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %76 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %75, i32 0, i32 5
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %99

82:                                               ; preds = %74
  %83 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %84 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %5, align 4
  %86 = load %struct.gdma_dma_sg*, %struct.gdma_dma_sg** %7, align 8
  %87 = getelementptr inbounds %struct.gdma_dma_sg, %struct.gdma_dma_sg* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* @GDMA_REG_CTRL0_SRC_ADDR_FIXED, align 4
  %90 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %91 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @GDMA_RT305X_CTRL0_SRC_REQ_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = or i32 %89, %94
  %96 = load i32, i32* @GDMA_RT305X_CTRL0_DST_REQ_SHIFT, align 4
  %97 = shl i32 8, %96
  %98 = or i32 %95, %97
  store i32 %98, i32* %8, align 4
  br label %135

99:                                               ; preds = %74
  %100 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %101 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %100, i32 0, i32 5
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @DMA_MEM_TO_MEM, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %121

107:                                              ; preds = %99
  %108 = load %struct.gdma_dma_sg*, %struct.gdma_dma_sg** %7, align 8
  %109 = getelementptr inbounds %struct.gdma_dma_sg, %struct.gdma_dma_sg* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %5, align 4
  %111 = load %struct.gdma_dma_sg*, %struct.gdma_dma_sg** %7, align 8
  %112 = getelementptr inbounds %struct.gdma_dma_sg, %struct.gdma_dma_sg* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* @GDMA_REG_CTRL0_SW_MODE, align 4
  %115 = load i32, i32* @GDMA_REG_CTRL1_SRC_REQ_SHIFT, align 4
  %116 = shl i32 8, %115
  %117 = or i32 %114, %116
  %118 = load i32, i32* @GDMA_REG_CTRL1_DST_REQ_SHIFT, align 4
  %119 = shl i32 8, %118
  %120 = or i32 %117, %119
  store i32 %120, i32* %8, align 4
  br label %134

121:                                              ; preds = %99
  %122 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %4, align 8
  %123 = getelementptr inbounds %struct.gdma_dma_dev, %struct.gdma_dma_dev* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %127 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %126, i32 0, i32 5
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %125, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %2, align 4
  br label %192

134:                                              ; preds = %107
  br label %135

135:                                              ; preds = %134, %82
  br label %136

136:                                              ; preds = %135, %57
  %137 = load %struct.gdma_dma_sg*, %struct.gdma_dma_sg** %7, align 8
  %138 = getelementptr inbounds %struct.gdma_dma_sg, %struct.gdma_dma_sg* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @GDMA_REG_CTRL0_TX_SHIFT, align 4
  %141 = shl i32 %139, %140
  %142 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %143 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @GDMA_REG_CTRL0_BURST_SHIFT, align 4
  %146 = shl i32 %144, %145
  %147 = or i32 %141, %146
  %148 = load i32, i32* @GDMA_REG_CTRL0_DONE_INT, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @GDMA_REG_CTRL0_ENABLE, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* %8, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %8, align 4
  %154 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %155 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @GDMA_REG_CTRL1_NEXT_SHIFT, align 4
  %158 = shl i32 %156, %157
  store i32 %158, i32* %9, align 4
  %159 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %160 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %160, align 8
  %163 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %4, align 8
  %164 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %165 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @GDMA_REG_SRC_ADDR(i32 %166)
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @gdma_dma_write(%struct.gdma_dma_dev* %163, i32 %167, i32 %168)
  %170 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %4, align 8
  %171 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %172 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @GDMA_REG_DST_ADDR(i32 %173)
  %175 = load i32, i32* %6, align 4
  %176 = call i32 @gdma_dma_write(%struct.gdma_dma_dev* %170, i32 %174, i32 %175)
  %177 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %4, align 8
  %178 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %179 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @GDMA_REG_CTRL1(i32 %180)
  %182 = load i32, i32* %9, align 4
  %183 = call i32 @gdma_dma_write(%struct.gdma_dma_dev* %177, i32 %181, i32 %182)
  %184 = call i32 (...) @wmb()
  %185 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %4, align 8
  %186 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %187 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @GDMA_REG_CTRL0(i32 %188)
  %190 = load i32, i32* %8, align 4
  %191 = call i32 @gdma_dma_write(%struct.gdma_dma_dev* %185, i32 %189, i32 %190)
  store i32 0, i32* %2, align 4
  br label %192

192:                                              ; preds = %136, %121, %23
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local %struct.gdma_dma_dev* @gdma_dma_chan_get_dev(%struct.gdma_dmaengine_chan*) #1

declare dso_local i32 @gdma_dma_read(%struct.gdma_dma_dev*, i32) #1

declare dso_local i32 @GDMA_REG_CTRL0(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @rt305x_dump_reg(%struct.gdma_dma_dev*, i32) #1

declare dso_local i32 @gdma_dma_write(%struct.gdma_dma_dev*, i32, i32) #1

declare dso_local i32 @GDMA_REG_SRC_ADDR(i32) #1

declare dso_local i32 @GDMA_REG_DST_ADDR(i32) #1

declare dso_local i32 @GDMA_REG_CTRL1(i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
