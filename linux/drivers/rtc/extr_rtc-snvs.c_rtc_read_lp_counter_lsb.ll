; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-snvs.c_rtc_read_lp_counter_lsb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-snvs.c_rtc_read_lp_counter_lsb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snvs_rtc_data = type { %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@SNVS_LPSRTCLR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"Timeout trying to get valid LPSRT Counter read\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snvs_rtc_data*, i64*)* @rtc_read_lp_counter_lsb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc_read_lp_counter_lsb(%struct.snvs_rtc_data* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snvs_rtc_data*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.snvs_rtc_data* %0, %struct.snvs_rtc_data** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 100, i32* %8, align 4
  %9 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %4, align 8
  %10 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %4, align 8
  %13 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SNVS_LPSRTCLR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @regmap_read(i32 %11, i64 %16, i64* %6)
  br label %18

18:                                               ; preds = %37, %2
  %19 = load i64, i64* %6, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %4, align 8
  %21 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %4, align 8
  %24 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SNVS_LPSRTCLR, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @regmap_read(i32 %22, i64 %27, i64* %6)
  br label %29

29:                                               ; preds = %18
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = add i32 %34, -1
  store i32 %35, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i1 [ false, %29 ], [ %36, %33 ]
  br i1 %38, label %18, label %39

39:                                               ; preds = %37
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %4, align 8
  %44 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @ETIMEDOUT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %53

50:                                               ; preds = %39
  %51 = load i64, i64* %6, align 8
  %52 = load i64*, i64** %5, align 8
  store i64 %51, i64* %52, align 8
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %42
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @regmap_read(i32, i64, i64*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
