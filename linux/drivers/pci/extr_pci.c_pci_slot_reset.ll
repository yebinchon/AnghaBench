; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_slot_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_slot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_slot = type { i32 }

@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_slot*, i32)* @pci_slot_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_slot_reset(%struct.pci_slot* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_slot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_slot* %0, %struct.pci_slot** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pci_slot*, %struct.pci_slot** %4, align 8
  %8 = icmp ne %struct.pci_slot* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.pci_slot*, %struct.pci_slot** %4, align 8
  %11 = call i32 @pci_slot_resetable(%struct.pci_slot* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9, %2
  %14 = load i32, i32* @ENOTTY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %36

16:                                               ; preds = %9
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load %struct.pci_slot*, %struct.pci_slot** %4, align 8
  %21 = call i32 @pci_slot_lock(%struct.pci_slot* %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = call i32 (...) @might_sleep()
  %24 = load %struct.pci_slot*, %struct.pci_slot** %4, align 8
  %25 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @pci_reset_hotplug_slot(i32 %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = load %struct.pci_slot*, %struct.pci_slot** %4, align 8
  %33 = call i32 @pci_slot_unlock(%struct.pci_slot* %32)
  br label %34

34:                                               ; preds = %31, %22
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %13
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @pci_slot_resetable(%struct.pci_slot*) #1

declare dso_local i32 @pci_slot_lock(%struct.pci_slot*) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @pci_reset_hotplug_slot(i32, i32) #1

declare dso_local i32 @pci_slot_unlock(%struct.pci_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
