; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32h7_spi_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32h7_spi_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.stm32_spi = type { i64, i64, i32, i64, i64, i64, i64, i32 }

@STM32H7_SPI_SR = common dso_local global i64 0, align 8
@STM32H7_SPI_IER = common dso_local global i64 0, align 8
@STM32H7_SPI_SR_SUSP = common dso_local global i32 0, align 4
@STM32H7_SPI_SR_RXP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"spurious IT (sr=0x%08x, ier=0x%08x)\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Communication suspended\0A\00", align 1
@STM32H7_SPI_SR_MODF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Mode fault: transfer aborted\0A\00", align 1
@STM32H7_SPI_SR_OVR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Overrun: received value discarded\0A\00", align 1
@STM32H7_SPI_SR_EOT = common dso_local global i32 0, align 4
@STM32H7_SPI_SR_TXP = common dso_local global i32 0, align 4
@STM32H7_SPI_IFCR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @stm32h7_spi_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32h7_spi_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.spi_master*, align 8
  %7 = alloca %struct.stm32_spi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.spi_master*
  store %struct.spi_master* %14, %struct.spi_master** %6, align 8
  %15 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %16 = call %struct.stm32_spi* @spi_master_get_devdata(%struct.spi_master* %15)
  store %struct.stm32_spi* %16, %struct.stm32_spi** %7, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %18 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %17, i32 0, i32 2
  %19 = load i64, i64* %11, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %22 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @STM32H7_SPI_SR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl_relaxed(i64 %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %28 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @STM32H7_SPI_IER, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readl_relaxed(i64 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* @STM32H7_SPI_SR_SUSP, align 4
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %10, align 4
  %37 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %38 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %2
  %42 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %43 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @STM32H7_SPI_SR_RXP, align 4
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %46, %41, %2
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %50
  %56 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %57 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @dev_dbg(i32 %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %63 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %62, i32 0, i32 2
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  %66 = load i32, i32* @IRQ_NONE, align 4
  store i32 %66, i32* %3, align 4
  br label %238

67:                                               ; preds = %50
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @STM32H7_SPI_SR_SUSP, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %101

72:                                               ; preds = %67
  %73 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %74 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dev_warn(i32 %75, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %78 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %94, label %81

81:                                               ; preds = %72
  %82 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %83 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %88 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %93 = call i32 @stm32h7_spi_read_rxfifo(%struct.stm32_spi* %92, i32 0)
  br label %94

94:                                               ; preds = %91, %86, %81, %72
  %95 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %96 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  store i32 1, i32* %12, align 4
  br label %100

100:                                              ; preds = %99, %94
  br label %101

101:                                              ; preds = %100, %67
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @STM32H7_SPI_SR_MODF, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %108 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @dev_warn(i32 %109, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %111

111:                                              ; preds = %106, %101
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @STM32H7_SPI_SR_OVR, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %145

116:                                              ; preds = %111
  %117 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %118 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @dev_warn(i32 %119, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %121 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %122 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %121, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %138, label %125

125:                                              ; preds = %116
  %126 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %127 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %125
  %131 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %132 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp sgt i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %137 = call i32 @stm32h7_spi_read_rxfifo(%struct.stm32_spi* %136, i32 0)
  br label %138

138:                                              ; preds = %135, %130, %125, %116
  %139 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %140 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %139, i32 0, i32 5
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  store i32 1, i32* %12, align 4
  br label %144

144:                                              ; preds = %143, %138
  br label %145

145:                                              ; preds = %144, %111
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @STM32H7_SPI_SR_EOT, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %169

150:                                              ; preds = %145
  %151 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %152 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %151, i32 0, i32 5
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %168, label %155

155:                                              ; preds = %150
  %156 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %157 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %155
  %161 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %162 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp sgt i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %167 = call i32 @stm32h7_spi_read_rxfifo(%struct.stm32_spi* %166, i32 1)
  br label %168

168:                                              ; preds = %165, %160, %155, %150
  store i32 1, i32* %12, align 4
  br label %169

169:                                              ; preds = %168, %145
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* @STM32H7_SPI_SR_TXP, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %193

174:                                              ; preds = %169
  %175 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %176 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %175, i32 0, i32 5
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %192, label %179

179:                                              ; preds = %174
  %180 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %181 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %180, i32 0, i32 6
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %179
  %185 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %186 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = icmp sgt i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %184
  %190 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %191 = call i32 @stm32h7_spi_write_txfifo(%struct.stm32_spi* %190)
  br label %192

192:                                              ; preds = %189, %184, %179, %174
  br label %193

193:                                              ; preds = %192, %169
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* @STM32H7_SPI_SR_RXP, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %217

198:                                              ; preds = %193
  %199 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %200 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %199, i32 0, i32 5
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %216, label %203

203:                                              ; preds = %198
  %204 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %205 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %204, i32 0, i32 4
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %203
  %209 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %210 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp sgt i64 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %208
  %214 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %215 = call i32 @stm32h7_spi_read_rxfifo(%struct.stm32_spi* %214, i32 0)
  br label %216

216:                                              ; preds = %213, %208, %203, %198
  br label %217

217:                                              ; preds = %216, %193
  %218 = load i32, i32* %10, align 4
  %219 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %220 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %219, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @STM32H7_SPI_IFCR, align 8
  %223 = add nsw i64 %221, %222
  %224 = call i32 @writel_relaxed(i32 %218, i64 %223)
  %225 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %226 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %225, i32 0, i32 2
  %227 = load i64, i64* %11, align 8
  %228 = call i32 @spin_unlock_irqrestore(i32* %226, i64 %227)
  %229 = load i32, i32* %12, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %217
  %232 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %233 = call i32 @spi_finalize_current_transfer(%struct.spi_master* %232)
  %234 = load %struct.stm32_spi*, %struct.stm32_spi** %7, align 8
  %235 = call i32 @stm32h7_spi_disable(%struct.stm32_spi* %234)
  br label %236

236:                                              ; preds = %231, %217
  %237 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %237, i32* %3, align 4
  br label %238

238:                                              ; preds = %236, %55
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

declare dso_local %struct.stm32_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @stm32h7_spi_read_rxfifo(%struct.stm32_spi*, i32) #1

declare dso_local i32 @stm32h7_spi_write_txfifo(%struct.stm32_spi*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @spi_finalize_current_transfer(%struct.spi_master*) #1

declare dso_local i32 @stm32h7_spi_disable(%struct.stm32_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
