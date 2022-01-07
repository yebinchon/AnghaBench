; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da9063-regulator.c_da9063_ldo_lim_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da9063-regulator.c_da9063_ldo_lim_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9063_regulators = type { i32, %struct.da9063_regulator* }
%struct.da9063_regulator = type { i32, %struct.TYPE_4__*, %struct.da9063* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.da9063 = type { i32 }

@DA9063_REG_STATUS_D = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@REGULATOR_EVENT_OVER_CURRENT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @da9063_ldo_lim_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9063_ldo_lim_event(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.da9063_regulators*, align 8
  %7 = alloca %struct.da9063*, align 8
  %8 = alloca %struct.da9063_regulator*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.da9063_regulators*
  store %struct.da9063_regulators* %13, %struct.da9063_regulators** %6, align 8
  %14 = load %struct.da9063_regulators*, %struct.da9063_regulators** %6, align 8
  %15 = getelementptr inbounds %struct.da9063_regulators, %struct.da9063_regulators* %14, i32 0, i32 1
  %16 = load %struct.da9063_regulator*, %struct.da9063_regulator** %15, align 8
  %17 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %16, i64 0
  %18 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %17, i32 0, i32 2
  %19 = load %struct.da9063*, %struct.da9063** %18, align 8
  store %struct.da9063* %19, %struct.da9063** %7, align 8
  %20 = load %struct.da9063*, %struct.da9063** %7, align 8
  %21 = getelementptr inbounds %struct.da9063, %struct.da9063* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* @DA9063_REG_STATUS_D, align 8
  %24 = call i32 @regmap_read(i32 %22, i64 %23, i32* %9)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %84

29:                                               ; preds = %2
  %30 = load %struct.da9063_regulators*, %struct.da9063_regulators** %6, align 8
  %31 = getelementptr inbounds %struct.da9063_regulators, %struct.da9063_regulators* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %79, %29
  %35 = load i32, i32* %10, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %82

37:                                               ; preds = %34
  %38 = load %struct.da9063_regulators*, %struct.da9063_regulators** %6, align 8
  %39 = getelementptr inbounds %struct.da9063_regulators, %struct.da9063_regulators* %38, i32 0, i32 1
  %40 = load %struct.da9063_regulator*, %struct.da9063_regulator** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %40, i64 %42
  store %struct.da9063_regulator* %43, %struct.da9063_regulator** %8, align 8
  %44 = load %struct.da9063_regulator*, %struct.da9063_regulator** %8, align 8
  %45 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DA9063_REG_STATUS_D, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  br label %79

53:                                               ; preds = %37
  %54 = load %struct.da9063_regulator*, %struct.da9063_regulator** %8, align 8
  %55 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @BIT(i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %53
  %65 = load %struct.da9063_regulator*, %struct.da9063_regulator** %8, align 8
  %66 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @regulator_lock(i32 %67)
  %69 = load %struct.da9063_regulator*, %struct.da9063_regulator** %8, align 8
  %70 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @REGULATOR_EVENT_OVER_CURRENT, align 4
  %73 = call i32 @regulator_notifier_call_chain(i32 %71, i32 %72, i32* null)
  %74 = load %struct.da9063_regulator*, %struct.da9063_regulator** %8, align 8
  %75 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @regulator_unlock(i32 %76)
  br label %78

78:                                               ; preds = %64, %53
  br label %79

79:                                               ; preds = %78, %52
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %10, align 4
  br label %34

82:                                               ; preds = %34
  %83 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %27
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regulator_lock(i32) #1

declare dso_local i32 @regulator_notifier_call_chain(i32, i32, i32*) #1

declare dso_local i32 @regulator_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
