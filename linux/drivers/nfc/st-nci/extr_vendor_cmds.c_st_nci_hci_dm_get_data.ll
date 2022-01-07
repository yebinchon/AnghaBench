; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_vendor_cmds.c_st_nci_hci_dm_get_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_vendor_cmds.c_st_nci_hci_dm_get_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.nci_dev = type { i32 }

@ST_NCI_DEVICE_MGNT_GATE = common dso_local global i32 0, align 4
@ST_NCI_HCI_DM_GETDATA = common dso_local global i32 0, align 4
@ST_NCI_VENDOR_OUI = common dso_local global i32 0, align 4
@HCI_DM_GET_DATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFC_ATTR_VENDOR_DATA = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_dev*, i8*, i64)* @st_nci_hci_dm_get_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_nci_hci_dm_get_data(%struct.nfc_dev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.nfc_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.nci_dev*, align 8
  store %struct.nfc_dev* %0, %struct.nfc_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %12 = call %struct.nci_dev* @nfc_get_drvdata(%struct.nfc_dev* %11)
  store %struct.nci_dev* %12, %struct.nci_dev** %10, align 8
  %13 = load %struct.nci_dev*, %struct.nci_dev** %10, align 8
  %14 = load i32, i32* @ST_NCI_DEVICE_MGNT_GATE, align 4
  %15 = load i32, i32* @ST_NCI_HCI_DM_GETDATA, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @nci_hci_send_cmd(%struct.nci_dev* %13, i32 %14, i32 %15, i8* %16, i64 %17, %struct.sk_buff** %9)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %57

22:                                               ; preds = %3
  %23 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %24 = load i32, i32* @ST_NCI_VENDOR_OUI, align 4
  %25 = load i32, i32* @HCI_DM_GET_DATA, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.sk_buff* @nfc_vendor_cmd_alloc_reply_skb(%struct.nfc_dev* %23, i32 %24, i32 %25, i32 %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %8, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %22
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %54

35:                                               ; preds = %22
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = load i32, i32* @NFC_ATTR_VENDOR_DATA, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @nla_put(%struct.sk_buff* %36, i32 %37, i32 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %35
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = call i32 @kfree_skb(%struct.sk_buff* %47)
  %49 = load i32, i32* @ENOBUFS, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %54

51:                                               ; preds = %35
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = call i32 @nfc_vendor_cmd_reply(%struct.sk_buff* %52)
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %51, %46, %32
  %55 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %56 = call i32 @kfree_skb(%struct.sk_buff* %55)
  br label %57

57:                                               ; preds = %54, %21
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local %struct.nci_dev* @nfc_get_drvdata(%struct.nfc_dev*) #1

declare dso_local i32 @nci_hci_send_cmd(%struct.nci_dev*, i32, i32, i8*, i64, %struct.sk_buff**) #1

declare dso_local %struct.sk_buff* @nfc_vendor_cmd_alloc_reply_skb(%struct.nfc_dev*, i32, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @nfc_vendor_cmd_reply(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
