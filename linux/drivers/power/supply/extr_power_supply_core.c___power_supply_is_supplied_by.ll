; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_core.c___power_supply_is_supplied_by.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_core.c___power_supply_is_supplied_by.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32, i32, %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, %struct.power_supply*)* @__power_supply_is_supplied_by to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__power_supply_is_supplied_by(%struct.power_supply* %0, %struct.power_supply* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store %struct.power_supply* %1, %struct.power_supply** %5, align 8
  %7 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %8 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %7, i32 0, i32 4
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %13 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %95

17:                                               ; preds = %11, %2
  %18 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %19 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %58

22:                                               ; preds = %17
  %23 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %24 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %95

30:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %54, %30
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %34 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %31
  %38 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %39 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %44 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @strcmp(i32 %42, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %95

53:                                               ; preds = %37
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %31

57:                                               ; preds = %31
  br label %94

58:                                               ; preds = %17
  %59 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %60 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %95

66:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %90, %66
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %70 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %67
  %74 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %75 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %82 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @strcmp(i32 %80, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %73
  store i32 1, i32* %3, align 4
  br label %95

89:                                               ; preds = %73
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %67

93:                                               ; preds = %67
  br label %94

94:                                               ; preds = %93, %57
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %88, %65, %52, %29, %16
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
