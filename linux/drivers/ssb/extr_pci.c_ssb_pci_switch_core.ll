; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_pci.c_ssb_pci_switch_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_pci.c_ssb_pci_switch_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i32, %struct.ssb_device* }
%struct.ssb_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_pci_switch_core(%struct.ssb_bus* %0, %struct.ssb_device* %1) #0 {
  %3 = alloca %struct.ssb_bus*, align 8
  %4 = alloca %struct.ssb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ssb_bus* %0, %struct.ssb_bus** %3, align 8
  store %struct.ssb_device* %1, %struct.ssb_device** %4, align 8
  %7 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %8 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %7, i32 0, i32 0
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %12 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %13 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ssb_pci_switch_coreidx(%struct.ssb_bus* %11, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %20 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %21 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %20, i32 0, i32 1
  store %struct.ssb_device* %19, %struct.ssb_device** %21, align 8
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %24 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %23, i32 0, i32 0
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ssb_pci_switch_coreidx(%struct.ssb_bus*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
