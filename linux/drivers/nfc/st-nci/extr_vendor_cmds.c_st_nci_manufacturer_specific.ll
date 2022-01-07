; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_vendor_cmds.c_st_nci_manufacturer_specific.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_vendor_cmds.c_st_nci_manufacturer_specific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nci_dev = type { i32 }

@ST_NCI_VENDOR_OUI = common dso_local global i32 0, align 4
@MANUFACTURER_SPECIFIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFC_ATTR_VENDOR_DATA = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_dev*, i8*, i64)* @st_nci_manufacturer_specific to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_nci_manufacturer_specific(%struct.nfc_dev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfc_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.nci_dev*, align 8
  store %struct.nfc_dev* %0, %struct.nfc_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %11 = call %struct.nci_dev* @nfc_get_drvdata(%struct.nfc_dev* %10)
  store %struct.nci_dev* %11, %struct.nci_dev** %9, align 8
  %12 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %13 = load i32, i32* @ST_NCI_VENDOR_OUI, align 4
  %14 = load i32, i32* @MANUFACTURER_SPECIFIC, align 4
  %15 = call %struct.sk_buff* @nfc_vendor_cmd_alloc_reply_skb(%struct.nfc_dev* %12, i32 %13, i32 %14, i32 4)
  store %struct.sk_buff* %15, %struct.sk_buff** %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %36

21:                                               ; preds = %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = load i32, i32* @NFC_ATTR_VENDOR_DATA, align 4
  %24 = load %struct.nci_dev*, %struct.nci_dev** %9, align 8
  %25 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %24, i32 0, i32 0
  %26 = call i64 @nla_put(%struct.sk_buff* %22, i32 %23, i32 4, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = call i32 @kfree_skb(%struct.sk_buff* %29)
  %31 = load i32, i32* @ENOBUFS, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %36

33:                                               ; preds = %21
  %34 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %35 = call i32 @nfc_vendor_cmd_reply(%struct.sk_buff* %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %33, %28, %18
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.nci_dev* @nfc_get_drvdata(%struct.nfc_dev*) #1

declare dso_local %struct.sk_buff* @nfc_vendor_cmd_alloc_reply_skb(%struct.nfc_dev*, i32, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @nfc_vendor_cmd_reply(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
