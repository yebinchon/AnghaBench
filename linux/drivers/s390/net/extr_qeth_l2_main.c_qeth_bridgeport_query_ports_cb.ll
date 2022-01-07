; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_bridgeport_query_ports_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_bridgeport_query_ports_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_reply = type { i64 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.qeth_sbp_query_ports }
%struct.qeth_sbp_query_ports = type { i32, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct._qeth_sbp_cbctl = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32*, i32* }

@.str = private unnamed_addr constant [9 x i8] c"brqprtcb\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"SBPs%04x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* @qeth_bridgeport_query_ports_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_bridgeport_query_ports_cb(%struct.qeth_card* %0, %struct.qeth_reply* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca %struct.qeth_reply*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qeth_ipa_cmd*, align 8
  %9 = alloca %struct.qeth_sbp_query_ports*, align 8
  %10 = alloca %struct._qeth_sbp_cbctl*, align 8
  %11 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store %struct.qeth_reply* %1, %struct.qeth_reply** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = inttoptr i64 %12 to %struct.qeth_ipa_cmd*
  store %struct.qeth_ipa_cmd* %13, %struct.qeth_ipa_cmd** %8, align 8
  %14 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %15 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store %struct.qeth_sbp_query_ports* %18, %struct.qeth_sbp_query_ports** %9, align 8
  %19 = load %struct.qeth_reply*, %struct.qeth_reply** %6, align 8
  %20 = getelementptr inbounds %struct.qeth_reply, %struct.qeth_reply* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct._qeth_sbp_cbctl*
  store %struct._qeth_sbp_cbctl* %22, %struct._qeth_sbp_cbctl** %10, align 8
  %23 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %24 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %23, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %26 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %27 = call i32 @qeth_bridgeport_makerc(%struct.qeth_card* %25, %struct.qeth_ipa_cmd* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %4, align 4
  br label %91

32:                                               ; preds = %3
  %33 = load %struct.qeth_sbp_query_ports*, %struct.qeth_sbp_query_ports** %9, align 8
  %34 = getelementptr inbounds %struct.qeth_sbp_query_ports, %struct.qeth_sbp_query_ports* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = icmp ne i64 %36, 4
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %40 = load %struct.qeth_sbp_query_ports*, %struct.qeth_sbp_query_ports** %9, align 8
  %41 = getelementptr inbounds %struct.qeth_sbp_query_ports, %struct.qeth_sbp_query_ports* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %39, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %91

46:                                               ; preds = %32
  %47 = load %struct.qeth_sbp_query_ports*, %struct.qeth_sbp_query_ports** %9, align 8
  %48 = getelementptr inbounds %struct.qeth_sbp_query_ports, %struct.qeth_sbp_query_ports* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %90

51:                                               ; preds = %46
  %52 = load %struct._qeth_sbp_cbctl*, %struct._qeth_sbp_cbctl** %10, align 8
  %53 = getelementptr inbounds %struct._qeth_sbp_cbctl, %struct._qeth_sbp_cbctl* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %70

58:                                               ; preds = %51
  %59 = load %struct.qeth_sbp_query_ports*, %struct.qeth_sbp_query_ports** %9, align 8
  %60 = getelementptr inbounds %struct.qeth_sbp_query_ports, %struct.qeth_sbp_query_ports* %59, i32 0, i32 2
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct._qeth_sbp_cbctl*, %struct._qeth_sbp_cbctl** %10, align 8
  %66 = getelementptr inbounds %struct._qeth_sbp_cbctl, %struct._qeth_sbp_cbctl* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  store i32 %64, i32* %69, align 4
  br label %70

70:                                               ; preds = %58, %51
  %71 = load %struct._qeth_sbp_cbctl*, %struct._qeth_sbp_cbctl** %10, align 8
  %72 = getelementptr inbounds %struct._qeth_sbp_cbctl, %struct._qeth_sbp_cbctl* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %89

77:                                               ; preds = %70
  %78 = load %struct.qeth_sbp_query_ports*, %struct.qeth_sbp_query_ports** %9, align 8
  %79 = getelementptr inbounds %struct.qeth_sbp_query_ports, %struct.qeth_sbp_query_ports* %78, i32 0, i32 2
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct._qeth_sbp_cbctl*, %struct._qeth_sbp_cbctl** %10, align 8
  %85 = getelementptr inbounds %struct._qeth_sbp_cbctl, %struct._qeth_sbp_cbctl* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  store i32 %83, i32* %88, align 4
  br label %89

89:                                               ; preds = %77, %70
  br label %90

90:                                               ; preds = %89, %46
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %38, %30
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @qeth_bridgeport_makerc(%struct.qeth_card*, %struct.qeth_ipa_cmd*) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
