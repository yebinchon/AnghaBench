; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_arp_flush_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_arp_flush_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_cmd_buffer = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"arpflush\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IPA_ARP_PROCESSING = common dso_local global i32 0, align 4
@IPA_CMD_ASS_ARP_FLUSH_CACHE = common dso_local global i32 0, align 4
@QETH_PROT_IPV4 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qeth_l3_arp_cmd_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Could not flush ARP cache on device %x: %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @qeth_l3_arp_flush_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_arp_flush_cache(%struct.qeth_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca %struct.qeth_cmd_buffer*, align 8
  %5 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  %6 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %7 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %6, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %9 = call i64 @IS_VM_NIC(%struct.qeth_card* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %13 = call i64 @IS_IQD(%struct.qeth_card* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11, %1
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %51

18:                                               ; preds = %11
  %19 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %20 = load i32, i32* @IPA_ARP_PROCESSING, align 4
  %21 = call i32 @qeth_is_supported(%struct.qeth_card* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %51

26:                                               ; preds = %18
  %27 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %28 = load i32, i32* @IPA_ARP_PROCESSING, align 4
  %29 = load i32, i32* @IPA_CMD_ASS_ARP_FLUSH_CACHE, align 4
  %30 = load i32, i32* @QETH_PROT_IPV4, align 4
  %31 = call %struct.qeth_cmd_buffer* @qeth_get_setassparms_cmd(%struct.qeth_card* %27, i32 %28, i32 %29, i32 0, i32 %30)
  store %struct.qeth_cmd_buffer* %31, %struct.qeth_cmd_buffer** %4, align 8
  %32 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %33 = icmp ne %struct.qeth_cmd_buffer* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %51

37:                                               ; preds = %26
  %38 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %39 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %40 = load i32, i32* @qeth_l3_arp_cmd_cb, align 4
  %41 = call i32 @qeth_send_ipa_cmd(%struct.qeth_card* %38, %struct.qeth_cmd_buffer* %39, i32 %40, i32* null)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %46 = call i32 @CARD_DEVID(%struct.qeth_card* %45)
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %37
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %34, %23, %15
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i64 @IS_VM_NIC(%struct.qeth_card*) #1

declare dso_local i64 @IS_IQD(%struct.qeth_card*) #1

declare dso_local i32 @qeth_is_supported(%struct.qeth_card*, i32) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_get_setassparms_cmd(%struct.qeth_card*, i32, i32, i32, i32) #1

declare dso_local i32 @qeth_send_ipa_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32, i32*) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32, i32) #1

declare dso_local i32 @CARD_DEVID(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
