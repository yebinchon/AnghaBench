; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_core.c_st21nfca_hci_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_core.c_st21nfca_hci_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }
%struct.st21nfca_hci_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.sk_buff = type { i32*, i64 }

@NFC_HCI_UICC_HOST_ID = common dso_local global i32 0, align 4
@ST21NFCA_ESE_HOST_ID = common dso_local global i32 0, align 4
@NFC_HCI_ADMIN_GATE = common dso_local global i32 0, align 4
@NFC_HCI_ADMIN_WHITELIST = common dso_local global i32 0, align 4
@ST21NFCA_DEVICE_MGNT_GATE = common dso_local global i32 0, align 4
@ST21NFCA_NFC_MODE = common dso_local global i32 0, align 4
@NFC_HCI_RF_READER_A_GATE = common dso_local global i32 0, align 4
@NFC_HCI_EVT_END_OPERATION = common dso_local global i32 0, align 4
@NFC_HCI_ID_MGMT_GATE = common dso_local global i32 0, align 4
@NFC_HCI_ID_MGMT_VERSION_SW = common dso_local global i32 0, align 4
@FULL_VERSION_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"FULL VERSION SOFTWARE INFO: \00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_hci_dev*)* @st21nfca_hci_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st21nfca_hci_ready(%struct.nfc_hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfc_hci_dev*, align 8
  %4 = alloca %struct.st21nfca_hci_info*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %3, align 8
  %10 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %11 = call %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev* %10)
  store %struct.st21nfca_hci_info* %11, %struct.st21nfca_hci_info** %4, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %4, align 8
  %13 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load i32, i32* @NFC_HCI_UICC_HOST_ID, align 4
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %8, align 4
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %22
  store i32 %19, i32* %23, align 4
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %4, align 8
  %26 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load i32, i32* @ST21NFCA_ESE_HOST_ID, align 4
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %35
  store i32 %32, i32* %36, align 4
  br label %37

37:                                               ; preds = %31, %24
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %42 = load i32, i32* @NFC_HCI_ADMIN_GATE, align 4
  %43 = load i32, i32* @NFC_HCI_ADMIN_WHITELIST, align 4
  %44 = bitcast [2 x i32]* %7 to i32*
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @nfc_hci_set_param(%struct.nfc_hci_dev* %41, i32 %42, i32 %43, i32* %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %2, align 4
  br label %120

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %37
  %53 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %54 = load i32, i32* @ST21NFCA_DEVICE_MGNT_GATE, align 4
  %55 = load i32, i32* @ST21NFCA_NFC_MODE, align 4
  %56 = call i32 @nfc_hci_get_param(%struct.nfc_hci_dev* %53, i32 %54, i32 %55, %struct.sk_buff** %5)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %2, align 4
  br label %120

61:                                               ; preds = %52
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %6, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = call i32 @kfree_skb(%struct.sk_buff* %67)
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %61
  store i32 1, i32* %6, align 4
  %72 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %73 = load i32, i32* @ST21NFCA_DEVICE_MGNT_GATE, align 4
  %74 = load i32, i32* @ST21NFCA_NFC_MODE, align 4
  %75 = call i32 @nfc_hci_set_param(%struct.nfc_hci_dev* %72, i32 %73, i32 %74, i32* %6, i32 1)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %2, align 4
  br label %120

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80, %61
  %82 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %83 = load i32, i32* @NFC_HCI_RF_READER_A_GATE, align 4
  %84 = load i32, i32* @NFC_HCI_EVT_END_OPERATION, align 4
  %85 = call i32 @nfc_hci_send_event(%struct.nfc_hci_dev* %82, i32 %83, i32 %84, i32* null, i32 0)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %2, align 4
  br label %120

90:                                               ; preds = %81
  %91 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %92 = load i32, i32* @NFC_HCI_ID_MGMT_GATE, align 4
  %93 = load i32, i32* @NFC_HCI_ID_MGMT_VERSION_SW, align 4
  %94 = call i32 @nfc_hci_get_param(%struct.nfc_hci_dev* %91, i32 %92, i32 %93, %struct.sk_buff** %5)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %2, align 4
  br label %120

99:                                               ; preds = %90
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @FULL_VERSION_LEN, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = call i32 @kfree_skb(%struct.sk_buff* %106)
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %120

110:                                              ; preds = %99
  %111 = load i32, i32* @KERN_DEBUG, align 4
  %112 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %113 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* @FULL_VERSION_LEN, align 8
  %117 = call i32 @print_hex_dump(i32 %111, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %112, i32 16, i32 1, i32* %115, i64 %116, i32 0)
  %118 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %119 = call i32 @kfree_skb(%struct.sk_buff* %118)
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %110, %105, %97, %88, %78, %59, %49
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev*) #1

declare dso_local i32 @nfc_hci_set_param(%struct.nfc_hci_dev*, i32, i32, i32*, i32) #1

declare dso_local i32 @nfc_hci_get_param(%struct.nfc_hci_dev*, i32, i32, %struct.sk_buff**) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @nfc_hci_send_event(%struct.nfc_hci_dev*, i32, i32, i32*, i32) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
