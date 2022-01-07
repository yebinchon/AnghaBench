; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_card = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i64 }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@setup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"lcsdetct\00", align 1
@LCS_INITIATOR_TCPIP = common dso_local global i32 0, align 4
@DEV_STATE_UP = common dso_local global i32 0, align 4
@DEV_STATE_DOWN = common dso_local global i32 0, align 4
@LCS_CH_STATE_INIT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcs_card*)* @lcs_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcs_detect(%struct.lcs_card* %0) #0 {
  %2 = alloca %struct.lcs_card*, align 8
  %3 = alloca i32, align 4
  store %struct.lcs_card* %0, %struct.lcs_card** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @setup, align 4
  %5 = call i32 @LCS_DBF_TEXT(i32 2, i32 %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %7 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %12 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @netif_stop_queue(i64 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %17 = call i32 @lcs_stop_channels(%struct.lcs_card* %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %22 = call i32 @lcs_start_channels(%struct.lcs_card* %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %27 = load i32, i32* @LCS_INITIATOR_TCPIP, align 4
  %28 = call i32 @lcs_send_startup(%struct.lcs_card* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %33 = call i32 @lcs_startlan(%struct.lcs_card* %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %25
  br label %35

35:                                               ; preds = %34, %20
  br label %36

36:                                               ; preds = %35, %15
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @DEV_STATE_UP, align 4
  %41 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %42 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  br label %55

43:                                               ; preds = %36
  %44 = load i32, i32* @DEV_STATE_DOWN, align 4
  %45 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %46 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load i8*, i8** @LCS_CH_STATE_INIT, align 8
  %48 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %49 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i8* %47, i8** %50, align 8
  %51 = load i8*, i8** @LCS_CH_STATE_INIT, align 8
  %52 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %53 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  br label %55

55:                                               ; preds = %43, %39
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @netif_stop_queue(i64) #1

declare dso_local i32 @lcs_stop_channels(%struct.lcs_card*) #1

declare dso_local i32 @lcs_start_channels(%struct.lcs_card*) #1

declare dso_local i32 @lcs_send_startup(%struct.lcs_card*, i32) #1

declare dso_local i32 @lcs_startlan(%struct.lcs_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
