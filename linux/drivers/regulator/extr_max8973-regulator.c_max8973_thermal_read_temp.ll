; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8973-regulator.c_max8973_thermal_read_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8973-regulator.c_max8973_thermal_read_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8973_chip = type { i32, i32, i32 }

@MAX8973_CHIPID1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to read register CHIPID1, %d\00", align 1
@MAX77621_CHIPID_TJINT_S = common dso_local global i32 0, align 4
@MAX77621_NORMAL_OPERATING_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @max8973_thermal_read_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8973_thermal_read_temp(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.max8973_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.max8973_chip*
  store %struct.max8973_chip* %10, %struct.max8973_chip** %6, align 8
  %11 = load %struct.max8973_chip*, %struct.max8973_chip** %6, align 8
  %12 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MAX8973_CHIPID1, align 4
  %15 = call i32 @regmap_read(i32 %13, i32 %14, i32* %7)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.max8973_chip*, %struct.max8973_chip** %6, align 8
  %20 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %40

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @MAX77621_CHIPID_TJINT_S, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.max8973_chip*, %struct.max8973_chip** %6, align 8
  %32 = getelementptr inbounds %struct.max8973_chip, %struct.max8973_chip* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1000
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  br label %39

36:                                               ; preds = %25
  %37 = load i32, i32* @MAX77621_NORMAL_OPERATING_TEMP, align 4
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %30
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %18
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
