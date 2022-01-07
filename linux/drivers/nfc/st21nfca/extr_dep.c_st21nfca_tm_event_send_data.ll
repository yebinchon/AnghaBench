; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_dep.c_st21nfca_tm_event_send_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_dep.c_st21nfca_tm_event_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }
%struct.sk_buff = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_hci_dev*, %struct.sk_buff*)* @st21nfca_tm_event_send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st21nfca_tm_event_send_data(%struct.nfc_hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfc_hci_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %36 [
    i32 128, label %15
  ]

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %34 [
    i32 131, label %22
    i32 129, label %26
    i32 130, label %30
  ]

22:                                               ; preds = %15
  %23 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call i32 @st21nfca_tm_recv_atr_req(%struct.nfc_hci_dev* %23, %struct.sk_buff* %24)
  store i32 %25, i32* %8, align 4
  br label %35

26:                                               ; preds = %15
  %27 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call i32 @st21nfca_tm_recv_psl_req(%struct.nfc_hci_dev* %27, %struct.sk_buff* %28)
  store i32 %29, i32* %8, align 4
  br label %35

30:                                               ; preds = %15
  %31 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call i32 @st21nfca_tm_recv_dep_req(%struct.nfc_hci_dev* %31, %struct.sk_buff* %32)
  store i32 %33, i32* %8, align 4
  br label %35

34:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %39

35:                                               ; preds = %30, %26, %22
  br label %37

36:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %39

37:                                               ; preds = %35
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %36, %34
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @st21nfca_tm_recv_atr_req(%struct.nfc_hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @st21nfca_tm_recv_psl_req(%struct.nfc_hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @st21nfca_tm_recv_dep_req(%struct.nfc_hci_dev*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
