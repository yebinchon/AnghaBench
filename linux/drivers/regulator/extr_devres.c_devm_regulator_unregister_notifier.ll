; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_devres.c_devm_regulator_unregister_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_devres.c_devm_regulator_unregister_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator = type { i32 }
%struct.notifier_block = type { i32 }
%struct.regulator_notifier_match = type { %struct.notifier_block*, %struct.regulator* }

@devm_regulator_destroy_notifier = common dso_local global i32 0, align 4
@devm_regulator_match_notifier = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devm_regulator_unregister_notifier(%struct.regulator* %0, %struct.notifier_block* %1) #0 {
  %3 = alloca %struct.regulator*, align 8
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca %struct.regulator_notifier_match, align 8
  %6 = alloca i32, align 4
  store %struct.regulator* %0, %struct.regulator** %3, align 8
  store %struct.notifier_block* %1, %struct.notifier_block** %4, align 8
  %7 = load %struct.regulator*, %struct.regulator** %3, align 8
  %8 = getelementptr inbounds %struct.regulator_notifier_match, %struct.regulator_notifier_match* %5, i32 0, i32 1
  store %struct.regulator* %7, %struct.regulator** %8, align 8
  %9 = load %struct.notifier_block*, %struct.notifier_block** %4, align 8
  %10 = getelementptr inbounds %struct.regulator_notifier_match, %struct.regulator_notifier_match* %5, i32 0, i32 0
  store %struct.notifier_block* %9, %struct.notifier_block** %10, align 8
  %11 = load %struct.regulator*, %struct.regulator** %3, align 8
  %12 = getelementptr inbounds %struct.regulator, %struct.regulator* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @devm_regulator_destroy_notifier, align 4
  %15 = load i32, i32* @devm_regulator_match_notifier, align 4
  %16 = call i32 @devres_release(i32 %13, i32 %14, i32 %15, %struct.regulator_notifier_match* %5)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @WARN_ON(i32 %20)
  br label %22

22:                                               ; preds = %19, %2
  ret void
}

declare dso_local i32 @devres_release(i32, i32, i32, %struct.regulator_notifier_match*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
