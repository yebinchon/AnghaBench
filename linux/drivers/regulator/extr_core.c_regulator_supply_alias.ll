; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_supply_alias.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_supply_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regulator_supply_alias = type { i8*, %struct.device* }

@.str = private unnamed_addr constant [28 x i8] c"Mapping supply %s to %s,%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device**, i8**)* @regulator_supply_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @regulator_supply_alias(%struct.device** %0, i8** %1) #0 {
  %3 = alloca %struct.device**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.regulator_supply_alias*, align 8
  store %struct.device** %0, %struct.device*** %3, align 8
  store i8** %1, i8*** %4, align 8
  %6 = load %struct.device**, %struct.device*** %3, align 8
  %7 = load %struct.device*, %struct.device** %6, align 8
  %8 = load i8**, i8*** %4, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = call %struct.regulator_supply_alias* @regulator_find_supply_alias(%struct.device* %7, i8* %9)
  store %struct.regulator_supply_alias* %10, %struct.regulator_supply_alias** %5, align 8
  %11 = load %struct.regulator_supply_alias*, %struct.regulator_supply_alias** %5, align 8
  %12 = icmp ne %struct.regulator_supply_alias* %11, null
  br i1 %12, label %13, label %34

13:                                               ; preds = %2
  %14 = load %struct.device**, %struct.device*** %3, align 8
  %15 = load %struct.device*, %struct.device** %14, align 8
  %16 = load i8**, i8*** %4, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.regulator_supply_alias*, %struct.regulator_supply_alias** %5, align 8
  %19 = getelementptr inbounds %struct.regulator_supply_alias, %struct.regulator_supply_alias* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.regulator_supply_alias*, %struct.regulator_supply_alias** %5, align 8
  %22 = getelementptr inbounds %struct.regulator_supply_alias, %struct.regulator_supply_alias* %21, i32 0, i32 1
  %23 = load %struct.device*, %struct.device** %22, align 8
  %24 = call i32 @dev_name(%struct.device* %23)
  %25 = call i32 @dev_dbg(%struct.device* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %20, i32 %24)
  %26 = load %struct.regulator_supply_alias*, %struct.regulator_supply_alias** %5, align 8
  %27 = getelementptr inbounds %struct.regulator_supply_alias, %struct.regulator_supply_alias* %26, i32 0, i32 1
  %28 = load %struct.device*, %struct.device** %27, align 8
  %29 = load %struct.device**, %struct.device*** %3, align 8
  store %struct.device* %28, %struct.device** %29, align 8
  %30 = load %struct.regulator_supply_alias*, %struct.regulator_supply_alias** %5, align 8
  %31 = getelementptr inbounds %struct.regulator_supply_alias, %struct.regulator_supply_alias* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i8**, i8*** %4, align 8
  store i8* %32, i8** %33, align 8
  br label %34

34:                                               ; preds = %13, %2
  ret void
}

declare dso_local %struct.regulator_supply_alias* @regulator_find_supply_alias(%struct.device*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
