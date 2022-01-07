; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_wm8400-regulator.c_wm8400_register_regulator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_wm8400-regulator.c_wm8400_register_regulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regulator_init_data = type { %struct.wm8400* }
%struct.wm8400 = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.regulator_init_data*, %struct.device* }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"wm8400-regulator\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm8400_register_regulator(%struct.device* %0, i32 %1, %struct.regulator_init_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.regulator_init_data*, align 8
  %8 = alloca %struct.wm8400*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.regulator_init_data* %2, %struct.regulator_init_data** %7, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call %struct.wm8400* @dev_get_drvdata(%struct.device* %9)
  store %struct.wm8400* %10, %struct.wm8400** %8, align 8
  %11 = load %struct.wm8400*, %struct.wm8400** %8, align 8
  %12 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %67

23:                                               ; preds = %3
  %24 = load %struct.wm8400*, %struct.wm8400** %8, align 8
  %25 = load %struct.regulator_init_data*, %struct.regulator_init_data** %7, align 8
  %26 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %25, i32 0, i32 0
  store %struct.wm8400* %24, %struct.wm8400** %26, align 8
  %27 = load %struct.wm8400*, %struct.wm8400** %8, align 8
  %28 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.wm8400*, %struct.wm8400** %8, align 8
  %36 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 %34, i32* %41, align 8
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = load %struct.wm8400*, %struct.wm8400** %8, align 8
  %44 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store %struct.device* %42, %struct.device** %50, align 8
  %51 = load %struct.regulator_init_data*, %struct.regulator_init_data** %7, align 8
  %52 = load %struct.wm8400*, %struct.wm8400** %8, align 8
  %53 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store %struct.regulator_init_data* %51, %struct.regulator_init_data** %59, align 8
  %60 = load %struct.wm8400*, %struct.wm8400** %8, align 8
  %61 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = call i32 @platform_device_register(%struct.TYPE_4__* %65)
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %23, %20
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.wm8400* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @platform_device_register(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
