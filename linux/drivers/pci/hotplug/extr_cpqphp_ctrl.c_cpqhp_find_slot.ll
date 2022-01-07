; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpqphp_ctrl.c_cpqhp_find_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpqphp_ctrl.c_cpqhp_find_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot = type { i64, %struct.slot* }
%struct.controller = type { %struct.slot* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.slot* (%struct.controller*, i64)* @cpqhp_find_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.slot* @cpqhp_find_slot(%struct.controller* %0, i64 %1) #0 {
  %3 = alloca %struct.controller*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.slot*, align 8
  store %struct.controller* %0, %struct.controller** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.controller*, %struct.controller** %3, align 8
  %7 = getelementptr inbounds %struct.controller, %struct.controller* %6, i32 0, i32 0
  %8 = load %struct.slot*, %struct.slot** %7, align 8
  store %struct.slot* %8, %struct.slot** %5, align 8
  br label %9

9:                                                ; preds = %20, %2
  %10 = load %struct.slot*, %struct.slot** %5, align 8
  %11 = icmp ne %struct.slot* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load %struct.slot*, %struct.slot** %5, align 8
  %14 = getelementptr inbounds %struct.slot, %struct.slot* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %15, %16
  br label %18

18:                                               ; preds = %12, %9
  %19 = phi i1 [ false, %9 ], [ %17, %12 ]
  br i1 %19, label %20, label %24

20:                                               ; preds = %18
  %21 = load %struct.slot*, %struct.slot** %5, align 8
  %22 = getelementptr inbounds %struct.slot, %struct.slot* %21, i32 0, i32 1
  %23 = load %struct.slot*, %struct.slot** %22, align 8
  store %struct.slot* %23, %struct.slot** %5, align 8
  br label %9

24:                                               ; preds = %18
  %25 = load %struct.slot*, %struct.slot** %5, align 8
  ret %struct.slot* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
