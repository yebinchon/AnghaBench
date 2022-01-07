; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ralink-gdma/extr_ralink-gdma.c_rt3883_gdma_start_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ralink-gdma/extr_ralink-gdma.c_rt3883_gdma_start_transfer.c"
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
@GDMA_REG_CTRL1_SRC_REQ_SHIFT = common dso_local global i32 0, align 4
@GDMA_REG_CTRL1_DST_REQ_SHIFT = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@GDMA_REG_CTRL0_SRC_ADDR_FIXED = common dso_local global i32 0, align 4
@GDMA_REG_CTRL1_COHERENT = common dso_local global i32 0, align 4
@DMA_MEM_TO_MEM = common dso_local global i32 0, align 4
@GDMA_REG_CTRL0_SW_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"direction type %d error\0A\00", align 1
@GDMA_REG_CTRL0_TX_SHIFT = common dso_local global i32 0, align 4
@GDMA_REG_CTRL0_BURST_SHIFT = common dso_local global i32 0, align 4
@GDMA_REG_CTRL0_DONE_INT = common dso_local global i32 0, align 4
@GDMA_REG_CTRL1_NEXT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdma_dmaengine_chan*)* @rt3883_gdma_start_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt3883_gdma_start_transfer(%struct.gdma_dmaengine_chan* %0) #0 {
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
  %37 = call i32 @rt3883_dump_reg(%struct.gdma_dma_dev* %33, i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %195

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
  br i1 %56, label %57, label %73

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
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* @GDMA_REG_CTRL1_SRC_REQ_SHIFT, align 4
  %66 = shl i32 32, %65
  %67 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %68 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @GDMA_REG_CTRL1_DST_REQ_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = or i32 %66, %71
  store i32 %72, i32* %9, align 4
  br label %137

73:                                               ; preds = %40
  %74 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %75 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %74, i32 0, i32 5
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %99

81:                                               ; preds = %73
  %82 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %83 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %5, align 4
  %85 = load %struct.gdma_dma_sg*, %struct.gdma_dma_sg** %7, align 8
  %86 = getelementptr inbounds %struct.gdma_dma_sg, %struct.gdma_dma_sg* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* @GDMA_REG_CTRL0_SRC_ADDR_FIXED, align 4
  store i32 %88, i32* %8, align 4
  %89 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %90 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @GDMA_REG_CTRL1_SRC_REQ_SHIFT, align 4
  %93 = shl i32 %91, %92
  %94 = load i32, i32* @GDMA_REG_CTRL1_DST_REQ_SHIFT, align 4
  %95 = shl i32 32, %94
  %96 = or i32 %93, %95
  %97 = load i32, i32* @GDMA_REG_CTRL1_COHERENT, align 4
  %98 = or i32 %96, %97
  store i32 %98, i32* %9, align 4
  br label %136

99:                                               ; preds = %73
  %100 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %101 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %100, i32 0, i32 5
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @DMA_MEM_TO_MEM, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %122

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
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* @GDMA_REG_CTRL1_SRC_REQ_SHIFT, align 4
  %116 = shl i32 32, %115
  %117 = load i32, i32* @GDMA_REG_CTRL1_DST_REQ_SHIFT, align 4
  %118 = shl i32 32, %117
  %119 = or i32 %116, %118
  %120 = load i32, i32* @GDMA_REG_CTRL1_COHERENT, align 4
  %121 = or i32 %119, %120
  store i32 %121, i32* %9, align 4
  br label %135

122:                                              ; preds = %99
  %123 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %4, align 8
  %124 = getelementptr inbounds %struct.gdma_dma_dev, %struct.gdma_dma_dev* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %128 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %127, i32 0, i32 5
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %126, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %2, align 4
  br label %195

135:                                              ; preds = %107
  br label %136

136:                                              ; preds = %135, %81
  br label %137

137:                                              ; preds = %136, %57
  %138 = load %struct.gdma_dma_sg*, %struct.gdma_dma_sg** %7, align 8
  %139 = getelementptr inbounds %struct.gdma_dma_sg, %struct.gdma_dma_sg* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @GDMA_REG_CTRL0_TX_SHIFT, align 4
  %142 = shl i32 %140, %141
  %143 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %144 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @GDMA_REG_CTRL0_BURST_SHIFT, align 4
  %147 = shl i32 %145, %146
  %148 = or i32 %142, %147
  %149 = load i32, i32* @GDMA_REG_CTRL0_DONE_INT, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @GDMA_REG_CTRL0_ENABLE, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* %8, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %8, align 4
  %155 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %156 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @GDMA_REG_CTRL1_NEXT_SHIFT, align 4
  %159 = shl i32 %157, %158
  %160 = load i32, i32* %9, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %9, align 4
  %162 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %163 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %163, align 8
  %166 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %4, align 8
  %167 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %168 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @GDMA_REG_SRC_ADDR(i32 %169)
  %171 = load i32, i32* %5, align 4
  %172 = call i32 @gdma_dma_write(%struct.gdma_dma_dev* %166, i32 %170, i32 %171)
  %173 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %4, align 8
  %174 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %175 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @GDMA_REG_DST_ADDR(i32 %176)
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @gdma_dma_write(%struct.gdma_dma_dev* %173, i32 %177, i32 %178)
  %180 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %4, align 8
  %181 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %182 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @GDMA_REG_CTRL1(i32 %183)
  %185 = load i32, i32* %9, align 4
  %186 = call i32 @gdma_dma_write(%struct.gdma_dma_dev* %180, i32 %184, i32 %185)
  %187 = call i32 (...) @wmb()
  %188 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %4, align 8
  %189 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %190 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @GDMA_REG_CTRL0(i32 %191)
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @gdma_dma_write(%struct.gdma_dma_dev* %188, i32 %192, i32 %193)
  store i32 0, i32* %2, align 4
  br label %195

195:                                              ; preds = %137, %122, %23
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local %struct.gdma_dma_dev* @gdma_dma_chan_get_dev(%struct.gdma_dmaengine_chan*) #1

declare dso_local i32 @gdma_dma_read(%struct.gdma_dma_dev*, i32) #1

declare dso_local i32 @GDMA_REG_CTRL0(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @rt3883_dump_reg(%struct.gdma_dma_dev*, i32) #1

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
