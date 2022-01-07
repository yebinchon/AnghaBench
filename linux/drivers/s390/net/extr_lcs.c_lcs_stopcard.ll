; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_stopcard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_stopcard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_card = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@setup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"stopcard\00", align 1
@LCS_CH_STATE_STOPPED = common dso_local global i64 0, align 8
@LCS_CH_STATE_ERROR = common dso_local global i64 0, align 8
@DEV_STATE_UP = common dso_local global i64 0, align 8
@LCS_INITIATOR_TCPIP = common dso_local global i32 0, align 4
@DEV_STATE_DOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcs_card*)* @lcs_stopcard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcs_stopcard(%struct.lcs_card* %0) #0 {
  %2 = alloca %struct.lcs_card*, align 8
  %3 = alloca i32, align 4
  store %struct.lcs_card* %0, %struct.lcs_card** %2, align 8
  %4 = load i32, i32* @setup, align 4
  %5 = call i32 @LCS_DBF_TEXT(i32 3, i32 %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %7 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @LCS_CH_STATE_STOPPED, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %47

12:                                               ; preds = %1
  %13 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %14 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @LCS_CH_STATE_STOPPED, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %12
  %20 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %21 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LCS_CH_STATE_ERROR, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %19
  %27 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %28 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @LCS_CH_STATE_ERROR, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %26
  %34 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %35 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DEV_STATE_UP, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %41 = call i32 @lcs_clear_multicast_list(%struct.lcs_card* %40)
  %42 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %43 = load i32, i32* @LCS_INITIATOR_TCPIP, align 4
  %44 = call i32 @lcs_send_stoplan(%struct.lcs_card* %42, i32 %43)
  store i32 %44, i32* %3, align 4
  %45 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %46 = call i32 @lcs_send_shutdown(%struct.lcs_card* %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %39, %33, %26, %19, %12, %1
  %48 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %49 = call i32 @lcs_stop_channels(%struct.lcs_card* %48)
  store i32 %49, i32* %3, align 4
  %50 = load i64, i64* @DEV_STATE_DOWN, align 8
  %51 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %52 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @lcs_clear_multicast_list(%struct.lcs_card*) #1

declare dso_local i32 @lcs_send_stoplan(%struct.lcs_card*, i32) #1

declare dso_local i32 @lcs_send_shutdown(%struct.lcs_card*) #1

declare dso_local i32 @lcs_stop_channels(%struct.lcs_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
