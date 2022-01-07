; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qup.c_spi_qup_qup_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qup.c_spi_qup_qup_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_qup = type { i32, i32, i32, i64, i32, i32 }

@QUP_ERROR_FLAGS = common dso_local global i64 0, align 8
@SPI_ERROR_FLAGS = common dso_local global i64 0, align 8
@QUP_OPERATIONAL = common dso_local global i64 0, align 8
@QUP_ERROR_OUTPUT_OVER_RUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"OUTPUT_OVER_RUN\0A\00", align 1
@QUP_ERROR_INPUT_UNDER_RUN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"INPUT_UNDER_RUN\0A\00", align 1
@QUP_ERROR_OUTPUT_UNDER_RUN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"OUTPUT_UNDER_RUN\0A\00", align 1
@QUP_ERROR_INPUT_OVER_RUN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"INPUT_OVER_RUN\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SPI_ERROR_CLK_OVER_RUN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"CLK_OVER_RUN\0A\00", align 1
@SPI_ERROR_CLK_UNDER_RUN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"CLK_UNDER_RUN\0A\00", align 1
@QUP_OP_IN_SERVICE_FLAG = common dso_local global i32 0, align 4
@QUP_OP_OUT_SERVICE_FLAG = common dso_local global i32 0, align 4
@QUP_OP_MAX_INPUT_DONE_FLAG = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @spi_qup_qup_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_qup_qup_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.spi_qup*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.spi_qup*
  store %struct.spi_qup* %13, %struct.spi_qup** %6, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %15 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @QUP_ERROR_FLAGS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl_relaxed(i64 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %21 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SPI_ERROR_FLAGS, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl_relaxed(i64 %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %27 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @QUP_OPERATIONAL, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl_relaxed(i64 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %34 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @QUP_ERROR_FLAGS, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel_relaxed(i32 %32, i64 %37)
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %41 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SPI_ERROR_FLAGS, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel_relaxed(i32 %39, i64 %44)
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %91

48:                                               ; preds = %2
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @QUP_ERROR_OUTPUT_OVER_RUN, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %55 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_warn(i32 %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @QUP_ERROR_INPUT_UNDER_RUN, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %65 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_warn(i32 %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @QUP_ERROR_OUTPUT_UNDER_RUN, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %75 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dev_warn(i32 %76, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %78

78:                                               ; preds = %73, %68
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @QUP_ERROR_INPUT_OVER_RUN, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %85 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_warn(i32 %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %88

88:                                               ; preds = %83, %78
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %88, %2
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %117

94:                                               ; preds = %91
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @SPI_ERROR_CLK_OVER_RUN, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %101 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dev_warn(i32 %102, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %104

104:                                              ; preds = %99, %94
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @SPI_ERROR_CLK_UNDER_RUN, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %111 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dev_warn(i32 %112, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %114

114:                                              ; preds = %109, %104
  %115 = load i32, i32* @EIO, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %114, %91
  %118 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %119 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %118, i32 0, i32 4
  %120 = load i64, i64* %10, align 8
  %121 = call i32 @spin_lock_irqsave(i32* %119, i64 %120)
  %122 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %123 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %117
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %129 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  br label %130

130:                                              ; preds = %126, %117
  %131 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %132 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %131, i32 0, i32 4
  %133 = load i64, i64* %10, align 8
  %134 = call i32 @spin_unlock_irqrestore(i32* %132, i64 %133)
  %135 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %136 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i64 @spi_qup_is_dma_xfer(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %130
  %141 = load i32, i32* %7, align 4
  %142 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %143 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @QUP_OPERATIONAL, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @writel_relaxed(i32 %141, i64 %146)
  br label %173

148:                                              ; preds = %130
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @QUP_OP_IN_SERVICE_FLAG, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %155 = call i32 @spi_qup_read(%struct.spi_qup* %154, i32* %7)
  br label %156

156:                                              ; preds = %153, %148
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @QUP_OP_OUT_SERVICE_FLAG, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %163 = call i32 @spi_qup_write(%struct.spi_qup* %162)
  br label %164

164:                                              ; preds = %161, %156
  %165 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %166 = call i64 @spi_qup_data_pending(%struct.spi_qup* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %164
  %169 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %170 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %169, i32 0, i32 1
  %171 = call i32 @complete(i32* %170)
  br label %172

172:                                              ; preds = %168, %164
  br label %173

173:                                              ; preds = %172, %140
  %174 = load i32, i32* %11, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %173
  %177 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %178 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %177, i32 0, i32 1
  %179 = call i32 @complete(i32* %178)
  br label %180

180:                                              ; preds = %176, %173
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* @QUP_OP_MAX_INPUT_DONE_FLAG, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %202

185:                                              ; preds = %180
  %186 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %187 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = call i64 @spi_qup_is_dma_xfer(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %198, label %191

191:                                              ; preds = %185
  %192 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %193 = call i64 @spi_qup_data_pending(%struct.spi_qup* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %191
  %196 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %196, i32* %3, align 4
  br label %204

197:                                              ; preds = %191
  br label %198

198:                                              ; preds = %197, %185
  %199 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %200 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %199, i32 0, i32 1
  %201 = call i32 @complete(i32* %200)
  br label %202

202:                                              ; preds = %198, %180
  %203 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %203, i32* %3, align 4
  br label %204

204:                                              ; preds = %202, %195
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @spi_qup_is_dma_xfer(i32) #1

declare dso_local i32 @spi_qup_read(%struct.spi_qup*, i32*) #1

declare dso_local i32 @spi_qup_write(%struct.spi_qup*) #1

declare dso_local i64 @spi_qup_data_pending(%struct.spi_qup*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
