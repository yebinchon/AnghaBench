; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp288_fuel_gauge.c_fuel_gauge_read_12bit_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp288_fuel_gauge.c_fuel_gauge_read_12bit_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp288_fg_info = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Error reading reg 0x%02x err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axp288_fg_info*, i32)* @fuel_gauge_read_12bit_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuel_gauge_read_12bit_word(%struct.axp288_fg_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.axp288_fg_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i8], align 1
  %7 = alloca i32, align 4
  store %struct.axp288_fg_info* %0, %struct.axp288_fg_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %4, align 8
  %9 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %13 = call i32 @regmap_bulk_read(i32 %10, i32 %11, i8* %12, i32 2)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %4, align 8
  %18 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %36

25:                                               ; preds = %2
  %26 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl i32 %28, 4
  %30 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = ashr i32 %32, 4
  %34 = and i32 %33, 15
  %35 = or i32 %29, %34
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %25, %16
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @regmap_bulk_read(i32, i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
