; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_register_supply_alias.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_register_supply_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regulator_supply_alias = type { i8*, i8*, i32, %struct.device*, %struct.device* }

@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@regulator_supply_alias_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Adding alias for supply %s,%s -> %s,%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulator_register_supply_alias(%struct.device* %0, i8* %1, %struct.device* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.regulator_supply_alias*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.device* %2, %struct.device** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call %struct.regulator_supply_alias* @regulator_find_supply_alias(%struct.device* %11, i8* %12)
  store %struct.regulator_supply_alias* %13, %struct.regulator_supply_alias** %10, align 8
  %14 = load %struct.regulator_supply_alias*, %struct.regulator_supply_alias** %10, align 8
  %15 = icmp ne %struct.regulator_supply_alias* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EEXIST, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %50

19:                                               ; preds = %4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.regulator_supply_alias* @kzalloc(i32 40, i32 %20)
  store %struct.regulator_supply_alias* %21, %struct.regulator_supply_alias** %10, align 8
  %22 = load %struct.regulator_supply_alias*, %struct.regulator_supply_alias** %10, align 8
  %23 = icmp ne %struct.regulator_supply_alias* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %50

27:                                               ; preds = %19
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = load %struct.regulator_supply_alias*, %struct.regulator_supply_alias** %10, align 8
  %30 = getelementptr inbounds %struct.regulator_supply_alias, %struct.regulator_supply_alias* %29, i32 0, i32 4
  store %struct.device* %28, %struct.device** %30, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.regulator_supply_alias*, %struct.regulator_supply_alias** %10, align 8
  %33 = getelementptr inbounds %struct.regulator_supply_alias, %struct.regulator_supply_alias* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.device*, %struct.device** %8, align 8
  %35 = load %struct.regulator_supply_alias*, %struct.regulator_supply_alias** %10, align 8
  %36 = getelementptr inbounds %struct.regulator_supply_alias, %struct.regulator_supply_alias* %35, i32 0, i32 3
  store %struct.device* %34, %struct.device** %36, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load %struct.regulator_supply_alias*, %struct.regulator_supply_alias** %10, align 8
  %39 = getelementptr inbounds %struct.regulator_supply_alias, %struct.regulator_supply_alias* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load %struct.regulator_supply_alias*, %struct.regulator_supply_alias** %10, align 8
  %41 = getelementptr inbounds %struct.regulator_supply_alias, %struct.regulator_supply_alias* %40, i32 0, i32 2
  %42 = call i32 @list_add(i32* %41, i32* @regulator_supply_alias_list)
  %43 = load i8*, i8** %7, align 8
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = call i32 @dev_name(%struct.device* %44)
  %46 = load i8*, i8** %9, align 8
  %47 = load %struct.device*, %struct.device** %8, align 8
  %48 = call i32 @dev_name(%struct.device* %47)
  %49 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %43, i32 %45, i8* %46, i32 %48)
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %27, %24, %16
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.regulator_supply_alias* @regulator_find_supply_alias(%struct.device*, i8*) #1

declare dso_local %struct.regulator_supply_alias* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @pr_info(i8*, i8*, i32, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
