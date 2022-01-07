; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_vnicc_request_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_vnicc_request_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.qeth_reply = type { i64 }
%struct._qeth_l2_vnicc_request_cbctl = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32*, i32* }
%struct.qeth_ipa_cmd = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { %struct.qeth_ipacmd_vnicc }
%struct.qeth_ipacmd_vnicc = type { %struct.TYPE_11__, %struct.TYPE_17__, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { %struct.TYPE_20__, %struct.TYPE_18__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"vniccrcb\00", align 1
@IPA_VNICC_QUERY_CMDS = common dso_local global i64 0, align 8
@IPA_VNICC_GET_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* @qeth_l2_vnicc_request_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l2_vnicc_request_cb(%struct.qeth_card* %0, %struct.qeth_reply* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca %struct.qeth_reply*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct._qeth_l2_vnicc_request_cbctl*, align 8
  %9 = alloca %struct.qeth_ipa_cmd*, align 8
  %10 = alloca %struct.qeth_ipacmd_vnicc*, align 8
  %11 = alloca i64, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store %struct.qeth_reply* %1, %struct.qeth_reply** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.qeth_reply*, %struct.qeth_reply** %6, align 8
  %13 = getelementptr inbounds %struct.qeth_reply, %struct.qeth_reply* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct._qeth_l2_vnicc_request_cbctl*
  store %struct._qeth_l2_vnicc_request_cbctl* %15, %struct._qeth_l2_vnicc_request_cbctl** %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = inttoptr i64 %16 to %struct.qeth_ipa_cmd*
  store %struct.qeth_ipa_cmd* %17, %struct.qeth_ipa_cmd** %9, align 8
  %18 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %9, align 8
  %19 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  store %struct.qeth_ipacmd_vnicc* %20, %struct.qeth_ipacmd_vnicc** %10, align 8
  %21 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %9, align 8
  %22 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.qeth_ipacmd_vnicc, %struct.qeth_ipacmd_vnicc* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %11, align 8
  %27 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %28 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %27, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %9, align 8
  %30 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %3
  %35 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %36 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %9, align 8
  %37 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @qeth_l2_vnicc_makerc(%struct.qeth_card* %35, i64 %39)
  store i32 %40, i32* %4, align 4
  br label %87

41:                                               ; preds = %3
  %42 = load %struct.qeth_ipacmd_vnicc*, %struct.qeth_ipacmd_vnicc** %10, align 8
  %43 = getelementptr inbounds %struct.qeth_ipacmd_vnicc, %struct.qeth_ipacmd_vnicc* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %47 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  store i32 %45, i32* %49, align 4
  %50 = load %struct.qeth_ipacmd_vnicc*, %struct.qeth_ipacmd_vnicc** %10, align 8
  %51 = getelementptr inbounds %struct.qeth_ipacmd_vnicc, %struct.qeth_ipacmd_vnicc* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %55 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 4
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* @IPA_VNICC_QUERY_CMDS, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %41
  %62 = load %struct.qeth_ipacmd_vnicc*, %struct.qeth_ipacmd_vnicc** %10, align 8
  %63 = getelementptr inbounds %struct.qeth_ipacmd_vnicc, %struct.qeth_ipacmd_vnicc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct._qeth_l2_vnicc_request_cbctl*, %struct._qeth_l2_vnicc_request_cbctl** %8, align 8
  %68 = getelementptr inbounds %struct._qeth_l2_vnicc_request_cbctl, %struct._qeth_l2_vnicc_request_cbctl* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  store i32 %66, i32* %70, align 4
  br label %86

71:                                               ; preds = %41
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* @IPA_VNICC_GET_TIMEOUT, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %71
  %76 = load %struct.qeth_ipacmd_vnicc*, %struct.qeth_ipacmd_vnicc** %10, align 8
  %77 = getelementptr inbounds %struct.qeth_ipacmd_vnicc, %struct.qeth_ipacmd_vnicc* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct._qeth_l2_vnicc_request_cbctl*, %struct._qeth_l2_vnicc_request_cbctl** %8, align 8
  %82 = getelementptr inbounds %struct._qeth_l2_vnicc_request_cbctl, %struct._qeth_l2_vnicc_request_cbctl* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  store i32 %80, i32* %84, align 4
  br label %85

85:                                               ; preds = %75, %71
  br label %86

86:                                               ; preds = %85, %61
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %34
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @qeth_l2_vnicc_makerc(%struct.qeth_card*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
