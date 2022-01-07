; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_se.c_st21nfca_se_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_se.c_st21nfca_se_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }
%struct.st21nfca_hci_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i64, i32, i32, i32 }

@st21nfca_se_wt_timeout = common dso_local global i32 0, align 4
@st21nfca_se_activation_timeout = common dso_local global i32 0, align 4
@ST21NFCA_ATR_DEFAULT_BWI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @st21nfca_se_init(%struct.nfc_hci_dev* %0) #0 {
  %2 = alloca %struct.nfc_hci_dev*, align 8
  %3 = alloca %struct.st21nfca_hci_info*, align 8
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %2, align 8
  %4 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %2, align 8
  %5 = call %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev* %4)
  store %struct.st21nfca_hci_info* %5, %struct.st21nfca_hci_info** %3, align 8
  %6 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %3, align 8
  %7 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 8
  %9 = call i32 @init_completion(i32* %8)
  %10 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %3, align 8
  %11 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 7
  %13 = load i32, i32* @st21nfca_se_wt_timeout, align 4
  %14 = call i32 @timer_setup(i32* %12, i32 %13, i32 0)
  %15 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %3, align 8
  %16 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %3, align 8
  %19 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 6
  %21 = load i32, i32* @st21nfca_se_activation_timeout, align 4
  %22 = call i32 @timer_setup(i32* %20, i32 %21, i32 0)
  %23 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %3, align 8
  %24 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %3, align 8
  %27 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 5
  store i64 0, i64* %28, align 8
  %29 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %3, align 8
  %30 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %3, align 8
  %33 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32 0, i32* %34, align 8
  %35 = load i32, i32* @ST21NFCA_ATR_DEFAULT_BWI, align 4
  %36 = call i32 @ST21NFCA_BWI_TO_TIMEOUT(i32 %35)
  %37 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %3, align 8
  %38 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  store i32 %36, i32* %39, align 4
  ret void
}

declare dso_local %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @ST21NFCA_BWI_TO_TIMEOUT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
