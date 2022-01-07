; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_rspi_irq_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_rspi_irq_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rspi_data = type { i32, i32 }

@RSPI_SPSR = common dso_local global i32 0, align 4
@SPSR_SPTEF = common dso_local global i32 0, align 4
@SPCR_SPTIE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rspi_irq_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rspi_irq_tx(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rspi_data*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.rspi_data*
  store %struct.rspi_data* %9, %struct.rspi_data** %6, align 8
  %10 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %11 = load i32, i32* @RSPI_SPSR, align 4
  %12 = call i32 @rspi_read8(%struct.rspi_data* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %14 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @SPSR_SPTEF, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %21 = load i32, i32* @SPCR_SPTIE, align 4
  %22 = call i32 @rspi_disable_irq(%struct.rspi_data* %20, i32 %21)
  %23 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %24 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %23, i32 0, i32 1
  %25 = call i32 @wake_up(i32* %24)
  %26 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %26, i32* %3, align 4
  br label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %19
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @rspi_read8(%struct.rspi_data*, i32) #1

declare dso_local i32 @rspi_disable_irq(%struct.rspi_data*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
