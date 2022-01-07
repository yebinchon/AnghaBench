; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_se.c_st21nfca_hci_discover_se.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_se.c_st21nfca_hci_discover_se.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32, i32 }
%struct.st21nfca_hci_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@ST21NFCA_FACTORY_MODE = common dso_local global i32 0, align 4
@NFC_HCI_UICC_HOST_ID = common dso_local global i32 0, align 4
@NFC_SE_UICC = common dso_local global i32 0, align 4
@ST21NFCA_ESE_HOST_ID = common dso_local global i32 0, align 4
@NFC_SE_EMBEDDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st21nfca_hci_discover_se(%struct.nfc_hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfc_hci_dev*, align 8
  %4 = alloca %struct.st21nfca_hci_info*, align 8
  %5 = alloca i32, align 4
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %3, align 8
  %6 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %7 = call %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev* %6)
  store %struct.st21nfca_hci_info* %7, %struct.st21nfca_hci_info** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @ST21NFCA_FACTORY_MODE, align 4
  %9 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %9, i32 0, i32 1
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

14:                                               ; preds = %1
  %15 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %4, align 8
  %16 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  %22 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %23 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NFC_HCI_UICC_HOST_ID, align 4
  %26 = load i32, i32* @NFC_SE_UICC, align 4
  %27 = call i32 @nfc_add_se(i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %21, %14
  %31 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %4, align 8
  %32 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %39 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ST21NFCA_ESE_HOST_ID, align 4
  %42 = load i32, i32* @NFC_SE_EMBEDDED, align 4
  %43 = call i32 @nfc_add_se(i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %37, %30
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %46, %13
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nfc_add_se(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
