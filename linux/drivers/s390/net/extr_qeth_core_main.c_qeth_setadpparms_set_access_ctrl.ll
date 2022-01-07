; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_setadpparms_set_access_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_setadpparms_set_access_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_cmd_buffer = type { i32 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.qeth_set_access_ctrl }
%struct.qeth_set_access_ctrl = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"setacctl\00", align 1
@IPA_SETADP_SET_ACCESS_CONTROL = common dso_local global i32 0, align 4
@set_access_ctrl = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qeth_setadpparms_set_access_ctrl_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"rc=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, i32, i32)* @qeth_setadpparms_set_access_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_setadpparms_set_access_ctrl(%struct.qeth_card* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qeth_cmd_buffer*, align 8
  %10 = alloca %struct.qeth_ipa_cmd*, align 8
  %11 = alloca %struct.qeth_set_access_ctrl*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %13 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %12, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %15 = load i32, i32* @IPA_SETADP_SET_ACCESS_CONTROL, align 4
  %16 = load i32, i32* @set_access_ctrl, align 4
  %17 = call i32 @SETADP_DATA_SIZEOF(i32 %16)
  %18 = call %struct.qeth_cmd_buffer* @qeth_get_adapter_cmd(%struct.qeth_card* %14, i32 %15, i32 %17)
  store %struct.qeth_cmd_buffer* %18, %struct.qeth_cmd_buffer** %9, align 8
  %19 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %9, align 8
  %20 = icmp ne %struct.qeth_cmd_buffer* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %43

24:                                               ; preds = %3
  %25 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %9, align 8
  %26 = call %struct.qeth_ipa_cmd* @__ipa_cmd(%struct.qeth_cmd_buffer* %25)
  store %struct.qeth_ipa_cmd* %26, %struct.qeth_ipa_cmd** %10, align 8
  %27 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %10, align 8
  %28 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store %struct.qeth_set_access_ctrl* %31, %struct.qeth_set_access_ctrl** %11, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.qeth_set_access_ctrl*, %struct.qeth_set_access_ctrl** %11, align 8
  %34 = getelementptr inbounds %struct.qeth_set_access_ctrl, %struct.qeth_set_access_ctrl* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %36 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %9, align 8
  %37 = load i32, i32* @qeth_setadpparms_set_access_ctrl_cb, align 4
  %38 = call i32 @qeth_send_ipa_cmd(%struct.qeth_card* %35, %struct.qeth_cmd_buffer* %36, i32 %37, i32* %7)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %39, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %24, %21
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_get_adapter_cmd(%struct.qeth_card*, i32, i32) #1

declare dso_local i32 @SETADP_DATA_SIZEOF(i32) #1

declare dso_local %struct.qeth_ipa_cmd* @__ipa_cmd(%struct.qeth_cmd_buffer*) #1

declare dso_local i32 @qeth_send_ipa_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32, i32*) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
