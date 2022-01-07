; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_arp_modify_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_arp_modify_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_arp_cache_entry = type { i32, i32 }
%struct.qeth_cmd_buffer = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.qeth_arp_cache_entry }

@IPA_CMD_ASS_ARP_ADD_ENTRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"arpadd\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"arpdel\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IPA_ARP_PROCESSING = common dso_local global i32 0, align 4
@arp_entry = common dso_local global i32 0, align 4
@QETH_PROT_IPV4 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qeth_l3_arp_cmd_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"Could not modify (cmd: %#x) ARP entry on device %x: %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_arp_cache_entry*, i32)* @qeth_l3_arp_modify_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_arp_modify_entry(%struct.qeth_card* %0, %struct.qeth_arp_cache_entry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca %struct.qeth_arp_cache_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qeth_arp_cache_entry*, align 8
  %9 = alloca %struct.qeth_cmd_buffer*, align 8
  %10 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store %struct.qeth_arp_cache_entry* %1, %struct.qeth_arp_cache_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @IPA_CMD_ASS_ARP_ADD_ENTRY, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %16 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %15, i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %20

17:                                               ; preds = %3
  %18 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %19 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %18, i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %14
  %21 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %22 = call i64 @IS_VM_NIC(%struct.qeth_card* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %83

27:                                               ; preds = %20
  %28 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %29 = load i32, i32* @IPA_ARP_PROCESSING, align 4
  %30 = call i32 @qeth_is_supported(%struct.qeth_card* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %83

35:                                               ; preds = %27
  %36 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %37 = load i32, i32* @IPA_ARP_PROCESSING, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @arp_entry, align 4
  %40 = call i32 @SETASS_DATA_SIZEOF(i32 %39)
  %41 = load i32, i32* @QETH_PROT_IPV4, align 4
  %42 = call %struct.qeth_cmd_buffer* @qeth_get_setassparms_cmd(%struct.qeth_card* %36, i32 %37, i32 %38, i32 %40, i32 %41)
  store %struct.qeth_cmd_buffer* %42, %struct.qeth_cmd_buffer** %9, align 8
  %43 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %9, align 8
  %44 = icmp ne %struct.qeth_cmd_buffer* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %35
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %83

48:                                               ; preds = %35
  %49 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %9, align 8
  %50 = call %struct.TYPE_8__* @__ipa_cmd(%struct.qeth_cmd_buffer* %49)
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store %struct.qeth_arp_cache_entry* %54, %struct.qeth_arp_cache_entry** %8, align 8
  %55 = load %struct.qeth_arp_cache_entry*, %struct.qeth_arp_cache_entry** %8, align 8
  %56 = getelementptr inbounds %struct.qeth_arp_cache_entry, %struct.qeth_arp_cache_entry* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.qeth_arp_cache_entry*, %struct.qeth_arp_cache_entry** %6, align 8
  %59 = getelementptr inbounds %struct.qeth_arp_cache_entry, %struct.qeth_arp_cache_entry* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ether_addr_copy(i32 %57, i32 %60)
  %62 = load %struct.qeth_arp_cache_entry*, %struct.qeth_arp_cache_entry** %8, align 8
  %63 = getelementptr inbounds %struct.qeth_arp_cache_entry, %struct.qeth_arp_cache_entry* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.qeth_arp_cache_entry*, %struct.qeth_arp_cache_entry** %6, align 8
  %66 = getelementptr inbounds %struct.qeth_arp_cache_entry, %struct.qeth_arp_cache_entry* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @memcpy(i32 %64, i32 %67, i32 4)
  %69 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %70 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %9, align 8
  %71 = load i32, i32* @qeth_l3_arp_cmd_cb, align 4
  %72 = call i32 @qeth_send_ipa_cmd(%struct.qeth_card* %69, %struct.qeth_cmd_buffer* %70, i32 %71, i32* null)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %48
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %78 = call i32 @CARD_DEVID(%struct.qeth_card* %77)
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %75, %48
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %45, %32, %24
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i64 @IS_VM_NIC(%struct.qeth_card*) #1

declare dso_local i32 @qeth_is_supported(%struct.qeth_card*, i32) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_get_setassparms_cmd(%struct.qeth_card*, i32, i32, i32, i32) #1

declare dso_local i32 @SETASS_DATA_SIZEOF(i32) #1

declare dso_local %struct.TYPE_8__* @__ipa_cmd(%struct.qeth_cmd_buffer*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @qeth_send_ipa_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32, i32*) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @CARD_DEVID(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
