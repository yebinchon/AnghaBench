; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s5m.c_s5m8767_wait_for_udr_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s5m.c_s5m8767_wait_for_udr_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5m_rtc_info = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@UDR_READ_RETRY_CNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"waiting for UDR update, reached max number of retries\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5m_rtc_info*)* @s5m8767_wait_for_udr_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5m8767_wait_for_udr_update(%struct.s5m_rtc_info* %0) #0 {
  %2 = alloca %struct.s5m_rtc_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.s5m_rtc_info* %0, %struct.s5m_rtc_info** %2, align 8
  %6 = load i32, i32* @UDR_READ_RETRY_CNT, align 4
  store i32 %6, i32* %4, align 4
  br label %7

7:                                                ; preds = %34, %1
  %8 = load %struct.s5m_rtc_info*, %struct.s5m_rtc_info** %2, align 8
  %9 = getelementptr inbounds %struct.s5m_rtc_info, %struct.s5m_rtc_info* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.s5m_rtc_info*, %struct.s5m_rtc_info** %2, align 8
  %12 = getelementptr inbounds %struct.s5m_rtc_info, %struct.s5m_rtc_info* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @regmap_read(i32 %10, i32 %15, i32* %5)
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %7
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.s5m_rtc_info*, %struct.s5m_rtc_info** %2, align 8
  %24 = getelementptr inbounds %struct.s5m_rtc_info, %struct.s5m_rtc_info* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %22, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %30, %21, %17
  %35 = phi i1 [ false, %21 ], [ false, %17 ], [ %33, %30 ]
  br i1 %35, label %7, label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = load %struct.s5m_rtc_info*, %struct.s5m_rtc_info** %2, align 8
  %41 = getelementptr inbounds %struct.s5m_rtc_info, %struct.s5m_rtc_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %36
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
