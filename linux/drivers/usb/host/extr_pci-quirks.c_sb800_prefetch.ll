; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_pci-quirks.c_sb800_prefetch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_pci-quirks.c_sb800_prefetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pci_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sb800_prefetch(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.pci_dev* @to_pci_dev(%struct.device* %7)
  store %struct.pci_dev* %8, %struct.pci_dev** %6, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %10 = call i32 @pci_read_config_word(%struct.pci_dev* %9, i32 80, i32* %5)
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 64767
  %17 = call i32 @pci_write_config_word(%struct.pci_dev* %14, i32 80, i32 %16)
  br label %23

18:                                               ; preds = %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, 768
  %22 = call i32 @pci_write_config_word(%struct.pci_dev* %19, i32 80, i32 %21)
  br label %23

23:                                               ; preds = %18, %13
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
