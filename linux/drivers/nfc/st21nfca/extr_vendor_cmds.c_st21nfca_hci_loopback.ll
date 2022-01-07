; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_vendor_cmds.c_st21nfca_hci_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_vendor_cmds.c_st21nfca_hci_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.nfc_hci_dev = type { i32 }
%struct.st21nfca_hci_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sk_buff*, i32 }

@EPROTO = common dso_local global i32 0, align 4
@NFC_HCI_LOOPBACK_GATE = common dso_local global i32 0, align 4
@ST21NFCA_EVT_POST_DATA = common dso_local global i32 0, align 4
@ST21NFCA_VENDOR_OUI = common dso_local global i32 0, align 4
@HCI_LOOPBACK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFC_ATTR_VENDOR_DATA = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_dev*, i8*, i64)* @st21nfca_hci_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st21nfca_hci_loopback(%struct.nfc_dev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfc_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.nfc_hci_dev*, align 8
  %11 = alloca %struct.st21nfca_hci_info*, align 8
  store %struct.nfc_dev* %0, %struct.nfc_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %13 = call %struct.nfc_hci_dev* @nfc_get_drvdata(%struct.nfc_dev* %12)
  store %struct.nfc_hci_dev* %13, %struct.nfc_hci_dev** %10, align 8
  %14 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %10, align 8
  %15 = call %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev* %14)
  store %struct.st21nfca_hci_info* %15, %struct.st21nfca_hci_info** %11, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ule i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EPROTO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %113

21:                                               ; preds = %3
  %22 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %11, align 8
  %23 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = call i32 @reinit_completion(i32* %24)
  %26 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %11, align 8
  %27 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %28, align 8
  %29 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %10, align 8
  %30 = load i32, i32* @NFC_HCI_LOOPBACK_GATE, align 4
  %31 = load i32, i32* @ST21NFCA_EVT_POST_DATA, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @nfc_hci_send_event(%struct.nfc_hci_dev* %29, i32 %30, i32 %31, i8* %32, i64 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %21
  %38 = load i32, i32* @EPROTO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %111

40:                                               ; preds = %21
  %41 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %11, align 8
  %42 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = call i32 @wait_for_completion_interruptible(i32* %43)
  %45 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %11, align 8
  %46 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.sk_buff*, %struct.sk_buff** %47, align 8
  %49 = icmp ne %struct.sk_buff* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %40
  %51 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %11, align 8
  %52 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load %struct.sk_buff*, %struct.sk_buff** %53, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %50, %40
  %60 = load i32, i32* @EPROTO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %8, align 4
  br label %111

62:                                               ; preds = %50
  %63 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %10, align 8
  %64 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ST21NFCA_VENDOR_OUI, align 4
  %67 = load i32, i32* @HCI_LOOPBACK, align 4
  %68 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %11, align 8
  %69 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load %struct.sk_buff*, %struct.sk_buff** %70, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call %struct.sk_buff* @nfc_vendor_cmd_alloc_reply_skb(i32 %65, i32 %66, i32 %67, i64 %73)
  store %struct.sk_buff* %74, %struct.sk_buff** %9, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %76 = icmp ne %struct.sk_buff* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %62
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %8, align 4
  br label %105

80:                                               ; preds = %62
  %81 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %82 = load i32, i32* @NFC_ATTR_VENDOR_DATA, align 4
  %83 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %11, align 8
  %84 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load %struct.sk_buff*, %struct.sk_buff** %85, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %11, align 8
  %90 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load %struct.sk_buff*, %struct.sk_buff** %91, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @nla_put(%struct.sk_buff* %81, i32 %82, i64 %88, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %80
  %98 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %99 = call i32 @kfree_skb(%struct.sk_buff* %98)
  %100 = load i32, i32* @ENOBUFS, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %8, align 4
  br label %105

102:                                              ; preds = %80
  %103 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %104 = call i32 @nfc_vendor_cmd_reply(%struct.sk_buff* %103)
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %102, %97, %77
  %106 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %11, align 8
  %107 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load %struct.sk_buff*, %struct.sk_buff** %108, align 8
  %110 = call i32 @kfree_skb(%struct.sk_buff* %109)
  br label %111

111:                                              ; preds = %105, %59, %37
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %111, %18
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.nfc_hci_dev* @nfc_get_drvdata(%struct.nfc_dev*) #1

declare dso_local %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @nfc_hci_send_event(%struct.nfc_hci_dev*, i32, i32, i8*, i64) #1

declare dso_local i32 @wait_for_completion_interruptible(i32*) #1

declare dso_local %struct.sk_buff* @nfc_vendor_cmd_alloc_reply_skb(i32, i32, i32, i64) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @nfc_vendor_cmd_reply(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
