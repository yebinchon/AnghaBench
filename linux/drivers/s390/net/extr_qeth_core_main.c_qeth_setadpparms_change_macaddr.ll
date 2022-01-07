; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_setadpparms_change_macaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_setadpparms_change_macaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.qeth_cmd_buffer = type { i32 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"chgmac\00", align 1
@IPA_SETADP_ALTER_MAC_ADDRESS = common dso_local global i32 0, align 4
@change_addr = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CHANGE_ADDR_READ_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@qeth_setadpparms_change_macaddr_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_setadpparms_change_macaddr(%struct.qeth_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_cmd_buffer*, align 8
  %6 = alloca %struct.qeth_ipa_cmd*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  %7 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %8 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %7, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %10 = load i32, i32* @IPA_SETADP_ALTER_MAC_ADDRESS, align 4
  %11 = load i32, i32* @change_addr, align 4
  %12 = call i32 @SETADP_DATA_SIZEOF(i32 %11)
  %13 = call %struct.qeth_cmd_buffer* @qeth_get_adapter_cmd(%struct.qeth_card* %9, i32 %10, i32 %12)
  store %struct.qeth_cmd_buffer* %13, %struct.qeth_cmd_buffer** %5, align 8
  %14 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %15 = icmp ne %struct.qeth_cmd_buffer* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %54

19:                                               ; preds = %1
  %20 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %21 = call %struct.qeth_ipa_cmd* @__ipa_cmd(%struct.qeth_cmd_buffer* %20)
  store %struct.qeth_ipa_cmd* %21, %struct.qeth_ipa_cmd** %6, align 8
  %22 = load i32, i32* @CHANGE_ADDR_READ_MAC, align 4
  %23 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %6, align 8
  %24 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  store i32 %22, i32* %28, align 4
  %29 = load i32, i32* @ETH_ALEN, align 4
  %30 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %6, align 8
  %31 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store i32 %29, i32* %35, align 4
  %36 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %6, align 8
  %37 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %44 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %43, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ether_addr_copy(i32 %42, i32 %47)
  %49 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %50 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %51 = load i32, i32* @qeth_setadpparms_change_macaddr_cb, align 4
  %52 = call i32 @qeth_send_ipa_cmd(%struct.qeth_card* %49, %struct.qeth_cmd_buffer* %50, i32 %51, i32* null)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %19, %16
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_get_adapter_cmd(%struct.qeth_card*, i32, i32) #1

declare dso_local i32 @SETADP_DATA_SIZEOF(i32) #1

declare dso_local %struct.qeth_ipa_cmd* @__ipa_cmd(%struct.qeth_cmd_buffer*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @qeth_send_ipa_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
