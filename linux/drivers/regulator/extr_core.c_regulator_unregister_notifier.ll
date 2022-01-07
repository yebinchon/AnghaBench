; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_unregister_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_unregister_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.notifier_block = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulator_unregister_notifier(%struct.regulator* %0, %struct.notifier_block* %1) #0 {
  %3 = alloca %struct.regulator*, align 8
  %4 = alloca %struct.notifier_block*, align 8
  store %struct.regulator* %0, %struct.regulator** %3, align 8
  store %struct.notifier_block* %1, %struct.notifier_block** %4, align 8
  %5 = load %struct.regulator*, %struct.regulator** %3, align 8
  %6 = getelementptr inbounds %struct.regulator, %struct.regulator* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.notifier_block*, %struct.notifier_block** %4, align 8
  %10 = call i32 @blocking_notifier_chain_unregister(i32* %8, %struct.notifier_block* %9)
  ret i32 %10
}

declare dso_local i32 @blocking_notifier_chain_unregister(i32*, %struct.notifier_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
