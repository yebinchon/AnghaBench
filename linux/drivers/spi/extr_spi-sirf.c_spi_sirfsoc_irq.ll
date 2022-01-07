; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sirf.c_spi_sirfsoc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sirf.c_spi_sirfsoc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sirfsoc_spi = type { i32, %struct.TYPE_2__*, i64, i32, i32, i64 }
%struct.TYPE_2__ = type { i64, i64, i64 }

@SIRFSOC_SPI_FRM_END = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@SIRFSOC_SPI_RX_OFLOW = common dso_local global i32 0, align 4
@SIRFSOC_SPI_TX_UFLOW = common dso_local global i32 0, align 4
@SIRFSOC_SPI_TXFIFO_EMPTY = common dso_local global i32 0, align 4
@SIRFSOC_SPI_RX_IO_DMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @spi_sirfsoc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_sirfsoc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sirfsoc_spi*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.sirfsoc_spi*
  store %struct.sirfsoc_spi* %9, %struct.sirfsoc_spi** %6, align 8
  %10 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %11 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %14 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %12, %17
  %19 = call i64 @readl(i64 %18)
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %22 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %70

25:                                               ; preds = %2
  %26 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %27 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 130
  br i1 %29, label %30, label %70

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @SIRFSOC_SPI_FRM_END, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %70

35:                                               ; preds = %30
  %36 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %37 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %36, i32 0, i32 4
  %38 = call i32 @complete(i32* %37)
  %39 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %40 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %43 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %41, %46
  %48 = call i32 @writel(i64 0, i64 %47)
  %49 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %50 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %53 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %51, %56
  %58 = call i64 @readl(i64 %57)
  %59 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %60 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %63 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %61, %66
  %68 = call i32 @writel(i64 %58, i64 %67)
  %69 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %69, i32* %3, align 4
  br label %212

70:                                               ; preds = %30, %25, %2
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @SIRFSOC_SPI_RX_OFLOW, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @SIRFSOC_SPI_TX_UFLOW, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %134

80:                                               ; preds = %75, %70
  %81 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %82 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %81, i32 0, i32 4
  %83 = call i32 @complete(i32* %82)
  %84 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %85 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %84, i32 0, i32 3
  %86 = call i32 @complete(i32* %85)
  %87 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %88 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  switch i32 %89, label %112 [
    i32 130, label %90
    i32 128, label %90
    i32 129, label %101
  ]

90:                                               ; preds = %80, %80
  %91 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %92 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %95 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %94, i32 0, i32 1
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %93, %98
  %100 = call i32 @writel(i64 0, i64 %99)
  br label %112

101:                                              ; preds = %80
  %102 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %103 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %106 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %105, i32 0, i32 1
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %104, %109
  %111 = call i32 @writel(i64 -1, i64 %110)
  br label %112

112:                                              ; preds = %80, %101, %90
  %113 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %114 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %117 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %116, i32 0, i32 1
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %115, %120
  %122 = call i64 @readl(i64 %121)
  %123 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %124 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %127 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %126, i32 0, i32 1
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %125, %130
  %132 = call i32 @writel(i64 %122, i64 %131)
  %133 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %133, i32* %3, align 4
  br label %212

134:                                              ; preds = %75
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @SIRFSOC_SPI_TXFIFO_EMPTY, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %141 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %140, i32 0, i32 4
  %142 = call i32 @complete(i32* %141)
  br label %143

143:                                              ; preds = %139, %134
  br label %144

144:                                              ; preds = %159, %143
  %145 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %146 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %149 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %148, i32 0, i32 1
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %147, %152
  %154 = call i64 @readl(i64 %153)
  %155 = load i64, i64* @SIRFSOC_SPI_RX_IO_DMA, align 8
  %156 = and i64 %154, %155
  %157 = icmp ne i64 %156, 0
  %158 = xor i1 %157, true
  br i1 %158, label %159, label %161

159:                                              ; preds = %144
  %160 = call i32 (...) @cpu_relax()
  br label %144

161:                                              ; preds = %144
  %162 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %163 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %162, i32 0, i32 3
  %164 = call i32 @complete(i32* %163)
  %165 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %166 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  switch i32 %167, label %190 [
    i32 130, label %168
    i32 128, label %168
    i32 129, label %179
  ]

168:                                              ; preds = %161, %161
  %169 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %170 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %173 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %172, i32 0, i32 1
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %171, %176
  %178 = call i32 @writel(i64 0, i64 %177)
  br label %190

179:                                              ; preds = %161
  %180 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %181 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %184 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %183, i32 0, i32 1
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %182, %187
  %189 = call i32 @writel(i64 -1, i64 %188)
  br label %190

190:                                              ; preds = %161, %179, %168
  %191 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %192 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %195 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %194, i32 0, i32 1
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = add nsw i64 %193, %198
  %200 = call i64 @readl(i64 %199)
  %201 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %202 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %205 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %204, i32 0, i32 1
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = add nsw i64 %203, %208
  %210 = call i32 @writel(i64 %200, i64 %209)
  %211 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %211, i32* %3, align 4
  br label %212

212:                                              ; preds = %190, %112, %35
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
