; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max77686.c_max77686_rtc_init_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max77686.c_max77686_rtc_init_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77686_rtc_info = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }

@BCD_EN_SHIFT = common dso_local global i32 0, align 4
@MODEL24_SHIFT = common dso_local global i32 0, align 4
@REG_RTC_CONTROLM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Fail to write controlm reg(%d)\0A\00", align 1
@MAX77686_RTC_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77686_rtc_info*)* @max77686_rtc_init_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77686_rtc_init_reg(%struct.max77686_rtc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max77686_rtc_info*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  store %struct.max77686_rtc_info* %0, %struct.max77686_rtc_info** %3, align 8
  %6 = load i32, i32* @BCD_EN_SHIFT, align 4
  %7 = shl i32 1, %6
  %8 = load i32, i32* @MODEL24_SHIFT, align 4
  %9 = shl i32 1, %8
  %10 = or i32 %7, %9
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @BCD_EN_SHIFT, align 4
  %13 = shl i32 0, %12
  %14 = load i32, i32* @MODEL24_SHIFT, align 4
  %15 = shl i32 1, %14
  %16 = or i32 %13, %15
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %16, i32* %17, align 4
  %18 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %19 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %21 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %24 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @REG_RTC_CONTROLM, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %33 = call i32 @ARRAY_SIZE(i32* %32)
  %34 = call i32 @regmap_bulk_write(i32 %22, i32 %30, i32* %31, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %1
  %38 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %39 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %49

44:                                               ; preds = %1
  %45 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %46 = load i32, i32* @MAX77686_RTC_WRITE, align 4
  %47 = call i32 @max77686_rtc_update(%struct.max77686_rtc_info* %45, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %44, %37
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @max77686_rtc_update(%struct.max77686_rtc_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
