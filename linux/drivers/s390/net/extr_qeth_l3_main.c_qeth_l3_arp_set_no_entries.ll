; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_arp_set_no_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_arp_set_no_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_cmd_buffer = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"arpstnoe\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IPA_ARP_PROCESSING = common dso_local global i32 0, align 4
@IPA_CMD_ASS_ARP_SET_NO_ENTRIES = common dso_local global i32 0, align 4
@flags_32bit = common dso_local global i32 0, align 4
@QETH_PROT_IPV4 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qeth_l3_arp_cmd_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Could not set number of ARP entries on device %x: %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, i32)* @qeth_l3_arp_set_no_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_arp_set_no_entries(%struct.qeth_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qeth_cmd_buffer*, align 8
  %7 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %9 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %8, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %11 = call i64 @IS_VM_NIC(%struct.qeth_card* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %59

16:                                               ; preds = %2
  %17 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %18 = load i32, i32* @IPA_ARP_PROCESSING, align 4
  %19 = call i32 @qeth_is_supported(%struct.qeth_card* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %59

24:                                               ; preds = %16
  %25 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %26 = load i32, i32* @IPA_ARP_PROCESSING, align 4
  %27 = load i32, i32* @IPA_CMD_ASS_ARP_SET_NO_ENTRIES, align 4
  %28 = load i32, i32* @flags_32bit, align 4
  %29 = call i32 @SETASS_DATA_SIZEOF(i32 %28)
  %30 = load i32, i32* @QETH_PROT_IPV4, align 4
  %31 = call %struct.qeth_cmd_buffer* @qeth_get_setassparms_cmd(%struct.qeth_card* %25, i32 %26, i32 %27, i32 %29, i32 %30)
  store %struct.qeth_cmd_buffer* %31, %struct.qeth_cmd_buffer** %6, align 8
  %32 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %6, align 8
  %33 = icmp ne %struct.qeth_cmd_buffer* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %24
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %59

37:                                               ; preds = %24
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %6, align 8
  %41 = call %struct.TYPE_8__* @__ipa_cmd(%struct.qeth_cmd_buffer* %40)
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i64 %39, i64* %45, align 8
  %46 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %47 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %6, align 8
  %48 = load i32, i32* @qeth_l3_arp_cmd_cb, align 4
  %49 = call i32 @qeth_send_ipa_cmd(%struct.qeth_card* %46, %struct.qeth_cmd_buffer* %47, i32 %48, i32* null)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %37
  %53 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %54 = call i32 @CARD_DEVID(%struct.qeth_card* %53)
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %37
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %34, %21, %13
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i64 @IS_VM_NIC(%struct.qeth_card*) #1

declare dso_local i32 @qeth_is_supported(%struct.qeth_card*, i32) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_get_setassparms_cmd(%struct.qeth_card*, i32, i32, i32, i32) #1

declare dso_local i32 @SETASS_DATA_SIZEOF(i32) #1

declare dso_local %struct.TYPE_8__* @__ipa_cmd(%struct.qeth_cmd_buffer*) #1

declare dso_local i32 @qeth_send_ipa_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32, i32*) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32, i32) #1

declare dso_local i32 @CARD_DEVID(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
