; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_startlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_startlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_card = type { i32, i64 }

@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"startlan\00", align 1
@LCS_INVALID_PORT_NO = common dso_local global i32 0, align 4
@LCS_FRAME_TYPE_AUTO = common dso_local global i64 0, align 8
@LCS_INITIATOR_TCPIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcs_card*)* @lcs_startlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcs_startlan(%struct.lcs_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lcs_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lcs_card* %0, %struct.lcs_card** %3, align 8
  %6 = load i32, i32* @trace, align 4
  %7 = call i32 @LCS_DBF_TEXT(i32 2, i32 %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  %8 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %9 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @LCS_INVALID_PORT_NO, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %15 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @LCS_FRAME_TYPE_AUTO, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %21 = call i32 @lcs_startlan_auto(%struct.lcs_card* %20)
  store i32 %21, i32* %4, align 4
  br label %26

22:                                               ; preds = %13
  %23 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %24 = load i32, i32* @LCS_INITIATOR_TCPIP, align 4
  %25 = call i32 @lcs_send_startlan(%struct.lcs_card* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %22, %19
  br label %56

27:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %52, %27
  %29 = load i32, i32* %5, align 4
  %30 = icmp sle i32 %29, 16
  br i1 %30, label %31, label %55

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %34 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %36 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @LCS_FRAME_TYPE_AUTO, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %42 = load i32, i32* @LCS_INITIATOR_TCPIP, align 4
  %43 = call i32 @lcs_send_startlan(%struct.lcs_card* %41, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %47

44:                                               ; preds = %31
  %45 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %46 = call i32 @lcs_startlan_auto(%struct.lcs_card* %45)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %44, %40
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %55

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %28

55:                                               ; preds = %50, %28
  br label %56

56:                                               ; preds = %55, %26
  %57 = load i32, i32* %4, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %61 = call i32 @lcs_send_lanstat(%struct.lcs_card* %60)
  store i32 %61, i32* %2, align 4
  br label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %59
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @lcs_startlan_auto(%struct.lcs_card*) #1

declare dso_local i32 @lcs_send_startlan(%struct.lcs_card*, i32) #1

declare dso_local i32 @lcs_send_lanstat(%struct.lcs_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
