; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-snvs.c_rtc_read_lp_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-snvs.c_rtc_read_lp_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snvs_rtc_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"Timeout trying to get valid LPSRT Counter read\0A\00", align 1
@CNTR_TO_SECS_SH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snvs_rtc_data*)* @rtc_read_lp_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc_read_lp_counter(%struct.snvs_rtc_data* %0) #0 {
  %2 = alloca %struct.snvs_rtc_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snvs_rtc_data* %0, %struct.snvs_rtc_data** %2, align 8
  store i32 100, i32* %5, align 4
  %6 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %2, align 8
  %7 = call i32 @rtc_read_lpsrt(%struct.snvs_rtc_data* %6)
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %20, %1
  %9 = load i32, i32* %3, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %2, align 8
  %11 = call i32 @rtc_read_lpsrt(%struct.snvs_rtc_data* %10)
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = add i32 %17, -1
  store i32 %18, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i1 [ false, %12 ], [ %19, %16 ]
  br i1 %21, label %8, label %22

22:                                               ; preds = %20
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %2, align 8
  %27 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %25, %22
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @CNTR_TO_SECS_SH, align 4
  %34 = ashr i32 %32, %33
  ret i32 %34
}

declare dso_local i32 @rtc_read_lpsrt(%struct.snvs_rtc_data*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
