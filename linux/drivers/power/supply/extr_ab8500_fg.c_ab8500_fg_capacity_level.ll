; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_capacity_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_capacity_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_fg = type { %struct.TYPE_7__*, %struct.TYPE_5__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_LOW = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_NORMAL = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_HIGH = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ab8500_fg*)* @ab8500_fg_capacity_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_fg_capacity_level(%struct.ab8500_fg* %0) #0 {
  %2 = alloca %struct.ab8500_fg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ab8500_fg* %0, %struct.ab8500_fg** %2, align 8
  %5 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %6 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @DIV_ROUND_CLOSEST(i32 %8, i32 10)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %12 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sle i32 %10, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %21 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19, %1
  %26 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL, align 4
  store i32 %26, i32* %3, align 4
  br label %68

27:                                               ; preds = %19
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %30 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp sle i32 %28, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_LOW, align 4
  store i32 %38, i32* %3, align 4
  br label %67

39:                                               ; preds = %27
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %42 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp sle i32 %40, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_NORMAL, align 4
  store i32 %50, i32* %3, align 4
  br label %66

51:                                               ; preds = %39
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %54 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = icmp sle i32 %52, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_HIGH, align 4
  store i32 %62, i32* %3, align 4
  br label %65

63:                                               ; preds = %51
  %64 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_FULL, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %61
  br label %66

66:                                               ; preds = %65, %49
  br label %67

67:                                               ; preds = %66, %37
  br label %68

68:                                               ; preds = %67, %25
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
