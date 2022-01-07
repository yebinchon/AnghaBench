; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_pn544.c_pn544_hci_fw_download.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_pn544.c_pn544_hci_fw_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }
%struct.pn544_hci_info = type { i32 (i32, i8*, i32)*, i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_hci_dev*, i8*)* @pn544_hci_fw_download to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn544_hci_fw_download(%struct.nfc_hci_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfc_hci_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pn544_hci_info*, align 8
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %8 = call %struct.pn544_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev* %7)
  store %struct.pn544_hci_info* %8, %struct.pn544_hci_info** %6, align 8
  %9 = load %struct.pn544_hci_info*, %struct.pn544_hci_info** %6, align 8
  %10 = getelementptr inbounds %struct.pn544_hci_info, %struct.pn544_hci_info* %9, i32 0, i32 0
  %11 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %10, align 8
  %12 = icmp eq i32 (i32, i8*, i32)* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %28

16:                                               ; preds = %2
  %17 = load %struct.pn544_hci_info*, %struct.pn544_hci_info** %6, align 8
  %18 = getelementptr inbounds %struct.pn544_hci_info, %struct.pn544_hci_info* %17, i32 0, i32 0
  %19 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %18, align 8
  %20 = load %struct.pn544_hci_info*, %struct.pn544_hci_info** %6, align 8
  %21 = getelementptr inbounds %struct.pn544_hci_info, %struct.pn544_hci_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 %19(i32 %22, i8* %23, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %16, %13
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.pn544_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
