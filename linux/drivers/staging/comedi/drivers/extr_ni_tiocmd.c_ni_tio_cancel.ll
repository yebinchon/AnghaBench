; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tiocmd.c_ni_tio_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tiocmd.c_ni_tio_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ni_tio_cancel(%struct.ni_gpct* %0) #0 {
  %2 = alloca %struct.ni_gpct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.ni_gpct* %0, %struct.ni_gpct** %2, align 8
  %5 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %6 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %9 = call i32 @ni_tio_arm(%struct.ni_gpct* %8, i32 0, i32 0)
  %10 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %11 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %10, i32 0, i32 1
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %15 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %20 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @mite_dma_disarm(i64 %21)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %25 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %24, i32 0, i32 1
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %29 = call i32 @ni_tio_configure_dma(%struct.ni_gpct* %28, i32 0, i32 0)
  %30 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @NITIO_INT_ENA_REG(i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @GI_GATE_INTERRUPT_ENABLE(i32 %33)
  %35 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %30, i32 %32, i32 %34, i32 0)
  ret i32 0
}

declare dso_local i32 @ni_tio_arm(%struct.ni_gpct*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mite_dma_disarm(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ni_tio_configure_dma(%struct.ni_gpct*, i32, i32) #1

declare dso_local i32 @ni_tio_set_bits(%struct.ni_gpct*, i32, i32, i32) #1

declare dso_local i32 @NITIO_INT_ENA_REG(i32) #1

declare dso_local i32 @GI_GATE_INTERRUPT_ENABLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
