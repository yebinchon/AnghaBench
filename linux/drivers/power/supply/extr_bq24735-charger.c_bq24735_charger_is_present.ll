; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24735-charger.c_bq24735_charger_is_present.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24735-charger.c_bq24735_charger_is_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq24735 = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@BQ24735_CHG_OPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to read charger options : %d\0A\00", align 1
@BQ24735_CHG_OPT_AC_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq24735*)* @bq24735_charger_is_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq24735_charger_is_present(%struct.bq24735* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bq24735*, align 8
  %4 = alloca i32, align 4
  store %struct.bq24735* %0, %struct.bq24735** %3, align 8
  %5 = load %struct.bq24735*, %struct.bq24735** %3, align 8
  %6 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.bq24735*, %struct.bq24735** %3, align 8
  %11 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @gpiod_get_value_cansleep(i64 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %2, align 4
  br label %39

17:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %18 = load %struct.bq24735*, %struct.bq24735** %3, align 8
  %19 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* @BQ24735_CHG_OPT, align 4
  %22 = call i32 @bq24735_read_word(%struct.TYPE_2__* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = load %struct.bq24735*, %struct.bq24735** %3, align 8
  %27 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @dev_dbg(i32* %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 0, i32* %2, align 4
  br label %39

32:                                               ; preds = %17
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @BQ24735_CHG_OPT_AC_PRESENT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %32, %25, %9
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @gpiod_get_value_cansleep(i64) #1

declare dso_local i32 @bq24735_read_word(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
