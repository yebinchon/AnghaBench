; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dw.c_dw_spi_remove_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dw.c_dw_spi_remove_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_spi = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dw_spi*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dw_spi_remove_host(%struct.dw_spi* %0) #0 {
  %2 = alloca %struct.dw_spi*, align 8
  store %struct.dw_spi* %0, %struct.dw_spi** %2, align 8
  %3 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %4 = call i32 @dw_spi_debugfs_remove(%struct.dw_spi* %3)
  %5 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %6 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %11 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.dw_spi*)*, i32 (%struct.dw_spi*)** %13, align 8
  %15 = icmp ne i32 (%struct.dw_spi*)* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %9
  %17 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %18 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.dw_spi*)*, i32 (%struct.dw_spi*)** %20, align 8
  %22 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %23 = call i32 %21(%struct.dw_spi* %22)
  br label %24

24:                                               ; preds = %16, %9, %1
  %25 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %26 = call i32 @spi_shutdown_chip(%struct.dw_spi* %25)
  %27 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %28 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dw_spi*, %struct.dw_spi** %2, align 8
  %31 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @free_irq(i32 %29, i32 %32)
  ret void
}

declare dso_local i32 @dw_spi_debugfs_remove(%struct.dw_spi*) #1

declare dso_local i32 @spi_shutdown_chip(%struct.dw_spi*) #1

declare dso_local i32 @free_irq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
