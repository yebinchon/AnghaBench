; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_diags_trace_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_diags_trace_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.qeth_reply = type { i32 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_10__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"diastrcb\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"dxter%x\00", align 1
@SET_PROMISC_MODE_OFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"The HiperSockets network traffic analyzer is deactivated\0A\00", align 1
@SET_PROMISC_MODE_ON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"The HiperSockets network traffic analyzer is activated\0A\00", align 1
@.str.4 = private unnamed_addr constant [80 x i8] c"The device is not authorized to run as a HiperSockets network traffic analyzer\0A\00", align 1
@.str.5 = private unnamed_addr constant [83 x i8] c"A HiperSockets network traffic analyzer is already active in the HiperSockets LAN\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Unknown sniffer action (%#06x) on device %x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* @qeth_diags_trace_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_diags_trace_cb(%struct.qeth_card* %0, %struct.qeth_reply* %1, i64 %2) #0 {
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca %struct.qeth_reply*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qeth_ipa_cmd*, align 8
  %8 = alloca i64, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store %struct.qeth_reply* %1, %struct.qeth_reply** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %10 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %9, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* %6, align 8
  %12 = inttoptr i64 %11 to %struct.qeth_ipa_cmd*
  store %struct.qeth_ipa_cmd* %12, %struct.qeth_ipa_cmd** %7, align 8
  %13 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %14 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %20, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  br label %23

23:                                               ; preds = %19, %3
  %24 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %25 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %70 [
    i32 128, label %29
    i32 130, label %30
    i32 129, label %44
  ]

29:                                               ; preds = %23
  br label %79

30:                                               ; preds = %23
  %31 = load i64, i64* %8, align 8
  switch i64 %31, label %42 [
    i64 0, label %32
    i64 132, label %32
  ]

32:                                               ; preds = %30, %30
  %33 = load i32, i32* @SET_PROMISC_MODE_OFF, align 4
  %34 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %35 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %38 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = call i32 @dev_info(i32* %40, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  br label %43

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %32
  br label %79

44:                                               ; preds = %23
  %45 = load i64, i64* %8, align 8
  switch i64 %45, label %68 [
    i64 0, label %46
    i64 133, label %56
    i64 131, label %62
  ]

46:                                               ; preds = %44
  %47 = load i32, i32* @SET_PROMISC_MODE_ON, align 4
  %48 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %49 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %52 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = call i32 @dev_info(i32* %54, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  br label %69

56:                                               ; preds = %44
  %57 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %58 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = call i32 @dev_warn(i32* %60, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i64 0, i64 0))
  br label %69

62:                                               ; preds = %44
  %63 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %64 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = call i32 @dev_warn(i32* %66, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.5, i64 0, i64 0))
  br label %69

68:                                               ; preds = %44
  br label %69

69:                                               ; preds = %68, %62, %56, %46
  br label %79

70:                                               ; preds = %23
  %71 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %72 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %77 = call i32 @CARD_DEVID(%struct.qeth_card* %76)
  %78 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %75, i32 %77)
  br label %79

79:                                               ; preds = %70, %69, %43, %29
  %80 = load i64, i64* %8, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  br label %86

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %85, %82
  %87 = phi i32 [ %84, %82 ], [ 0, %85 ]
  ret i32 %87
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i64) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32, i32) #1

declare dso_local i32 @CARD_DEVID(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
