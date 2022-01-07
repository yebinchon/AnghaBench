; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da9062-regulator.c_da9062_ldo_lim_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da9062-regulator.c_da9062_ldo_lim_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9062_regulators = type { i32, %struct.da9062_regulator* }
%struct.da9062_regulator = type { i32, %struct.TYPE_4__*, %struct.da9062* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.da9062 = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@DA9062AA_STATUS_D = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Failed to read LDO overcurrent indicator\0A\00", align 1
@REGULATOR_EVENT_OVER_CURRENT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @da9062_ldo_lim_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9062_ldo_lim_event(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.da9062_regulators*, align 8
  %6 = alloca %struct.da9062*, align 8
  %7 = alloca %struct.da9062_regulator*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.da9062_regulators*
  store %struct.da9062_regulators* %13, %struct.da9062_regulators** %5, align 8
  %14 = load %struct.da9062_regulators*, %struct.da9062_regulators** %5, align 8
  %15 = getelementptr inbounds %struct.da9062_regulators, %struct.da9062_regulators* %14, i32 0, i32 1
  %16 = load %struct.da9062_regulator*, %struct.da9062_regulator** %15, align 8
  %17 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %16, i64 0
  %18 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %17, i32 0, i32 2
  %19 = load %struct.da9062*, %struct.da9062** %18, align 8
  store %struct.da9062* %19, %struct.da9062** %6, align 8
  %20 = load i32, i32* @IRQ_NONE, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.da9062*, %struct.da9062** %6, align 8
  %22 = getelementptr inbounds %struct.da9062, %struct.da9062* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* @DA9062AA_STATUS_D, align 8
  %25 = call i32 @regmap_read(i32 %23, i64 %24, i32* %9)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.da9062*, %struct.da9062** %6, align 8
  %30 = getelementptr inbounds %struct.da9062, %struct.da9062* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %88

33:                                               ; preds = %2
  %34 = load %struct.da9062_regulators*, %struct.da9062_regulators** %5, align 8
  %35 = getelementptr inbounds %struct.da9062_regulators, %struct.da9062_regulators* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %84, %33
  %39 = load i32, i32* %10, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %87

41:                                               ; preds = %38
  %42 = load %struct.da9062_regulators*, %struct.da9062_regulators** %5, align 8
  %43 = getelementptr inbounds %struct.da9062_regulators, %struct.da9062_regulators* %42, i32 0, i32 1
  %44 = load %struct.da9062_regulator*, %struct.da9062_regulator** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %44, i64 %46
  store %struct.da9062_regulator* %47, %struct.da9062_regulator** %7, align 8
  %48 = load %struct.da9062_regulator*, %struct.da9062_regulator** %7, align 8
  %49 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @DA9062AA_STATUS_D, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %41
  br label %84

57:                                               ; preds = %41
  %58 = load %struct.da9062_regulator*, %struct.da9062_regulator** %7, align 8
  %59 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @BIT(i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %57
  %69 = load %struct.da9062_regulator*, %struct.da9062_regulator** %7, align 8
  %70 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @regulator_lock(i32 %71)
  %73 = load %struct.da9062_regulator*, %struct.da9062_regulator** %7, align 8
  %74 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @REGULATOR_EVENT_OVER_CURRENT, align 4
  %77 = call i32 @regulator_notifier_call_chain(i32 %75, i32 %76, i32* null)
  %78 = load %struct.da9062_regulator*, %struct.da9062_regulator** %7, align 8
  %79 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @regulator_unlock(i32 %80)
  %82 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %68, %57
  br label %84

84:                                               ; preds = %83, %56
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %10, align 4
  br label %38

87:                                               ; preds = %38
  br label %88

88:                                               ; preds = %87, %28
  %89 = load i32, i32* %8, align 4
  ret i32 %89
}

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

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
