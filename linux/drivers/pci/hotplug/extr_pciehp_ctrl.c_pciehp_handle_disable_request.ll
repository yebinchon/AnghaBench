; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_ctrl.c_pciehp_handle_disable_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_ctrl.c_pciehp_handle_disable_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i32, i32, i32, i32 }

@POWEROFF_STATE = common dso_local global i32 0, align 4
@SAFE_REMOVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pciehp_handle_disable_request(%struct.controller* %0) #0 {
  %2 = alloca %struct.controller*, align 8
  store %struct.controller* %0, %struct.controller** %2, align 8
  %3 = load %struct.controller*, %struct.controller** %2, align 8
  %4 = getelementptr inbounds %struct.controller, %struct.controller* %3, i32 0, i32 2
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.controller*, %struct.controller** %2, align 8
  %7 = getelementptr inbounds %struct.controller, %struct.controller* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %13 [
    i32 128, label %9
    i32 129, label %9
  ]

9:                                                ; preds = %1, %1
  %10 = load %struct.controller*, %struct.controller** %2, align 8
  %11 = getelementptr inbounds %struct.controller, %struct.controller* %10, i32 0, i32 3
  %12 = call i32 @cancel_delayed_work(i32* %11)
  br label %13

13:                                               ; preds = %1, %9
  %14 = load i32, i32* @POWEROFF_STATE, align 4
  %15 = load %struct.controller*, %struct.controller** %2, align 8
  %16 = getelementptr inbounds %struct.controller, %struct.controller* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.controller*, %struct.controller** %2, align 8
  %18 = getelementptr inbounds %struct.controller, %struct.controller* %17, i32 0, i32 2
  %19 = call i32 @mutex_unlock(i32* %18)
  %20 = load %struct.controller*, %struct.controller** %2, align 8
  %21 = load i32, i32* @SAFE_REMOVAL, align 4
  %22 = call i32 @pciehp_disable_slot(%struct.controller* %20, i32 %21)
  %23 = load %struct.controller*, %struct.controller** %2, align 8
  %24 = getelementptr inbounds %struct.controller, %struct.controller* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pciehp_disable_slot(%struct.controller*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
