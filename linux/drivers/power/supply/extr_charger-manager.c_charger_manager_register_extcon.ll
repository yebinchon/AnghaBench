; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_charger_manager_register_extcon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_charger_manager_register_extcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charger_manager = type { i32, %struct.charger_desc* }
%struct.charger_desc = type { i32, %struct.charger_regulator* }
%struct.charger_regulator = type { i32, i32, %struct.charger_cable*, %struct.charger_manager*, i32 }
%struct.charger_cable = type { %struct.charger_manager*, %struct.charger_regulator* }

@.str = private unnamed_addr constant [25 x i8] c"Cannot find charger(%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Cannot initialize charger(%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.charger_manager*)* @charger_manager_register_extcon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @charger_manager_register_extcon(%struct.charger_manager* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.charger_manager*, align 8
  %4 = alloca %struct.charger_desc*, align 8
  %5 = alloca %struct.charger_regulator*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.charger_cable*, align 8
  store %struct.charger_manager* %0, %struct.charger_manager** %3, align 8
  %10 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %11 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %10, i32 0, i32 1
  %12 = load %struct.charger_desc*, %struct.charger_desc** %11, align 8
  store %struct.charger_desc* %12, %struct.charger_desc** %4, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %94, %1
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.charger_desc*, %struct.charger_desc** %4, align 8
  %16 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %97

19:                                               ; preds = %13
  %20 = load %struct.charger_desc*, %struct.charger_desc** %4, align 8
  %21 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %20, i32 0, i32 1
  %22 = load %struct.charger_regulator*, %struct.charger_regulator** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %22, i64 %24
  store %struct.charger_regulator* %25, %struct.charger_regulator** %5, align 8
  %26 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %27 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %30 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @regulator_get(i32 %28, i32 %31)
  %33 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %34 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %36 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %19
  %41 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %42 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %45 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %49 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @PTR_ERR(i32 %50)
  store i32 %51, i32* %2, align 4
  br label %98

52:                                               ; preds = %19
  %53 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %54 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %55 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %54, i32 0, i32 3
  store %struct.charger_manager* %53, %struct.charger_manager** %55, align 8
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %90, %52
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %59 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %93

62:                                               ; preds = %56
  %63 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %64 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %63, i32 0, i32 2
  %65 = load %struct.charger_cable*, %struct.charger_cable** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.charger_cable, %struct.charger_cable* %65, i64 %67
  store %struct.charger_cable* %68, %struct.charger_cable** %9, align 8
  %69 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %70 = load %struct.charger_cable*, %struct.charger_cable** %9, align 8
  %71 = call i32 @charger_extcon_init(%struct.charger_manager* %69, %struct.charger_cable* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %62
  %75 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %76 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %79 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %2, align 4
  br label %98

83:                                               ; preds = %62
  %84 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %85 = load %struct.charger_cable*, %struct.charger_cable** %9, align 8
  %86 = getelementptr inbounds %struct.charger_cable, %struct.charger_cable* %85, i32 0, i32 1
  store %struct.charger_regulator* %84, %struct.charger_regulator** %86, align 8
  %87 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %88 = load %struct.charger_cable*, %struct.charger_cable** %9, align 8
  %89 = getelementptr inbounds %struct.charger_cable, %struct.charger_cable* %88, i32 0, i32 0
  store %struct.charger_manager* %87, %struct.charger_manager** %89, align 8
  br label %90

90:                                               ; preds = %83
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %56

93:                                               ; preds = %56
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %13

97:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %74, %40
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @regulator_get(i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @charger_extcon_init(%struct.charger_manager*, %struct.charger_cable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
