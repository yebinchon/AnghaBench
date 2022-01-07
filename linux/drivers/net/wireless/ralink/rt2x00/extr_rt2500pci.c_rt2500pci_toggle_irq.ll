; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500pci.c_rt2500pci_toggle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500pci.c_rt2500pci_toggle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32, i32, i32 }

@STATE_RADIO_IRQ_OFF = common dso_local global i32 0, align 4
@STATE_RADIO_IRQ_ON = common dso_local global i32 0, align 4
@CSR7 = common dso_local global i32 0, align 4
@CSR8 = common dso_local global i32 0, align 4
@CSR8_TBCN_EXPIRE = common dso_local global i32 0, align 4
@CSR8_TXDONE_TXRING = common dso_local global i32 0, align 4
@CSR8_TXDONE_ATIMRING = common dso_local global i32 0, align 4
@CSR8_TXDONE_PRIORING = common dso_local global i32 0, align 4
@CSR8_RXDONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, i32)* @rt2500pci_toggle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2500pci_toggle_irq(%struct.rt2x00_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @STATE_RADIO_IRQ_OFF, align 4
  %10 = icmp eq i32 %8, %9
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @STATE_RADIO_IRQ_ON, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %17 = load i32, i32* @CSR7, align 4
  %18 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %20 = load i32, i32* @CSR7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %19, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %15, %2
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %25 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %24, i32 0, i32 3
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %29 = load i32, i32* @CSR8, align 4
  %30 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @CSR8_TBCN_EXPIRE, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @rt2x00_set_field32(i32* %6, i32 %31, i32 %32)
  %34 = load i32, i32* @CSR8_TXDONE_TXRING, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @rt2x00_set_field32(i32* %6, i32 %34, i32 %35)
  %37 = load i32, i32* @CSR8_TXDONE_ATIMRING, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @rt2x00_set_field32(i32* %6, i32 %37, i32 %38)
  %40 = load i32, i32* @CSR8_TXDONE_PRIORING, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @rt2x00_set_field32(i32* %6, i32 %40, i32 %41)
  %43 = load i32, i32* @CSR8_RXDONE, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @rt2x00_set_field32(i32* %6, i32 %43, i32 %44)
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %47 = load i32, i32* @CSR8, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %46, i32 %47, i32 %48)
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %51 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %50, i32 0, i32 3
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @STATE_RADIO_IRQ_OFF, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %23
  %58 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %59 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %58, i32 0, i32 2
  %60 = call i32 @tasklet_kill(i32* %59)
  %61 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %62 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %61, i32 0, i32 1
  %63 = call i32 @tasklet_kill(i32* %62)
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %65 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %64, i32 0, i32 0
  %66 = call i32 @tasklet_kill(i32* %65)
  br label %67

67:                                               ; preds = %57, %23
  ret void
}

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tasklet_kill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
