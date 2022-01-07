; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_vendor_cmds.c_st21nfca_hci_loopback_event_received.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_vendor_cmds.c_st21nfca_hci_loopback_event_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.st21nfca_hci_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.sk_buff* }

@.str = private unnamed_addr constant [35 x i8] c"Unexpected event on loopback gate\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st21nfca_hci_loopback_event_received(%struct.nfc_hci_dev* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.nfc_hci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.st21nfca_hci_info*, align 8
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %8 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %9 = call %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev* %8)
  store %struct.st21nfca_hci_info* %9, %struct.st21nfca_hci_info** %7, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %16 [
    i32 128, label %11
  ]

11:                                               ; preds = %3
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %7, align 8
  %14 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store %struct.sk_buff* %12, %struct.sk_buff** %15, align 8
  br label %22

16:                                               ; preds = %3
  %17 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i32 @nfc_err(i32* %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %16, %11
  %23 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %7, align 8
  %24 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @complete(i32* %25)
  ret i32 0
}

declare dso_local %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev*) #1

declare dso_local i32 @nfc_err(i32*, i8*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
