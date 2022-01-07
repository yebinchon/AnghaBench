; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_bridgeport_query_support.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_bridgeport_query_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.qeth_cmd_buffer = type { i32 }
%struct._qeth_sbp_cbctl = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"brqsuppo\00", align 1
@IPA_SBP_QUERY_COMMANDS_SUPPORTED = common dso_local global i32 0, align 4
@query_cmds_supp = common dso_local global i32 0, align 4
@qeth_bridgeport_query_support_cb = common dso_local global i32 0, align 4
@QETH_SBP_ROLE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*)* @qeth_bridgeport_query_support to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_bridgeport_query_support(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  %3 = alloca %struct.qeth_cmd_buffer*, align 8
  %4 = alloca %struct._qeth_sbp_cbctl, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  %5 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %6 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %5, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %8 = load i32, i32* @IPA_SBP_QUERY_COMMANDS_SUPPORTED, align 4
  %9 = load i32, i32* @query_cmds_supp, align 4
  %10 = call i32 @SBP_DATA_SIZEOF(i32 %9)
  %11 = call %struct.qeth_cmd_buffer* @qeth_sbp_build_cmd(%struct.qeth_card* %7, i32 %8, i32 %10)
  store %struct.qeth_cmd_buffer* %11, %struct.qeth_cmd_buffer** %3, align 8
  %12 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %3, align 8
  %13 = icmp ne %struct.qeth_cmd_buffer* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %39

15:                                               ; preds = %1
  %16 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %17 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %3, align 8
  %18 = load i32, i32* @qeth_bridgeport_query_support_cb, align 4
  %19 = call i64 @qeth_send_ipa_cmd(%struct.qeth_card* %16, %struct.qeth_cmd_buffer* %17, i32 %18, %struct._qeth_sbp_cbctl* %4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load i32, i32* @QETH_SBP_ROLE_NONE, align 4
  %23 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %24 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  store i32 %22, i32* %26, align 4
  %27 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %28 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  br label %39

31:                                               ; preds = %15
  %32 = getelementptr inbounds %struct._qeth_sbp_cbctl, %struct._qeth_sbp_cbctl* %4, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %36 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 4
  br label %39

39:                                               ; preds = %31, %21, %14
  ret void
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_sbp_build_cmd(%struct.qeth_card*, i32, i32) #1

declare dso_local i32 @SBP_DATA_SIZEOF(i32) #1

declare dso_local i64 @qeth_send_ipa_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32, %struct._qeth_sbp_cbctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
