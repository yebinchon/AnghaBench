; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_query_setadapterparms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_query_setadapterparms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_cmd_buffer = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"queryadp\00", align 1
@IPA_SETADP_QUERY_COMMANDS_SUPPORTED = common dso_local global i32 0, align 4
@query_cmds_supp = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qeth_query_setadapterparms_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @qeth_query_setadapterparms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_query_setadapterparms(%struct.qeth_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_cmd_buffer*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  %6 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %7 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %6, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %9 = load i32, i32* @IPA_SETADP_QUERY_COMMANDS_SUPPORTED, align 4
  %10 = load i32, i32* @query_cmds_supp, align 4
  %11 = call i32 @SETADP_DATA_SIZEOF(i32 %10)
  %12 = call %struct.qeth_cmd_buffer* @qeth_get_adapter_cmd(%struct.qeth_card* %8, i32 %9, i32 %11)
  store %struct.qeth_cmd_buffer* %12, %struct.qeth_cmd_buffer** %5, align 8
  %13 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %14 = icmp ne %struct.qeth_cmd_buffer* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %24

18:                                               ; preds = %1
  %19 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %20 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %21 = load i32, i32* @qeth_query_setadapterparms_cb, align 4
  %22 = call i32 @qeth_send_ipa_cmd(%struct.qeth_card* %19, %struct.qeth_cmd_buffer* %20, i32 %21, i32* null)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %18, %15
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_get_adapter_cmd(%struct.qeth_card*, i32, i32) #1

declare dso_local i32 @SETADP_DATA_SIZEOF(i32) #1

declare dso_local i32 @qeth_send_ipa_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
