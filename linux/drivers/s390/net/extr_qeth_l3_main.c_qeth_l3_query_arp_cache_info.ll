; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_query_arp_cache_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_query_arp_cache_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_arp_query_info = type { i32 }
%struct.qeth_cmd_buffer = type { i32 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"qarpipv%i\00", align 1
@IPA_ARP_PROCESSING = common dso_local global i32 0, align 4
@IPA_CMD_ASS_ARP_QUERY_INFO = common dso_local global i32 0, align 4
@query_arp = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qeth_l3_arp_query_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Error while querying ARP cache on device %x: %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, i32, %struct.qeth_arp_query_info*)* @qeth_l3_query_arp_cache_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_query_arp_cache_info(%struct.qeth_card* %0, i32 %1, %struct.qeth_arp_query_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qeth_arp_query_info*, align 8
  %8 = alloca %struct.qeth_cmd_buffer*, align 8
  %9 = alloca %struct.qeth_ipa_cmd*, align 8
  %10 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.qeth_arp_query_info* %2, %struct.qeth_arp_query_info** %7, align 8
  %11 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %11, i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %15 = load i32, i32* @IPA_ARP_PROCESSING, align 4
  %16 = load i32, i32* @IPA_CMD_ASS_ARP_QUERY_INFO, align 4
  %17 = load i32, i32* @query_arp, align 4
  %18 = call i32 @SETASS_DATA_SIZEOF(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.qeth_cmd_buffer* @qeth_get_setassparms_cmd(%struct.qeth_card* %14, i32 %15, i32 %16, i32 %18, i32 %19)
  store %struct.qeth_cmd_buffer* %20, %struct.qeth_cmd_buffer** %8, align 8
  %21 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %8, align 8
  %22 = icmp ne %struct.qeth_cmd_buffer* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %49

26:                                               ; preds = %3
  %27 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %8, align 8
  %28 = call %struct.qeth_ipa_cmd* @__ipa_cmd(%struct.qeth_cmd_buffer* %27)
  store %struct.qeth_ipa_cmd* %28, %struct.qeth_ipa_cmd** %9, align 8
  %29 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %9, align 8
  %30 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 15, i32* %34, align 4
  %35 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %36 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %8, align 8
  %37 = load i32, i32* @qeth_l3_arp_query_cb, align 4
  %38 = load %struct.qeth_arp_query_info*, %struct.qeth_arp_query_info** %7, align 8
  %39 = call i32 @qeth_send_ipa_cmd(%struct.qeth_card* %35, %struct.qeth_cmd_buffer* %36, i32 %37, %struct.qeth_arp_query_info* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %26
  %43 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %44 = call i32 @CARD_DEVID(%struct.qeth_card* %43)
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %26
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %23
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_get_setassparms_cmd(%struct.qeth_card*, i32, i32, i32, i32) #1

declare dso_local i32 @SETASS_DATA_SIZEOF(i32) #1

declare dso_local %struct.qeth_ipa_cmd* @__ipa_cmd(%struct.qeth_cmd_buffer*) #1

declare dso_local i32 @qeth_send_ipa_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32, %struct.qeth_arp_query_info*) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32, i32) #1

declare dso_local i32 @CARD_DEVID(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
