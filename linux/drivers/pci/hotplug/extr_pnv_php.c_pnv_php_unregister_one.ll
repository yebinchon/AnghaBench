; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pnv_php.c_pnv_php_unregister_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pnv_php.c_pnv_php_unregister_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.pnv_php_slot = type { i32, i32 }

@PNV_PHP_STATE_OFFLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_node*)* @pnv_php_unregister_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnv_php_unregister_one(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.pnv_php_slot*, align 8
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  %4 = load %struct.device_node*, %struct.device_node** %2, align 8
  %5 = call %struct.pnv_php_slot* @pnv_php_find_slot(%struct.device_node* %4)
  store %struct.pnv_php_slot* %5, %struct.pnv_php_slot** %3, align 8
  %6 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %3, align 8
  %7 = icmp ne %struct.pnv_php_slot* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %20

9:                                                ; preds = %1
  %10 = load i32, i32* @PNV_PHP_STATE_OFFLINE, align 4
  %11 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %3, align 8
  %12 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %3, align 8
  %14 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %13, i32 0, i32 0
  %15 = call i32 @pci_hp_deregister(i32* %14)
  %16 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %3, align 8
  %17 = call i32 @pnv_php_release(%struct.pnv_php_slot* %16)
  %18 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %3, align 8
  %19 = call i32 @pnv_php_put_slot(%struct.pnv_php_slot* %18)
  br label %20

20:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.pnv_php_slot* @pnv_php_find_slot(%struct.device_node*) #1

declare dso_local i32 @pci_hp_deregister(i32*) #1

declare dso_local i32 @pnv_php_release(%struct.pnv_php_slot*) #1

declare dso_local i32 @pnv_php_put_slot(%struct.pnv_php_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
