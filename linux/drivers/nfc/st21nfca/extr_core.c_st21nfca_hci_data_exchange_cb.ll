; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_core.c_st21nfca_hci_data_exchange_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_core.c_st21nfca_hci_data_exchange_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.st21nfca_hci_info = type { i32, i32, i32 (i32, %struct.sk_buff.0*, i32)* }
%struct.sk_buff.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sk_buff*, i32)* @st21nfca_hci_data_exchange_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st21nfca_hci_data_exchange_cb(i8* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.st21nfca_hci_info*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.st21nfca_hci_info*
  store %struct.st21nfca_hci_info* %9, %struct.st21nfca_hci_info** %7, align 8
  %10 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %7, align 8
  %11 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %34 [
    i32 128, label %13
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 1
  %22 = call i32 @skb_trim(%struct.sk_buff* %17, i32 %21)
  br label %23

23:                                               ; preds = %16, %13
  %24 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %7, align 8
  %25 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %24, i32 0, i32 2
  %26 = load i32 (i32, %struct.sk_buff.0*, i32)*, i32 (i32, %struct.sk_buff.0*, i32)** %25, align 8
  %27 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %7, align 8
  %28 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = bitcast %struct.sk_buff* %30 to %struct.sk_buff.0*
  %32 = load i32, i32* %6, align 4
  %33 = call i32 %26(i32 %29, %struct.sk_buff.0* %31, i32 %32)
  br label %41

34:                                               ; preds = %3
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call i32 @kfree_skb(%struct.sk_buff* %38)
  br label %40

40:                                               ; preds = %37, %34
  br label %41

41:                                               ; preds = %40, %23
  ret void
}

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
