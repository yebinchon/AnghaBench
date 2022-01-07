; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_unregister_supply_alias.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_unregister_supply_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regulator_supply_alias = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @regulator_unregister_supply_alias(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.regulator_supply_alias*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct.regulator_supply_alias* @regulator_find_supply_alias(%struct.device* %6, i8* %7)
  store %struct.regulator_supply_alias* %8, %struct.regulator_supply_alias** %5, align 8
  %9 = load %struct.regulator_supply_alias*, %struct.regulator_supply_alias** %5, align 8
  %10 = icmp ne %struct.regulator_supply_alias* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.regulator_supply_alias*, %struct.regulator_supply_alias** %5, align 8
  %13 = getelementptr inbounds %struct.regulator_supply_alias, %struct.regulator_supply_alias* %12, i32 0, i32 0
  %14 = call i32 @list_del(i32* %13)
  %15 = load %struct.regulator_supply_alias*, %struct.regulator_supply_alias** %5, align 8
  %16 = call i32 @kfree(%struct.regulator_supply_alias* %15)
  br label %17

17:                                               ; preds = %11, %2
  ret void
}

declare dso_local %struct.regulator_supply_alias* @regulator_find_supply_alias(%struct.device*, i8*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.regulator_supply_alias*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
