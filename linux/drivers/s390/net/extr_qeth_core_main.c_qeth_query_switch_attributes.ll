; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_query_switch_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_query_switch_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_switch_info = type { i32 }
%struct.qeth_cmd_buffer = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"qswiattr\00", align 1
@IPA_SETADP_QUERY_SWITCH_ATTRIBUTES = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEDIUM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qeth_query_switch_attributes_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_query_switch_attributes(%struct.qeth_card* %0, %struct.qeth_switch_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca %struct.qeth_switch_info*, align 8
  %6 = alloca %struct.qeth_cmd_buffer*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store %struct.qeth_switch_info* %1, %struct.qeth_switch_info** %5, align 8
  %7 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %8 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %7, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %10 = load i32, i32* @IPA_SETADP_QUERY_SWITCH_ATTRIBUTES, align 4
  %11 = call i32 @qeth_adp_supported(%struct.qeth_card* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %40

16:                                               ; preds = %2
  %17 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %18 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @netif_carrier_ok(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOMEDIUM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %40

25:                                               ; preds = %16
  %26 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %27 = load i32, i32* @IPA_SETADP_QUERY_SWITCH_ATTRIBUTES, align 4
  %28 = call %struct.qeth_cmd_buffer* @qeth_get_adapter_cmd(%struct.qeth_card* %26, i32 %27, i32 0)
  store %struct.qeth_cmd_buffer* %28, %struct.qeth_cmd_buffer** %6, align 8
  %29 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %6, align 8
  %30 = icmp ne %struct.qeth_cmd_buffer* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %40

34:                                               ; preds = %25
  %35 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %36 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %6, align 8
  %37 = load i32, i32* @qeth_query_switch_attributes_cb, align 4
  %38 = load %struct.qeth_switch_info*, %struct.qeth_switch_info** %5, align 8
  %39 = call i32 @qeth_send_ipa_cmd(%struct.qeth_card* %35, %struct.qeth_cmd_buffer* %36, i32 %37, %struct.qeth_switch_info* %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %34, %31, %22, %13
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @qeth_adp_supported(%struct.qeth_card*, i32) #1

declare dso_local i32 @netif_carrier_ok(i32) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_get_adapter_cmd(%struct.qeth_card*, i32, i32) #1

declare dso_local i32 @qeth_send_ipa_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32, %struct.qeth_switch_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
