; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8973-regulator.c_find_voltage_set_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8973-regulator.c_find_voltage_set_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8973_chip = type { i32*, i32* }

@MAX8973_MAX_VOUT_REG = common dso_local global i32 0, align 4
@MAX8973_VOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max8973_chip*, i32, i32*, i32*)* @find_voltage_set_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_voltage_set_register(%struct.max8973_chip* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.max8973_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.max8973_chip* %0, %struct.max8973_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.max8973_chip*, %struct.max8973_chip** %5, align 8
  %14 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* @MAX8973_MAX_VOUT_REG, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* @MAX8973_MAX_VOUT_REG, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %53, %4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @MAX8973_MAX_VOUT_REG, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %23
  %28 = load %struct.max8973_chip*, %struct.max8973_chip** %5, align 8
  %29 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.max8973_chip*, %struct.max8973_chip** %5, align 8
  %32 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %30, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %27
  %44 = load %struct.max8973_chip*, %struct.max8973_chip** %5, align 8
  %45 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %12, align 4
  store i32 1, i32* %10, align 4
  br label %57

52:                                               ; preds = %27
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %23

56:                                               ; preds = %23
  br label %57

57:                                               ; preds = %56, %43
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %77, %57
  %60 = load i32, i32* %9, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %59
  %63 = load %struct.max8973_chip*, %struct.max8973_chip** %5, align 8
  %64 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.max8973_chip*, %struct.max8973_chip** %5, align 8
  %72 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  br label %77

77:                                               ; preds = %62
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %9, align 4
  br label %59

80:                                               ; preds = %59
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.max8973_chip*, %struct.max8973_chip** %5, align 8
  %83 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 %81, i32* %85, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32*, i32** %8, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* @MAX8973_VOUT, align 4
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32*, i32** %7, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* %10, align 4
  ret i32 %92
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
