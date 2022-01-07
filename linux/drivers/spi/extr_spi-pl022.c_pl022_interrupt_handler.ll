; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pl022.c_pl022_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pl022.c_pl022_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl022 = type { i64, i64, i64, i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, %struct.spi_message* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.spi_message = type { i64, i32 }

@.str = private unnamed_addr constant [39 x i8] c"bad message state in interrupt handler\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@SSP_MIS_MASK_RORMIS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"FIFO overrun\0A\00", align 1
@SSP_SR_MASK_RFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"RXFIFO is full\0A\00", align 1
@DISABLE_ALL_INTERRUPTS = common dso_local global i32 0, align 4
@CLEAR_ALL_INTERRUPTS = common dso_local global i32 0, align 4
@SSP_CR1_MASK_SSE = common dso_local global i32 0, align 4
@STATE_ERROR = common dso_local global i64 0, align 8
@SSP_IMSC_MASK_TXIM = common dso_local global i32 0, align 4
@SSP_IMSC_MASK_RXIM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [80 x i8] c"read %u surplus bytes (did you request an odd number of bytes on a 16bit bus?)\0A\00", align 1
@STATE_DONE = common dso_local global i64 0, align 8
@SSP_CHIP_DESELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pl022_interrupt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl022_interrupt_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pl022*, align 8
  %7 = alloca %struct.spi_message*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.pl022*
  store %struct.pl022* %10, %struct.pl022** %6, align 8
  %11 = load %struct.pl022*, %struct.pl022** %6, align 8
  %12 = getelementptr inbounds %struct.pl022, %struct.pl022* %11, i32 0, i32 8
  %13 = load %struct.spi_message*, %struct.spi_message** %12, align 8
  store %struct.spi_message* %13, %struct.spi_message** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.spi_message*, %struct.spi_message** %7, align 8
  %15 = icmp ne %struct.spi_message* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.pl022*, %struct.pl022** %6, align 8
  %22 = getelementptr inbounds %struct.pl022, %struct.pl022* %21, i32 0, i32 6
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %26, i32* %3, align 4
  br label %210

27:                                               ; preds = %2
  %28 = load %struct.pl022*, %struct.pl022** %6, align 8
  %29 = getelementptr inbounds %struct.pl022, %struct.pl022* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @SSP_MIS(i32 %30)
  %32 = call i32 @readw(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = load i32, i32* @IRQ_NONE, align 4
  store i32 %40, i32* %3, align 4
  br label %210

41:                                               ; preds = %27
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @SSP_MIS_MASK_RORMIS, align 4
  %44 = and i32 %42, %43
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %100

47:                                               ; preds = %41
  %48 = load %struct.pl022*, %struct.pl022** %6, align 8
  %49 = getelementptr inbounds %struct.pl022, %struct.pl022* %48, i32 0, i32 6
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.pl022*, %struct.pl022** %6, align 8
  %54 = getelementptr inbounds %struct.pl022, %struct.pl022* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @SSP_SR(i32 %55)
  %57 = call i32 @readw(i32 %56)
  %58 = load i32, i32* @SSP_SR_MASK_RFF, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %47
  %62 = load %struct.pl022*, %struct.pl022** %6, align 8
  %63 = getelementptr inbounds %struct.pl022, %struct.pl022* %62, i32 0, i32 6
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %61, %47
  %68 = load i32, i32* @DISABLE_ALL_INTERRUPTS, align 4
  %69 = load %struct.pl022*, %struct.pl022** %6, align 8
  %70 = getelementptr inbounds %struct.pl022, %struct.pl022* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @SSP_IMSC(i32 %71)
  %73 = call i32 @writew(i32 %68, i32 %72)
  %74 = load i32, i32* @CLEAR_ALL_INTERRUPTS, align 4
  %75 = load %struct.pl022*, %struct.pl022** %6, align 8
  %76 = getelementptr inbounds %struct.pl022, %struct.pl022* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @SSP_ICR(i32 %77)
  %79 = call i32 @writew(i32 %74, i32 %78)
  %80 = load %struct.pl022*, %struct.pl022** %6, align 8
  %81 = getelementptr inbounds %struct.pl022, %struct.pl022* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @SSP_CR1(i32 %82)
  %84 = call i32 @readw(i32 %83)
  %85 = load i32, i32* @SSP_CR1_MASK_SSE, align 4
  %86 = xor i32 %85, -1
  %87 = and i32 %84, %86
  %88 = load %struct.pl022*, %struct.pl022** %6, align 8
  %89 = getelementptr inbounds %struct.pl022, %struct.pl022* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @SSP_CR1(i32 %90)
  %92 = call i32 @writew(i32 %87, i32 %91)
  %93 = load i64, i64* @STATE_ERROR, align 8
  %94 = load %struct.spi_message*, %struct.spi_message** %7, align 8
  %95 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load %struct.pl022*, %struct.pl022** %6, align 8
  %97 = getelementptr inbounds %struct.pl022, %struct.pl022* %96, i32 0, i32 4
  %98 = call i32 @tasklet_schedule(i32* %97)
  %99 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %99, i32* %3, align 4
  br label %210

100:                                              ; preds = %41
  %101 = load %struct.pl022*, %struct.pl022** %6, align 8
  %102 = call i32 @readwriter(%struct.pl022* %101)
  %103 = load %struct.pl022*, %struct.pl022** %6, align 8
  %104 = getelementptr inbounds %struct.pl022, %struct.pl022* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.pl022*, %struct.pl022** %6, align 8
  %107 = getelementptr inbounds %struct.pl022, %struct.pl022* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %105, %108
  br i1 %109, label %110, label %126

110:                                              ; preds = %100
  %111 = load %struct.pl022*, %struct.pl022** %6, align 8
  %112 = getelementptr inbounds %struct.pl022, %struct.pl022* %111, i32 0, i32 7
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @SSP_IMSC(i32 %113)
  %115 = call i32 @readw(i32 %114)
  %116 = load i32, i32* @SSP_IMSC_MASK_TXIM, align 4
  %117 = xor i32 %116, -1
  %118 = and i32 %115, %117
  %119 = load i32, i32* @SSP_IMSC_MASK_RXIM, align 4
  %120 = or i32 %118, %119
  %121 = load %struct.pl022*, %struct.pl022** %6, align 8
  %122 = getelementptr inbounds %struct.pl022, %struct.pl022* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @SSP_IMSC(i32 %123)
  %125 = call i32 @writew(i32 %120, i32 %124)
  br label %126

126:                                              ; preds = %110, %100
  %127 = load %struct.pl022*, %struct.pl022** %6, align 8
  %128 = getelementptr inbounds %struct.pl022, %struct.pl022* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.pl022*, %struct.pl022** %6, align 8
  %131 = getelementptr inbounds %struct.pl022, %struct.pl022* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = icmp sge i64 %129, %132
  br i1 %133, label %134, label %208

134:                                              ; preds = %126
  %135 = load i32, i32* @DISABLE_ALL_INTERRUPTS, align 4
  %136 = load %struct.pl022*, %struct.pl022** %6, align 8
  %137 = getelementptr inbounds %struct.pl022, %struct.pl022* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @SSP_IMSC(i32 %138)
  %140 = call i32 @writew(i32 %135, i32 %139)
  %141 = load i32, i32* @CLEAR_ALL_INTERRUPTS, align 4
  %142 = load %struct.pl022*, %struct.pl022** %6, align 8
  %143 = getelementptr inbounds %struct.pl022, %struct.pl022* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @SSP_ICR(i32 %144)
  %146 = call i32 @writew(i32 %141, i32 %145)
  %147 = load %struct.pl022*, %struct.pl022** %6, align 8
  %148 = getelementptr inbounds %struct.pl022, %struct.pl022* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.pl022*, %struct.pl022** %6, align 8
  %151 = getelementptr inbounds %struct.pl022, %struct.pl022* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = icmp sgt i64 %149, %152
  %154 = zext i1 %153 to i32
  %155 = call i64 @unlikely(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %171

157:                                              ; preds = %134
  %158 = load %struct.pl022*, %struct.pl022** %6, align 8
  %159 = getelementptr inbounds %struct.pl022, %struct.pl022* %158, i32 0, i32 6
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load %struct.pl022*, %struct.pl022** %6, align 8
  %163 = getelementptr inbounds %struct.pl022, %struct.pl022* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.pl022*, %struct.pl022** %6, align 8
  %166 = getelementptr inbounds %struct.pl022, %struct.pl022* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = sub nsw i64 %164, %167
  %169 = trunc i64 %168 to i32
  %170 = call i32 @dev_warn(i32* %161, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0), i32 %169)
  br label %171

171:                                              ; preds = %157, %134
  %172 = load %struct.pl022*, %struct.pl022** %6, align 8
  %173 = getelementptr inbounds %struct.pl022, %struct.pl022* %172, i32 0, i32 5
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.spi_message*, %struct.spi_message** %7, align 8
  %178 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %180, %176
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %178, align 8
  %183 = load %struct.pl022*, %struct.pl022** %6, align 8
  %184 = call i64 @next_transfer(%struct.pl022* %183)
  %185 = load %struct.spi_message*, %struct.spi_message** %7, align 8
  %186 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %185, i32 0, i32 0
  store i64 %184, i64* %186, align 8
  %187 = load %struct.spi_message*, %struct.spi_message** %7, align 8
  %188 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @STATE_DONE, align 8
  %191 = icmp ne i64 %189, %190
  br i1 %191, label %192, label %203

192:                                              ; preds = %171
  %193 = load %struct.pl022*, %struct.pl022** %6, align 8
  %194 = getelementptr inbounds %struct.pl022, %struct.pl022* %193, i32 0, i32 5
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %192
  %200 = load %struct.pl022*, %struct.pl022** %6, align 8
  %201 = load i32, i32* @SSP_CHIP_DESELECT, align 4
  %202 = call i32 @pl022_cs_control(%struct.pl022* %200, i32 %201)
  br label %203

203:                                              ; preds = %199, %192, %171
  %204 = load %struct.pl022*, %struct.pl022** %6, align 8
  %205 = getelementptr inbounds %struct.pl022, %struct.pl022* %204, i32 0, i32 4
  %206 = call i32 @tasklet_schedule(i32* %205)
  %207 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %207, i32* %3, align 4
  br label %210

208:                                              ; preds = %126
  %209 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %209, i32* %3, align 4
  br label %210

210:                                              ; preds = %208, %203, %67, %39, %20
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @readw(i32) #1

declare dso_local i32 @SSP_MIS(i32) #1

declare dso_local i32 @SSP_SR(i32) #1

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i32 @SSP_IMSC(i32) #1

declare dso_local i32 @SSP_ICR(i32) #1

declare dso_local i32 @SSP_CR1(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @readwriter(%struct.pl022*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i64 @next_transfer(%struct.pl022*) #1

declare dso_local i32 @pl022_cs_control(%struct.pl022*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
