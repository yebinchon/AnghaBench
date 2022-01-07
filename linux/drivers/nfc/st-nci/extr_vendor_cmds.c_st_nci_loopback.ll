; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_vendor_cmds.c_st_nci_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_vendor_cmds.c_st_nci_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.nci_dev = type { i32 }

@EPROTO = common dso_local global i32 0, align 4
@ST_NCI_VENDOR_OUI = common dso_local global i32 0, align 4
@LOOPBACK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFC_ATTR_VENDOR_DATA = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_dev*, i8*, i64)* @st_nci_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_nci_loopback(%struct.nfc_dev* %0, i8* %1, i64 %2) #0 {
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
  %15 = icmp ule i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EPROTO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %64

19:                                               ; preds = %3
  %20 = load %struct.nci_dev*, %struct.nci_dev** %11, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @nci_nfcc_loopback(%struct.nci_dev* %20, i8* %21, i64 %22, %struct.sk_buff** %10)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %64

28:                                               ; preds = %19
  %29 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %30 = load i32, i32* @ST_NCI_VENDOR_OUI, align 4
  %31 = load i32, i32* @LOOPBACK, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.sk_buff* @nfc_vendor_cmd_alloc_reply_skb(%struct.nfc_dev* %29, i32 %30, i32 %31, i32 %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %9, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %37 = icmp ne %struct.sk_buff* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %28
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  br label %60

41:                                               ; preds = %28
  %42 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %43 = load i32, i32* @NFC_ATTR_VENDOR_DATA, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @nla_put(%struct.sk_buff* %42, i32 %43, i32 %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %41
  %53 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %54 = call i32 @kfree_skb(%struct.sk_buff* %53)
  %55 = load i32, i32* @ENOBUFS, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %8, align 4
  br label %60

57:                                               ; preds = %41
  %58 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %59 = call i32 @nfc_vendor_cmd_reply(%struct.sk_buff* %58)
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %57, %52, %38
  %61 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %62 = call i32 @kfree_skb(%struct.sk_buff* %61)
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %60, %26, %16
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.nci_dev* @nfc_get_drvdata(%struct.nfc_dev*) #1

declare dso_local i32 @nci_nfcc_loopback(%struct.nci_dev*, i8*, i64, %struct.sk_buff**) #1

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
