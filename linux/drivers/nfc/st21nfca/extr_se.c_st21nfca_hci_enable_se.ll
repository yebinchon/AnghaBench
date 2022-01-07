; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_se.c_st21nfca_hci_enable_se.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_se.c_st21nfca_hci_enable_se.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }

@ST21NFCA_SE_MODE_ON = common dso_local global i32 0, align 4
@ST21NFCA_ESE_HOST_ID = common dso_local global i32 0, align 4
@ST21NFCA_APDU_READER_GATE = common dso_local global i32 0, align 4
@ST21NFCA_EVT_SE_SOFT_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st21nfca_hci_enable_se(%struct.nfc_hci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfc_hci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @ST21NFCA_SE_MODE_ON, align 4
  %10 = call i32 @st21nfca_hci_control_se(%struct.nfc_hci_dev* %7, i32 %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @ST21NFCA_ESE_HOST_ID, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %16 = call i32 @st21nfca_se_get_atr(%struct.nfc_hci_dev* %15)
  %17 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %18 = load i32, i32* @ST21NFCA_APDU_READER_GATE, align 4
  %19 = load i32, i32* @ST21NFCA_EVT_SE_SOFT_RESET, align 4
  %20 = call i32 @nfc_hci_send_event(%struct.nfc_hci_dev* %17, i32 %18, i32 %19, i32* null, i32 0)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %38

25:                                               ; preds = %14
  br label %37

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %31 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @nfc_remove_se(i32 %32, i32 %33)
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %38

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %25
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %29, %23
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @st21nfca_hci_control_se(%struct.nfc_hci_dev*, i32, i32) #1

declare dso_local i32 @st21nfca_se_get_atr(%struct.nfc_hci_dev*) #1

declare dso_local i32 @nfc_hci_send_event(%struct.nfc_hci_dev*, i32, i32, i32*, i32) #1

declare dso_local i32 @nfc_remove_se(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
