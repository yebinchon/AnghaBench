; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max77650-charger.c_max77650_charger_check_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max77650-charger.c_max77650_charger_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77650_charger_data = type { i32, i32 }

@MAX77650_REG_STAT_CHG_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"unable to read the charger status: %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"undervoltage lockout detected, disabling charger\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"overvoltage lockout detected, disabling charger\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @max77650_charger_check_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77650_charger_check_status(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.max77650_charger_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.max77650_charger_data*
  store %struct.max77650_charger_data* %10, %struct.max77650_charger_data** %6, align 8
  %11 = load %struct.max77650_charger_data*, %struct.max77650_charger_data** %6, align 8
  %12 = getelementptr inbounds %struct.max77650_charger_data, %struct.max77650_charger_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MAX77650_REG_STAT_CHG_B, align 4
  %15 = call i32 @regmap_read(i32 %13, i32 %14, i32* %8)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.max77650_charger_data*, %struct.max77650_charger_data** %6, align 8
  %20 = getelementptr inbounds %struct.max77650_charger_data, %struct.max77650_charger_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 (i32, i8*, ...) @dev_err(i32 %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %24, i32* %3, align 4
  br label %48

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @MAX77650_CHGIN_DETAILS_BITS(i32 %26)
  switch i32 %27, label %45 [
    i32 128, label %28
    i32 129, label %35
    i32 130, label %42
  ]

28:                                               ; preds = %25
  %29 = load %struct.max77650_charger_data*, %struct.max77650_charger_data** %6, align 8
  %30 = getelementptr inbounds %struct.max77650_charger_data, %struct.max77650_charger_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i8*, ...) @dev_err(i32 %31, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.max77650_charger_data*, %struct.max77650_charger_data** %6, align 8
  %34 = call i32 @max77650_charger_disable(%struct.max77650_charger_data* %33)
  br label %46

35:                                               ; preds = %25
  %36 = load %struct.max77650_charger_data*, %struct.max77650_charger_data** %6, align 8
  %37 = getelementptr inbounds %struct.max77650_charger_data, %struct.max77650_charger_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @dev_err(i32 %38, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.max77650_charger_data*, %struct.max77650_charger_data** %6, align 8
  %41 = call i32 @max77650_charger_disable(%struct.max77650_charger_data* %40)
  br label %46

42:                                               ; preds = %25
  %43 = load %struct.max77650_charger_data*, %struct.max77650_charger_data** %6, align 8
  %44 = call i32 @max77650_charger_enable(%struct.max77650_charger_data* %43)
  br label %46

45:                                               ; preds = %25
  br label %46

46:                                               ; preds = %45, %42, %35, %28
  %47 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %18
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @MAX77650_CHGIN_DETAILS_BITS(i32) #1

declare dso_local i32 @max77650_charger_disable(%struct.max77650_charger_data*) #1

declare dso_local i32 @max77650_charger_enable(%struct.max77650_charger_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
