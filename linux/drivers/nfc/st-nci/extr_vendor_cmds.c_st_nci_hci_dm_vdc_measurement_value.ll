; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_vendor_cmds.c_st_nci_hci_dm_vdc_measurement_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_vendor_cmds.c_st_nci_hci_dm_vdc_measurement_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.nci_dev = type { i32 }

@EPROTO = common dso_local global i32 0, align 4
@ST_NCI_DEVICE_MGNT_GATE = common dso_local global i32 0, align 4
@ST_NCI_HCI_DM_VDC_MEASUREMENT_VALUE = common dso_local global i32 0, align 4
@ST_NCI_VENDOR_OUI = common dso_local global i32 0, align 4
@HCI_DM_VDC_MEASUREMENT_VALUE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFC_ATTR_VENDOR_DATA = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_dev*, i8*, i64)* @st_nci_hci_dm_vdc_measurement_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_nci_hci_dm_vdc_measurement_value(%struct.nfc_dev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfc_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nci_dev*, align 8
  store %struct.nfc_dev* %0, %struct.nfc_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %13 = call %struct.nci_dev* @nfc_get_drvdata(%struct.nfc_dev* %12)
  store %struct.nci_dev* %13, %struct.nci_dev** %11, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 4
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EPROTO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %66

19:                                               ; preds = %3
  %20 = load %struct.nci_dev*, %struct.nci_dev** %11, align 8
  %21 = load i32, i32* @ST_NCI_DEVICE_MGNT_GATE, align 4
  %22 = load i32, i32* @ST_NCI_HCI_DM_VDC_MEASUREMENT_VALUE, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @nci_hci_send_cmd(%struct.nci_dev* %20, i32 %21, i32 %22, i8* %23, i64 %24, %struct.sk_buff** %10)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %64

29:                                               ; preds = %19
  %30 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %31 = load i32, i32* @ST_NCI_VENDOR_OUI, align 4
  %32 = load i32, i32* @HCI_DM_VDC_MEASUREMENT_VALUE, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.sk_buff* @nfc_vendor_cmd_alloc_reply_skb(%struct.nfc_dev* %30, i32 %31, i32 %32, i32 %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %9, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %61

42:                                               ; preds = %29
  %43 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %44 = load i32, i32* @NFC_ATTR_VENDOR_DATA, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @nla_put(%struct.sk_buff* %43, i32 %44, i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %42
  %54 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %55 = call i32 @kfree_skb(%struct.sk_buff* %54)
  %56 = load i32, i32* @ENOBUFS, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %8, align 4
  br label %61

58:                                               ; preds = %42
  %59 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %60 = call i32 @nfc_vendor_cmd_reply(%struct.sk_buff* %59)
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %58, %53, %39
  %62 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %63 = call i32 @kfree_skb(%struct.sk_buff* %62)
  br label %64

64:                                               ; preds = %61, %28
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %16
  %67 = load i32, i32* %4, align 4
  ret i32 %67
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
