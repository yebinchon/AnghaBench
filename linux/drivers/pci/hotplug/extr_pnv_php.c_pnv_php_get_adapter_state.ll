; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pnv_php.c_pnv_php_get_adapter_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pnv_php.c_pnv_php_get_adapter_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hotplug_slot = type { i32 }
%struct.pnv_php_slot = type { i32, i32 }

@OPAL_PCI_SLOT_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Error %d getting presence\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hotplug_slot*, i32*)* @pnv_php_get_adapter_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnv_php_get_adapter_state(%struct.hotplug_slot* %0, i32* %1) #0 {
  %3 = alloca %struct.hotplug_slot*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pnv_php_slot*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hotplug_slot* %0, %struct.hotplug_slot** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.hotplug_slot*, %struct.hotplug_slot** %3, align 8
  %9 = call %struct.pnv_php_slot* @to_pnv_php_slot(%struct.hotplug_slot* %8)
  store %struct.pnv_php_slot* %9, %struct.pnv_php_slot** %5, align 8
  %10 = load i32, i32* @OPAL_PCI_SLOT_EMPTY, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %5, align 8
  %12 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pnv_pci_get_presence_state(i32 %13, i32* %6)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32*, i32** %4, align 8
  store i32 %18, i32* %19, align 4
  store i32 0, i32* %7, align 4
  br label %26

20:                                               ; preds = %2
  %21 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %5, align 8
  %22 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @pci_warn(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %20, %17
  %27 = load i32, i32* %7, align 4
  ret i32 %27
}

declare dso_local %struct.pnv_php_slot* @to_pnv_php_slot(%struct.hotplug_slot*) #1

declare dso_local i32 @pnv_pci_get_presence_state(i32, i32*) #1

declare dso_local i32 @pci_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
