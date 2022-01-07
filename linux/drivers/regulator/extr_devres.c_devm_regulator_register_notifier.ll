; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_devres.c_devm_regulator_register_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_devres.c_devm_regulator_register_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator = type { i32 }
%struct.notifier_block = type { i32 }
%struct.regulator_notifier_match = type { %struct.notifier_block*, %struct.regulator* }

@devm_regulator_destroy_notifier = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devm_regulator_register_notifier(%struct.regulator* %0, %struct.notifier_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator*, align 8
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca %struct.regulator_notifier_match*, align 8
  %7 = alloca i32, align 4
  store %struct.regulator* %0, %struct.regulator** %4, align 8
  store %struct.notifier_block* %1, %struct.notifier_block** %5, align 8
  %8 = load i32, i32* @devm_regulator_destroy_notifier, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.regulator_notifier_match* @devres_alloc(i32 %8, i32 16, i32 %9)
  store %struct.regulator_notifier_match* %10, %struct.regulator_notifier_match** %6, align 8
  %11 = load %struct.regulator_notifier_match*, %struct.regulator_notifier_match** %6, align 8
  %12 = icmp ne %struct.regulator_notifier_match* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %38

16:                                               ; preds = %2
  %17 = load %struct.regulator*, %struct.regulator** %4, align 8
  %18 = load %struct.regulator_notifier_match*, %struct.regulator_notifier_match** %6, align 8
  %19 = getelementptr inbounds %struct.regulator_notifier_match, %struct.regulator_notifier_match* %18, i32 0, i32 1
  store %struct.regulator* %17, %struct.regulator** %19, align 8
  %20 = load %struct.notifier_block*, %struct.notifier_block** %5, align 8
  %21 = load %struct.regulator_notifier_match*, %struct.regulator_notifier_match** %6, align 8
  %22 = getelementptr inbounds %struct.regulator_notifier_match, %struct.regulator_notifier_match* %21, i32 0, i32 0
  store %struct.notifier_block* %20, %struct.notifier_block** %22, align 8
  %23 = load %struct.regulator*, %struct.regulator** %4, align 8
  %24 = load %struct.notifier_block*, %struct.notifier_block** %5, align 8
  %25 = call i32 @regulator_register_notifier(%struct.regulator* %23, %struct.notifier_block* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %16
  %29 = load %struct.regulator_notifier_match*, %struct.regulator_notifier_match** %6, align 8
  %30 = call i32 @devres_free(%struct.regulator_notifier_match* %29)
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %38

32:                                               ; preds = %16
  %33 = load %struct.regulator*, %struct.regulator** %4, align 8
  %34 = getelementptr inbounds %struct.regulator, %struct.regulator* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.regulator_notifier_match*, %struct.regulator_notifier_match** %6, align 8
  %37 = call i32 @devres_add(i32 %35, %struct.regulator_notifier_match* %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %32, %28, %13
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.regulator_notifier_match* @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @regulator_register_notifier(%struct.regulator*, %struct.notifier_block*) #1

declare dso_local i32 @devres_free(%struct.regulator_notifier_match*) #1

declare dso_local i32 @devres_add(i32, %struct.regulator_notifier_match*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
