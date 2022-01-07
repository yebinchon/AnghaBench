; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sirf.c_sirfsoc_usp_hwinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sirf.c_sirfsoc_usp_hwinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sirfsoc_spi = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@SIRFSOC_USP_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sirfsoc_spi*)* @sirfsoc_usp_hwinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sirfsoc_usp_hwinit(%struct.sirfsoc_spi* %0) #0 {
  %2 = alloca %struct.sirfsoc_spi*, align 8
  store %struct.sirfsoc_spi* %0, %struct.sirfsoc_spi** %2, align 8
  %3 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %2, align 8
  %4 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %2, align 8
  %7 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %5, %10
  %12 = call i32 @readl(i64 %11)
  %13 = load i32, i32* @SIRFSOC_USP_EN, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %2, align 8
  %17 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %2, align 8
  %20 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %18, %23
  %25 = call i32 @writel(i32 %15, i64 %24)
  %26 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %2, align 8
  %27 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %2, align 8
  %30 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %28, %33
  %35 = call i32 @readl(i64 %34)
  %36 = load i32, i32* @SIRFSOC_USP_EN, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %2, align 8
  %39 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %2, align 8
  %42 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %40, %45
  %47 = call i32 @writel(i32 %37, i64 %46)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
