; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_altmode_unregister_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_altmode_unregister_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_altmode = type { i32 }
%struct.notifier_block = type { i32 }
%struct.altmode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @typec_altmode_unregister_notifier(%struct.typec_altmode* %0, %struct.notifier_block* %1) #0 {
  %3 = alloca %struct.typec_altmode*, align 8
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca %struct.altmode*, align 8
  store %struct.typec_altmode* %0, %struct.typec_altmode** %3, align 8
  store %struct.notifier_block* %1, %struct.notifier_block** %4, align 8
  %6 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %7 = call %struct.altmode* @to_altmode(%struct.typec_altmode* %6)
  store %struct.altmode* %7, %struct.altmode** %5, align 8
  %8 = load %struct.altmode*, %struct.altmode** %5, align 8
  %9 = getelementptr inbounds %struct.altmode, %struct.altmode* %8, i32 0, i32 0
  %10 = load %struct.notifier_block*, %struct.notifier_block** %4, align 8
  %11 = call i32 @blocking_notifier_chain_unregister(i32* %9, %struct.notifier_block* %10)
  %12 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %13 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %12, i32 0, i32 0
  %14 = call i32 @put_device(i32* %13)
  ret void
}

declare dso_local %struct.altmode* @to_altmode(%struct.typec_altmode*) #1

declare dso_local i32 @blocking_notifier_chain_unregister(i32*, %struct.notifier_block*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
