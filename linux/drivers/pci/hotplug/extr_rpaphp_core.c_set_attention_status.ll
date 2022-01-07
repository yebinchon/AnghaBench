; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_rpaphp_core.c_set_attention_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_rpaphp_core.c_set_attention_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hotplug_slot = type { i32 }
%struct.slot = type { i32, i32 }

@DR_INDICATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hotplug_slot*, i32)* @set_attention_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_attention_status(%struct.hotplug_slot* %0, i32 %1) #0 {
  %3 = alloca %struct.hotplug_slot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.slot*, align 8
  store %struct.hotplug_slot* %0, %struct.hotplug_slot** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hotplug_slot*, %struct.hotplug_slot** %3, align 8
  %8 = call %struct.slot* @to_slot(%struct.hotplug_slot* %7)
  store %struct.slot* %8, %struct.slot** %6, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %11 [
    i32 0, label %10
    i32 1, label %10
    i32 2, label %10
  ]

10:                                               ; preds = %2, %2, %2
  br label %12

11:                                               ; preds = %2
  store i32 1, i32* %4, align 4
  br label %12

12:                                               ; preds = %11, %10
  %13 = load i32, i32* @DR_INDICATOR, align 4
  %14 = load %struct.slot*, %struct.slot** %6, align 8
  %15 = getelementptr inbounds %struct.slot, %struct.slot* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @rtas_set_indicator(i32 %13, i32 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.slot*, %struct.slot** %6, align 8
  %24 = getelementptr inbounds %struct.slot, %struct.slot* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %21, %12
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local %struct.slot* @to_slot(%struct.hotplug_slot*) #1

declare dso_local i32 @rtas_set_indicator(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
