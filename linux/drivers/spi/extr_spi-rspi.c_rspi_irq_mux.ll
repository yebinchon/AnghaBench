; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_rspi_irq_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_rspi_irq_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rspi_data = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@RSPI_SPSR = common dso_local global i32 0, align 4
@SPSR_SPRF = common dso_local global i32 0, align 4
@SPCR_SPRIE = common dso_local global i32 0, align 4
@SPSR_SPTEF = common dso_local global i32 0, align 4
@SPCR_SPTIE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rspi_irq_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rspi_irq_mux(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rspi_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.rspi_data*
  store %struct.rspi_data* %10, %struct.rspi_data** %5, align 8
  %11 = load i32, i32* @IRQ_NONE, align 4
  store i32 %11, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.rspi_data*, %struct.rspi_data** %5, align 8
  %13 = load i32, i32* @RSPI_SPSR, align 4
  %14 = call i32 @rspi_read8(%struct.rspi_data* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.rspi_data*, %struct.rspi_data** %5, align 8
  %16 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @SPSR_SPRF, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @SPCR_SPRIE, align 4
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %21, %2
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @SPSR_SPTEF, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @SPCR_SPTIE, align 4
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %38, i32* %7, align 4
  %39 = load %struct.rspi_data*, %struct.rspi_data** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @rspi_disable_irq(%struct.rspi_data* %39, i32 %40)
  %42 = load %struct.rspi_data*, %struct.rspi_data** %5, align 8
  %43 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %42, i32 0, i32 1
  %44 = call i32 @wake_up(i32* %43)
  br label %45

45:                                               ; preds = %37, %34
  %46 = load i32, i32* %7, align 4
  ret i32 %46
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
