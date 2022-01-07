; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_slot.c_pci_slot_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_slot.c_pci_slot_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kset = type { i32 }

@pci_bus_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"slots\00", align 1
@pci_slots_kset = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"PCI: Slot initialization failure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pci_slot_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_slot_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.kset*, align 8
  %3 = call %struct.kset* @bus_get_kset(i32* @pci_bus_type)
  store %struct.kset* %3, %struct.kset** %2, align 8
  %4 = load %struct.kset*, %struct.kset** %2, align 8
  %5 = getelementptr inbounds %struct.kset, %struct.kset* %4, i32 0, i32 0
  %6 = call i32 @kset_create_and_add(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null, i32* %5)
  store i32 %6, i32* @pci_slots_kset, align 4
  %7 = load i32, i32* @pci_slots_kset, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %0
  %10 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %1, align 4
  br label %14

13:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %13, %9
  %15 = load i32, i32* %1, align 4
  ret i32 %15
}

declare dso_local %struct.kset* @bus_get_kset(i32*) #1

declare dso_local i32 @kset_create_and_add(i8*, i32*, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
