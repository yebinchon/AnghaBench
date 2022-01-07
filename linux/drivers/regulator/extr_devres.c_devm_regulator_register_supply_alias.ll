; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_devres.c_devm_regulator_register_supply_alias.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_devres.c_devm_regulator_register_supply_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regulator_supply_alias_match = type { i8*, %struct.device* }

@devm_regulator_destroy_supply_alias = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devm_regulator_register_supply_alias(%struct.device* %0, i8* %1, %struct.device* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.regulator_supply_alias_match*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.device* %2, %struct.device** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* @devm_regulator_destroy_supply_alias, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.regulator_supply_alias_match* @devres_alloc(i32 %12, i32 16, i32 %13)
  store %struct.regulator_supply_alias_match* %14, %struct.regulator_supply_alias_match** %10, align 8
  %15 = load %struct.regulator_supply_alias_match*, %struct.regulator_supply_alias_match** %10, align 8
  %16 = icmp ne %struct.regulator_supply_alias_match* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %42

20:                                               ; preds = %4
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load %struct.regulator_supply_alias_match*, %struct.regulator_supply_alias_match** %10, align 8
  %23 = getelementptr inbounds %struct.regulator_supply_alias_match, %struct.regulator_supply_alias_match* %22, i32 0, i32 1
  store %struct.device* %21, %struct.device** %23, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.regulator_supply_alias_match*, %struct.regulator_supply_alias_match** %10, align 8
  %26 = getelementptr inbounds %struct.regulator_supply_alias_match, %struct.regulator_supply_alias_match* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.device*, %struct.device** %8, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @regulator_register_supply_alias(%struct.device* %27, i8* %28, %struct.device* %29, i8* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %20
  %35 = load %struct.regulator_supply_alias_match*, %struct.regulator_supply_alias_match** %10, align 8
  %36 = call i32 @devres_free(%struct.regulator_supply_alias_match* %35)
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %5, align 4
  br label %42

38:                                               ; preds = %20
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = load %struct.regulator_supply_alias_match*, %struct.regulator_supply_alias_match** %10, align 8
  %41 = call i32 @devres_add(%struct.device* %39, %struct.regulator_supply_alias_match* %40)
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %38, %34, %17
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.regulator_supply_alias_match* @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @regulator_register_supply_alias(%struct.device*, i8*, %struct.device*, i8*) #1

declare dso_local i32 @devres_free(%struct.regulator_supply_alias_match*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.regulator_supply_alias_match*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
