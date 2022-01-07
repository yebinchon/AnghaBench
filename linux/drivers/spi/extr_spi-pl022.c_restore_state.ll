; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pl022.c_restore_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pl022.c_restore_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl022 = type { i32, %struct.TYPE_2__*, %struct.chip_data* }
%struct.TYPE_2__ = type { i64 }
%struct.chip_data = type { i32, i32, i32, i32 }

@DISABLE_ALL_INTERRUPTS = common dso_local global i32 0, align 4
@CLEAR_ALL_INTERRUPTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pl022*)* @restore_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_state(%struct.pl022* %0) #0 {
  %2 = alloca %struct.pl022*, align 8
  %3 = alloca %struct.chip_data*, align 8
  store %struct.pl022* %0, %struct.pl022** %2, align 8
  %4 = load %struct.pl022*, %struct.pl022** %2, align 8
  %5 = getelementptr inbounds %struct.pl022, %struct.pl022* %4, i32 0, i32 2
  %6 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  store %struct.chip_data* %6, %struct.chip_data** %3, align 8
  %7 = load %struct.pl022*, %struct.pl022** %2, align 8
  %8 = getelementptr inbounds %struct.pl022, %struct.pl022* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %15 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.pl022*, %struct.pl022** %2, align 8
  %18 = getelementptr inbounds %struct.pl022, %struct.pl022* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @SSP_CR0(i32 %19)
  %21 = call i32 @writel(i32 %16, i32 %20)
  br label %31

22:                                               ; preds = %1
  %23 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %24 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pl022*, %struct.pl022** %2, align 8
  %27 = getelementptr inbounds %struct.pl022, %struct.pl022* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @SSP_CR0(i32 %28)
  %30 = call i32 @writew(i32 %25, i32 %29)
  br label %31

31:                                               ; preds = %22, %13
  %32 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %33 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.pl022*, %struct.pl022** %2, align 8
  %36 = getelementptr inbounds %struct.pl022, %struct.pl022* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @SSP_CR1(i32 %37)
  %39 = call i32 @writew(i32 %34, i32 %38)
  %40 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %41 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.pl022*, %struct.pl022** %2, align 8
  %44 = getelementptr inbounds %struct.pl022, %struct.pl022* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @SSP_DMACR(i32 %45)
  %47 = call i32 @writew(i32 %42, i32 %46)
  %48 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %49 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.pl022*, %struct.pl022** %2, align 8
  %52 = getelementptr inbounds %struct.pl022, %struct.pl022* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @SSP_CPSR(i32 %53)
  %55 = call i32 @writew(i32 %50, i32 %54)
  %56 = load i32, i32* @DISABLE_ALL_INTERRUPTS, align 4
  %57 = load %struct.pl022*, %struct.pl022** %2, align 8
  %58 = getelementptr inbounds %struct.pl022, %struct.pl022* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @SSP_IMSC(i32 %59)
  %61 = call i32 @writew(i32 %56, i32 %60)
  %62 = load i32, i32* @CLEAR_ALL_INTERRUPTS, align 4
  %63 = load %struct.pl022*, %struct.pl022** %2, align 8
  %64 = getelementptr inbounds %struct.pl022, %struct.pl022* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @SSP_ICR(i32 %65)
  %67 = call i32 @writew(i32 %62, i32 %66)
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
