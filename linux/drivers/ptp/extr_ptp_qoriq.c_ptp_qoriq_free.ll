; ModuleID = '/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_qoriq.c_ptp_qoriq_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_qoriq.c_ptp_qoriq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptp_qoriq = type { i32, i32, i32, i32 (i32*, i32)*, %struct.ptp_qoriq_registers }
%struct.ptp_qoriq_registers = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ptp_qoriq_free(%struct.ptp_qoriq* %0) #0 {
  %2 = alloca %struct.ptp_qoriq*, align 8
  %3 = alloca %struct.ptp_qoriq_registers*, align 8
  store %struct.ptp_qoriq* %0, %struct.ptp_qoriq** %2, align 8
  %4 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %2, align 8
  %5 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %4, i32 0, i32 4
  store %struct.ptp_qoriq_registers* %5, %struct.ptp_qoriq_registers** %3, align 8
  %6 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %2, align 8
  %7 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %6, i32 0, i32 3
  %8 = load i32 (i32*, i32)*, i32 (i32*, i32)** %7, align 8
  %9 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %3, align 8
  %10 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = call i32 %8(i32* %12, i32 0)
  %14 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %2, align 8
  %15 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %14, i32 0, i32 3
  %16 = load i32 (i32*, i32)*, i32 (i32*, i32)** %15, align 8
  %17 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %3, align 8
  %18 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 %16(i32* %20, i32 0)
  %22 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %2, align 8
  %23 = call i32 @ptp_qoriq_remove_debugfs(%struct.ptp_qoriq* %22)
  %24 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %2, align 8
  %25 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ptp_clock_unregister(i32 %26)
  %28 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %2, align 8
  %29 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @iounmap(i32 %30)
  %32 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %2, align 8
  %33 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %2, align 8
  %36 = call i32 @free_irq(i32 %34, %struct.ptp_qoriq* %35)
  ret void
}

declare dso_local i32 @ptp_qoriq_remove_debugfs(%struct.ptp_qoriq*) #1

declare dso_local i32 @ptp_clock_unregister(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @free_irq(i32, %struct.ptp_qoriq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
