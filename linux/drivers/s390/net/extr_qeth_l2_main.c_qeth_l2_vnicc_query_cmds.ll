; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_vnicc_query_cmds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_vnicc_query_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct._qeth_l2_vnicc_request_cbctl = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }
%struct.qeth_cmd_buffer = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"vniccqcm\00", align 1
@IPA_VNICC_QUERY_CMDS = common dso_local global i32 0, align 4
@query_cmds = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qeth_l2_vnicc_request_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, i32, i32*)* @qeth_l2_vnicc_query_cmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l2_vnicc_query_cmds(%struct.qeth_card* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct._qeth_l2_vnicc_request_cbctl, align 8
  %9 = alloca %struct.qeth_cmd_buffer*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %11 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %10, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %13 = load i32, i32* @IPA_VNICC_QUERY_CMDS, align 4
  %14 = load i32, i32* @query_cmds, align 4
  %15 = call i32 @VNICC_DATA_SIZEOF(i32 %14)
  %16 = call %struct.qeth_cmd_buffer* @qeth_l2_vnicc_build_cmd(%struct.qeth_card* %12, i32 %13, i32 %15)
  store %struct.qeth_cmd_buffer* %16, %struct.qeth_cmd_buffer** %9, align 8
  %17 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %9, align 8
  %18 = icmp ne %struct.qeth_cmd_buffer* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %38

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %9, align 8
  %25 = call %struct.TYPE_12__* @__ipa_cmd(%struct.qeth_cmd_buffer* %24)
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i32 %23, i32* %30, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds %struct._qeth_l2_vnicc_request_cbctl, %struct._qeth_l2_vnicc_request_cbctl* %8, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  %34 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %35 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %9, align 8
  %36 = load i32, i32* @qeth_l2_vnicc_request_cb, align 4
  %37 = call i32 @qeth_send_ipa_cmd(%struct.qeth_card* %34, %struct.qeth_cmd_buffer* %35, i32 %36, %struct._qeth_l2_vnicc_request_cbctl* %8)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %22, %19
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_l2_vnicc_build_cmd(%struct.qeth_card*, i32, i32) #1

declare dso_local i32 @VNICC_DATA_SIZEOF(i32) #1

declare dso_local %struct.TYPE_12__* @__ipa_cmd(%struct.qeth_cmd_buffer*) #1

declare dso_local i32 @qeth_send_ipa_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32, %struct._qeth_l2_vnicc_request_cbctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
