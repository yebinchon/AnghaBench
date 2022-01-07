; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800mmio.c_rt2800mmio_toggle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800mmio.c_rt2800mmio_toggle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32, i32, i32, i32, i32 }

@STATE_RADIO_IRQ_ON = common dso_local global i32 0, align 4
@INT_SOURCE_CSR = common dso_local global i32 0, align 4
@INT_MASK_CSR_RX_DONE = common dso_local global i32 0, align 4
@INT_MASK_CSR_TBTT = common dso_local global i32 0, align 4
@INT_MASK_CSR_PRE_TBTT = common dso_local global i32 0, align 4
@INT_MASK_CSR_TX_FIFO_STATUS = common dso_local global i32 0, align 4
@INT_MASK_CSR_AUTO_WAKEUP = common dso_local global i32 0, align 4
@INT_MASK_CSR = common dso_local global i32 0, align 4
@STATE_RADIO_IRQ_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2800mmio_toggle_irq(%struct.rt2x00_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @STATE_RADIO_IRQ_ON, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %12 = load i32, i32* @INT_SOURCE_CSR, align 4
  %13 = call i64 @rt2x00mmio_register_read(%struct.rt2x00_dev* %11, i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %15 = load i32, i32* @INT_SOURCE_CSR, align 4
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %14, i32 %15, i64 %16)
  br label %18

18:                                               ; preds = %10, %2
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %20 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %19, i32 0, i32 5
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  store i64 0, i64* %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @STATE_RADIO_IRQ_ON, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %18
  %27 = load i32, i32* @INT_MASK_CSR_RX_DONE, align 4
  %28 = call i32 @rt2x00_set_field32(i64* %5, i32 %27, i32 1)
  %29 = load i32, i32* @INT_MASK_CSR_TBTT, align 4
  %30 = call i32 @rt2x00_set_field32(i64* %5, i32 %29, i32 1)
  %31 = load i32, i32* @INT_MASK_CSR_PRE_TBTT, align 4
  %32 = call i32 @rt2x00_set_field32(i64* %5, i32 %31, i32 1)
  %33 = load i32, i32* @INT_MASK_CSR_TX_FIFO_STATUS, align 4
  %34 = call i32 @rt2x00_set_field32(i64* %5, i32 %33, i32 1)
  %35 = load i32, i32* @INT_MASK_CSR_AUTO_WAKEUP, align 4
  %36 = call i32 @rt2x00_set_field32(i64* %5, i32 %35, i32 1)
  br label %37

37:                                               ; preds = %26, %18
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %39 = load i32, i32* @INT_MASK_CSR, align 4
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %38, i32 %39, i64 %40)
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %43 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %42, i32 0, i32 5
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @STATE_RADIO_IRQ_OFF, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %37
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %51 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %50, i32 0, i32 4
  %52 = call i32 @tasklet_kill(i32* %51)
  %53 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %54 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %53, i32 0, i32 3
  %55 = call i32 @tasklet_kill(i32* %54)
  %56 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %57 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %56, i32 0, i32 2
  %58 = call i32 @tasklet_kill(i32* %57)
  %59 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %60 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %59, i32 0, i32 1
  %61 = call i32 @tasklet_kill(i32* %60)
  %62 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %63 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %62, i32 0, i32 0
  %64 = call i32 @tasklet_kill(i32* %63)
  br label %65

65:                                               ; preds = %49, %37
  ret void
}

declare dso_local i64 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rt2x00_set_field32(i64*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tasklet_kill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
