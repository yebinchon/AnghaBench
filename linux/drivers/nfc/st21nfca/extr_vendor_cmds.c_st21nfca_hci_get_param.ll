; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_vendor_cmds.c_st21nfca_hci_get_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_vendor_cmds.c_st21nfca_hci_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.nfc_hci_dev = type { i32 }
%struct.get_param_data = type { i32, i32 }

@EPROTO = common dso_local global i32 0, align 4
@ST21NFCA_VENDOR_OUI = common dso_local global i32 0, align 4
@HCI_GET_PARAM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFC_ATTR_VENDOR_DATA = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_dev*, i8*, i64)* @st21nfca_hci_get_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st21nfca_hci_get_param(%struct.nfc_dev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfc_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nfc_hci_dev*, align 8
  %12 = alloca %struct.get_param_data*, align 8
  store %struct.nfc_dev* %0, %struct.nfc_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %14 = call %struct.nfc_hci_dev* @nfc_get_drvdata(%struct.nfc_dev* %13)
  store %struct.nfc_hci_dev* %14, %struct.nfc_hci_dev** %11, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.get_param_data*
  store %struct.get_param_data* %16, %struct.get_param_data** %12, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ult i64 %17, 8
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EPROTO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %71

22:                                               ; preds = %3
  %23 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %11, align 8
  %24 = load %struct.get_param_data*, %struct.get_param_data** %12, align 8
  %25 = getelementptr inbounds %struct.get_param_data, %struct.get_param_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.get_param_data*, %struct.get_param_data** %12, align 8
  %28 = getelementptr inbounds %struct.get_param_data, %struct.get_param_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @nfc_hci_get_param(%struct.nfc_hci_dev* %23, i32 %26, i32 %29, %struct.sk_buff** %10)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %69

34:                                               ; preds = %22
  %35 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %36 = load i32, i32* @ST21NFCA_VENDOR_OUI, align 4
  %37 = load i32, i32* @HCI_GET_PARAM, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.sk_buff* @nfc_vendor_cmd_alloc_reply_skb(%struct.nfc_dev* %35, i32 %36, i32 %37, i32 %40)
  store %struct.sk_buff* %41, %struct.sk_buff** %9, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %43 = icmp ne %struct.sk_buff* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  br label %66

47:                                               ; preds = %34
  %48 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %49 = load i32, i32* @NFC_ATTR_VENDOR_DATA, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @nla_put(%struct.sk_buff* %48, i32 %49, i32 %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %47
  %59 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %60 = call i32 @kfree_skb(%struct.sk_buff* %59)
  %61 = load i32, i32* @ENOBUFS, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %66

63:                                               ; preds = %47
  %64 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %65 = call i32 @nfc_vendor_cmd_reply(%struct.sk_buff* %64)
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %63, %58, %44
  %67 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %68 = call i32 @kfree_skb(%struct.sk_buff* %67)
  br label %69

69:                                               ; preds = %66, %33
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %19
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.nfc_hci_dev* @nfc_get_drvdata(%struct.nfc_dev*) #1

declare dso_local i32 @nfc_hci_get_param(%struct.nfc_hci_dev*, i32, i32, %struct.sk_buff**) #1

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
