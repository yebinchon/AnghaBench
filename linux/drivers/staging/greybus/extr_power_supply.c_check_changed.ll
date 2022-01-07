; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c_check_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c_check_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_power_supply_changes = type { i64, i32, i32 (%struct.gb_power_supply.0*, %struct.gb_power_supply_prop*)* }
%struct.gb_power_supply.0 = type opaque
%struct.gb_power_supply_prop = type { i32, i32, i64 }
%struct.gb_power_supply = type { i32 }

@psy_props_changes = common dso_local global %struct.gb_power_supply_changes* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_power_supply*, %struct.gb_power_supply_prop*)* @check_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_changed(%struct.gb_power_supply* %0, %struct.gb_power_supply_prop* %1) #0 {
  %3 = alloca %struct.gb_power_supply*, align 8
  %4 = alloca %struct.gb_power_supply_prop*, align 8
  %5 = alloca %struct.gb_power_supply_changes*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gb_power_supply* %0, %struct.gb_power_supply** %3, align 8
  store %struct.gb_power_supply_prop* %1, %struct.gb_power_supply_prop** %4, align 8
  %10 = load %struct.gb_power_supply_prop*, %struct.gb_power_supply_prop** %4, align 8
  %11 = getelementptr inbounds %struct.gb_power_supply_prop, %struct.gb_power_supply_prop* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.gb_power_supply_prop*, %struct.gb_power_supply_prop** %4, align 8
  %14 = getelementptr inbounds %struct.gb_power_supply_prop, %struct.gb_power_supply_prop* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %91, %2
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.gb_power_supply_changes*, %struct.gb_power_supply_changes** @psy_props_changes, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.gb_power_supply_changes* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %94

21:                                               ; preds = %16
  %22 = load %struct.gb_power_supply_changes*, %struct.gb_power_supply_changes** @psy_props_changes, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.gb_power_supply_changes, %struct.gb_power_supply_changes* %22, i64 %24
  store %struct.gb_power_supply_changes* %25, %struct.gb_power_supply_changes** %5, align 8
  %26 = load %struct.gb_power_supply_prop*, %struct.gb_power_supply_prop** %4, align 8
  %27 = getelementptr inbounds %struct.gb_power_supply_prop, %struct.gb_power_supply_prop* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.gb_power_supply_changes*, %struct.gb_power_supply_changes** %5, align 8
  %30 = getelementptr inbounds %struct.gb_power_supply_changes, %struct.gb_power_supply_changes* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %90

33:                                               ; preds = %21
  %34 = load %struct.gb_power_supply_changes*, %struct.gb_power_supply_changes** %5, align 8
  %35 = getelementptr inbounds %struct.gb_power_supply_changes, %struct.gb_power_supply_changes* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i32 1, i32* %8, align 4
  br label %67

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 %44, %45
  %47 = load %struct.gb_power_supply_changes*, %struct.gb_power_supply_changes** %5, align 8
  %48 = getelementptr inbounds %struct.gb_power_supply_changes, %struct.gb_power_supply_changes* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 1, i32* %8, align 4
  br label %66

52:                                               ; preds = %43, %39
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 %57, %58
  %60 = load %struct.gb_power_supply_changes*, %struct.gb_power_supply_changes** %5, align 8
  %61 = getelementptr inbounds %struct.gb_power_supply_changes, %struct.gb_power_supply_changes* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp sgt i32 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 1, i32* %8, align 4
  br label %65

65:                                               ; preds = %64, %56, %52
  br label %66

66:                                               ; preds = %65, %51
  br label %67

67:                                               ; preds = %66, %38
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load %struct.gb_power_supply_changes*, %struct.gb_power_supply_changes** %5, align 8
  %72 = getelementptr inbounds %struct.gb_power_supply_changes, %struct.gb_power_supply_changes* %71, i32 0, i32 2
  %73 = load i32 (%struct.gb_power_supply.0*, %struct.gb_power_supply_prop*)*, i32 (%struct.gb_power_supply.0*, %struct.gb_power_supply_prop*)** %72, align 8
  %74 = icmp ne i32 (%struct.gb_power_supply.0*, %struct.gb_power_supply_prop*)* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.gb_power_supply_changes*, %struct.gb_power_supply_changes** %5, align 8
  %77 = getelementptr inbounds %struct.gb_power_supply_changes, %struct.gb_power_supply_changes* %76, i32 0, i32 2
  %78 = load i32 (%struct.gb_power_supply.0*, %struct.gb_power_supply_prop*)*, i32 (%struct.gb_power_supply.0*, %struct.gb_power_supply_prop*)** %77, align 8
  %79 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %80 = bitcast %struct.gb_power_supply* %79 to %struct.gb_power_supply.0*
  %81 = load %struct.gb_power_supply_prop*, %struct.gb_power_supply_prop** %4, align 8
  %82 = call i32 %78(%struct.gb_power_supply.0* %80, %struct.gb_power_supply_prop* %81)
  br label %83

83:                                               ; preds = %75, %70, %67
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %88 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %87, i32 0, i32 0
  store i32 1, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %83
  br label %94

90:                                               ; preds = %21
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %16

94:                                               ; preds = %89, %16
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.gb_power_supply_changes*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
