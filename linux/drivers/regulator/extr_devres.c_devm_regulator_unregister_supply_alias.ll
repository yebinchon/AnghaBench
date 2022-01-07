; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_devres.c_devm_regulator_unregister_supply_alias.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_devres.c_devm_regulator_unregister_supply_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regulator_supply_alias_match = type { i8*, %struct.device* }

@devm_regulator_destroy_supply_alias = common dso_local global i32 0, align 4
@devm_regulator_match_supply_alias = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devm_regulator_unregister_supply_alias(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.regulator_supply_alias_match, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = getelementptr inbounds %struct.regulator_supply_alias_match, %struct.regulator_supply_alias_match* %5, i32 0, i32 1
  store %struct.device* %7, %struct.device** %8, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds %struct.regulator_supply_alias_match, %struct.regulator_supply_alias_match* %5, i32 0, i32 0
  store i8* %9, i8** %10, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = load i32, i32* @devm_regulator_destroy_supply_alias, align 4
  %13 = load i32, i32* @devm_regulator_match_supply_alias, align 4
  %14 = call i32 @devres_release(%struct.device* %11, i32 %12, i32 %13, %struct.regulator_supply_alias_match* %5)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @WARN_ON(i32 %18)
  br label %20

20:                                               ; preds = %17, %2
  ret void
}

declare dso_local i32 @devres_release(%struct.device*, i32, i32, %struct.regulator_supply_alias_match*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
