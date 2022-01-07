; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pl022.c_load_ssp_default_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pl022.c_load_ssp_default_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl022 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@DEFAULT_SSP_REG_CR0_ST_PL023 = common dso_local global i32 0, align 4
@DEFAULT_SSP_REG_CR1_ST_PL023 = common dso_local global i32 0, align 4
@DEFAULT_SSP_REG_CR0_ST = common dso_local global i32 0, align 4
@DEFAULT_SSP_REG_CR1_ST = common dso_local global i32 0, align 4
@DEFAULT_SSP_REG_CR0 = common dso_local global i32 0, align 4
@DEFAULT_SSP_REG_CR1 = common dso_local global i32 0, align 4
@DEFAULT_SSP_REG_DMACR = common dso_local global i32 0, align 4
@DEFAULT_SSP_REG_CPSR = common dso_local global i32 0, align 4
@DISABLE_ALL_INTERRUPTS = common dso_local global i32 0, align 4
@CLEAR_ALL_INTERRUPTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pl022*)* @load_ssp_default_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_ssp_default_config(%struct.pl022* %0) #0 {
  %2 = alloca %struct.pl022*, align 8
  store %struct.pl022* %0, %struct.pl022** %2, align 8
  %3 = load %struct.pl022*, %struct.pl022** %2, align 8
  %4 = getelementptr inbounds %struct.pl022, %struct.pl022* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load i32, i32* @DEFAULT_SSP_REG_CR0_ST_PL023, align 4
  %11 = load %struct.pl022*, %struct.pl022** %2, align 8
  %12 = getelementptr inbounds %struct.pl022, %struct.pl022* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @SSP_CR0(i32 %13)
  %15 = call i32 @writel(i32 %10, i32 %14)
  %16 = load i32, i32* @DEFAULT_SSP_REG_CR1_ST_PL023, align 4
  %17 = load %struct.pl022*, %struct.pl022** %2, align 8
  %18 = getelementptr inbounds %struct.pl022, %struct.pl022* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @SSP_CR1(i32 %19)
  %21 = call i32 @writew(i32 %16, i32 %20)
  br label %56

22:                                               ; preds = %1
  %23 = load %struct.pl022*, %struct.pl022** %2, align 8
  %24 = getelementptr inbounds %struct.pl022, %struct.pl022* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %22
  %30 = load i32, i32* @DEFAULT_SSP_REG_CR0_ST, align 4
  %31 = load %struct.pl022*, %struct.pl022** %2, align 8
  %32 = getelementptr inbounds %struct.pl022, %struct.pl022* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @SSP_CR0(i32 %33)
  %35 = call i32 @writel(i32 %30, i32 %34)
  %36 = load i32, i32* @DEFAULT_SSP_REG_CR1_ST, align 4
  %37 = load %struct.pl022*, %struct.pl022** %2, align 8
  %38 = getelementptr inbounds %struct.pl022, %struct.pl022* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @SSP_CR1(i32 %39)
  %41 = call i32 @writew(i32 %36, i32 %40)
  br label %55

42:                                               ; preds = %22
  %43 = load i32, i32* @DEFAULT_SSP_REG_CR0, align 4
  %44 = load %struct.pl022*, %struct.pl022** %2, align 8
  %45 = getelementptr inbounds %struct.pl022, %struct.pl022* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @SSP_CR0(i32 %46)
  %48 = call i32 @writew(i32 %43, i32 %47)
  %49 = load i32, i32* @DEFAULT_SSP_REG_CR1, align 4
  %50 = load %struct.pl022*, %struct.pl022** %2, align 8
  %51 = getelementptr inbounds %struct.pl022, %struct.pl022* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @SSP_CR1(i32 %52)
  %54 = call i32 @writew(i32 %49, i32 %53)
  br label %55

55:                                               ; preds = %42, %29
  br label %56

56:                                               ; preds = %55, %9
  %57 = load i32, i32* @DEFAULT_SSP_REG_DMACR, align 4
  %58 = load %struct.pl022*, %struct.pl022** %2, align 8
  %59 = getelementptr inbounds %struct.pl022, %struct.pl022* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @SSP_DMACR(i32 %60)
  %62 = call i32 @writew(i32 %57, i32 %61)
  %63 = load i32, i32* @DEFAULT_SSP_REG_CPSR, align 4
  %64 = load %struct.pl022*, %struct.pl022** %2, align 8
  %65 = getelementptr inbounds %struct.pl022, %struct.pl022* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @SSP_CPSR(i32 %66)
  %68 = call i32 @writew(i32 %63, i32 %67)
  %69 = load i32, i32* @DISABLE_ALL_INTERRUPTS, align 4
  %70 = load %struct.pl022*, %struct.pl022** %2, align 8
  %71 = getelementptr inbounds %struct.pl022, %struct.pl022* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @SSP_IMSC(i32 %72)
  %74 = call i32 @writew(i32 %69, i32 %73)
  %75 = load i32, i32* @CLEAR_ALL_INTERRUPTS, align 4
  %76 = load %struct.pl022*, %struct.pl022** %2, align 8
  %77 = getelementptr inbounds %struct.pl022, %struct.pl022* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @SSP_ICR(i32 %78)
  %80 = call i32 @writew(i32 %75, i32 %79)
  ret void
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @SSP_CR0(i32) #1

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i32 @SSP_CR1(i32) #1

declare dso_local i32 @SSP_DMACR(i32) #1

declare dso_local i32 @SSP_CPSR(i32) #1

declare dso_local i32 @SSP_IMSC(i32) #1

declare dso_local i32 @SSP_ICR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
