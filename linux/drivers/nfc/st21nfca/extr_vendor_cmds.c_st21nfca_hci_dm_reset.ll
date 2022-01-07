; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_vendor_cmds.c_st21nfca_hci_dm_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_vendor_cmds.c_st21nfca_hci_dm_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32 }
%struct.nfc_hci_dev = type { i32 }

@ST21NFCA_DEVICE_MGNT_GATE = common dso_local global i32 0, align 4
@ST21NFCA_HCI_DM_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_dev*, i8*, i64)* @st21nfca_hci_dm_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st21nfca_hci_dm_reset(%struct.nfc_dev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfc_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfc_hci_dev*, align 8
  store %struct.nfc_dev* %0, %struct.nfc_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %11 = call %struct.nfc_hci_dev* @nfc_get_drvdata(%struct.nfc_dev* %10)
  store %struct.nfc_hci_dev* %11, %struct.nfc_hci_dev** %9, align 8
  %12 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %9, align 8
  %13 = load i32, i32* @ST21NFCA_DEVICE_MGNT_GATE, align 4
  %14 = load i32, i32* @ST21NFCA_HCI_DM_RESET, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @nfc_hci_send_cmd_async(%struct.nfc_hci_dev* %12, i32 %13, i32 %14, i8* %15, i64 %16, i32* null, i32* null)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %36

22:                                               ; preds = %3
  %23 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %9, align 8
  %24 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @nfc_llc_stop(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %36

31:                                               ; preds = %22
  %32 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %9, align 8
  %33 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @nfc_llc_start(i32 %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %31, %29, %20
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.nfc_hci_dev* @nfc_get_drvdata(%struct.nfc_dev*) #1

declare dso_local i32 @nfc_hci_send_cmd_async(%struct.nfc_hci_dev*, i32, i32, i8*, i64, i32*, i32*) #1

declare dso_local i32 @nfc_llc_stop(i32) #1

declare dso_local i32 @nfc_llc_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
