; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_dep.c_st21nfca_dep_event_received.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_dep.c_st21nfca_dep_event_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.st21nfca_hci_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"dep event: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Unexpected event on card f gate\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st21nfca_dep_event_received(%struct.nfc_hci_dev* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfc_hci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.st21nfca_hci_info*, align 8
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %11 = call %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev* %10)
  store %struct.st21nfca_hci_info* %11, %struct.st21nfca_hci_info** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %31 [
    i32 132, label %15
    i32 131, label %19
    i32 129, label %20
    i32 130, label %21
    i32 128, label %22
  ]

15:                                               ; preds = %3
  %16 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %9, align 8
  %17 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  br label %37

19:                                               ; preds = %3
  br label %37

20:                                               ; preds = %3
  br label %37

21:                                               ; preds = %3
  br label %37

22:                                               ; preds = %3
  %23 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = call i32 @st21nfca_tm_event_send_data(%struct.nfc_hci_dev* %23, %struct.sk_buff* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %41

30:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %41

31:                                               ; preds = %3
  %32 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %33 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @nfc_err(i32* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %41

37:                                               ; preds = %21, %20, %19, %15
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = call i32 @kfree_skb(%struct.sk_buff* %38)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %31, %30, %28
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @st21nfca_tm_event_send_data(%struct.nfc_hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @nfc_err(i32*, i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
