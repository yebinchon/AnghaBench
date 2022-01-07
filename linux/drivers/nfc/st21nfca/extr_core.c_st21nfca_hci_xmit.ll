; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_core.c_st21nfca_hci_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_core.c_st21nfca_hci_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.st21nfca_hci_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.sk_buff*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_hci_dev*, %struct.sk_buff*)* @st21nfca_hci_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st21nfca_hci_xmit(%struct.nfc_hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nfc_hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.st21nfca_hci_info*, align 8
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %7 = call %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev* %6)
  store %struct.st21nfca_hci_info* %7, %struct.st21nfca_hci_info** %5, align 8
  %8 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %5, align 8
  %9 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (i32, %struct.sk_buff*)*, i32 (i32, %struct.sk_buff*)** %11, align 8
  %13 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %5, align 8
  %14 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call i32 %12(i32 %15, %struct.sk_buff* %16)
  ret i32 %17
}

declare dso_local %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
