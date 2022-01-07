; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65090-regulator.c_tps65090_try_enable_fet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65090-regulator.c_tps65090_try_enable_fet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Error in updating reg %#x\0A\00", align 1
@MAX_CTRL_READ_TRIES = common dso_local global i32 0, align 4
@CTRL_TO_BIT = common dso_local global i32 0, align 4
@CTRL_PG_BIT = common dso_local global i32 0, align 4
@ENOTRECOVERABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @tps65090_try_enable_fet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65090_try_enable_fet(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %11 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %16 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %21 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @regmap_update_bits(i32 %9, i32 %14, i32 %19, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %1
  %29 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %30 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %29, i32 0, i32 2
  %31 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %32 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %79

38:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %66, %38
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @MAX_CTRL_READ_TRIES, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %39
  %44 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %45 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %48 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @regmap_read(i32 %46, i32 %51, i32* %4)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %43
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %79

57:                                               ; preds = %43
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @CTRL_TO_BIT, align 4
  %60 = call i32 @BIT(i32 %59)
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  br label %69

64:                                               ; preds = %57
  %65 = call i32 @usleep_range(i32 1000, i32 1500)
  br label %66

66:                                               ; preds = %64
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %39

69:                                               ; preds = %63, %39
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @CTRL_PG_BIT, align 4
  %72 = call i32 @BIT(i32 %71)
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* @ENOTRECOVERABLE, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %79

78:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %75, %55, %28
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
