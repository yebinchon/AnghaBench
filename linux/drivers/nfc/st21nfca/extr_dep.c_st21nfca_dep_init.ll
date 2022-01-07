; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_dep.c_st21nfca_dep_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_dep.c_st21nfca_dep_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }
%struct.st21nfca_hci_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i32 }

@st21nfca_tx_work = common dso_local global i32 0, align 4
@ST21NFCA_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @st21nfca_dep_init(%struct.nfc_hci_dev* %0) #0 {
  %2 = alloca %struct.nfc_hci_dev*, align 8
  %3 = alloca %struct.st21nfca_hci_info*, align 8
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %2, align 8
  %4 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %2, align 8
  %5 = call %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev* %4)
  store %struct.st21nfca_hci_info* %5, %struct.st21nfca_hci_info** %3, align 8
  %6 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %3, align 8
  %7 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 3
  %9 = load i32, i32* @st21nfca_tx_work, align 4
  %10 = call i32 @INIT_WORK(i32* %8, i32 %9)
  %11 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %3, align 8
  %12 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %3, align 8
  %15 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @ST21NFCA_DEFAULT_TIMEOUT, align 4
  %18 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %3, align 8
  %19 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  ret void
}

declare dso_local %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
