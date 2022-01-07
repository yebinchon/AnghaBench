; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_slot.c_pci_slot_attr_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_slot.c_pci_slot_attr_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.pci_slot = type { i32 }
%struct.pci_slot_attribute = type { i32 (%struct.pci_slot.0*, i8*, i64)* }
%struct.pci_slot.0 = type opaque

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i8*, i64)* @pci_slot_attr_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_slot_attr_store(%struct.kobject* %0, %struct.attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pci_slot*, align 8
  %10 = alloca %struct.pci_slot_attribute*, align 8
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.attribute* %1, %struct.attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.kobject*, %struct.kobject** %5, align 8
  %12 = call %struct.pci_slot* @to_pci_slot(%struct.kobject* %11)
  store %struct.pci_slot* %12, %struct.pci_slot** %9, align 8
  %13 = load %struct.attribute*, %struct.attribute** %6, align 8
  %14 = call %struct.pci_slot_attribute* @to_pci_slot_attr(%struct.attribute* %13)
  store %struct.pci_slot_attribute* %14, %struct.pci_slot_attribute** %10, align 8
  %15 = load %struct.pci_slot_attribute*, %struct.pci_slot_attribute** %10, align 8
  %16 = getelementptr inbounds %struct.pci_slot_attribute, %struct.pci_slot_attribute* %15, i32 0, i32 0
  %17 = load i32 (%struct.pci_slot.0*, i8*, i64)*, i32 (%struct.pci_slot.0*, i8*, i64)** %16, align 8
  %18 = icmp ne i32 (%struct.pci_slot.0*, i8*, i64)* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %4
  %20 = load %struct.pci_slot_attribute*, %struct.pci_slot_attribute** %10, align 8
  %21 = getelementptr inbounds %struct.pci_slot_attribute, %struct.pci_slot_attribute* %20, i32 0, i32 0
  %22 = load i32 (%struct.pci_slot.0*, i8*, i64)*, i32 (%struct.pci_slot.0*, i8*, i64)** %21, align 8
  %23 = load %struct.pci_slot*, %struct.pci_slot** %9, align 8
  %24 = bitcast %struct.pci_slot* %23 to %struct.pci_slot.0*
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 %22(%struct.pci_slot.0* %24, i8* %25, i64 %26)
  br label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  br label %31

31:                                               ; preds = %28, %19
  %32 = phi i32 [ %27, %19 ], [ %30, %28 ]
  ret i32 %32
}

declare dso_local %struct.pci_slot* @to_pci_slot(%struct.kobject*) #1

declare dso_local %struct.pci_slot_attribute* @to_pci_slot_attr(%struct.attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
