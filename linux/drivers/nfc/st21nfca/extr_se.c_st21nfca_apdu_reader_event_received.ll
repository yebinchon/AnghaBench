; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_se.c_st21nfca_apdu_reader_event_received.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_se.c_st21nfca_apdu_reader_event_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.st21nfca_hci_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 (i32, i32, i32, i32)* }

@.str = private unnamed_addr constant [28 x i8] c"apdu reader gate event: %x\0A\00", align 1
@ST21NFCA_DEVICE_MGNT_GATE = common dso_local global i32 0, align 4
@ST21NFCA_EVT_SE_END_OF_APDU_TRANSFER = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Unexpected event on apdu reader gate\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st21nfca_apdu_reader_event_received(%struct.nfc_hci_dev* %0, i32 %1, %struct.sk_buff* %2) #0 {
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
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %58 [
    i32 129, label %15
    i32 128, label %46
  ]

15:                                               ; preds = %3
  %16 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %9, align 8
  %17 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = call i32 @del_timer_sync(i32* %18)
  %20 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %9, align 8
  %21 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %24 = load i32, i32* @ST21NFCA_DEVICE_MGNT_GATE, align 4
  %25 = load i32, i32* @ST21NFCA_EVT_SE_END_OF_APDU_TRANSFER, align 4
  %26 = call i32 @nfc_hci_send_event(%struct.nfc_hci_dev* %23, i32 %24, i32 %25, i32* null, i32 0)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  br label %65

30:                                               ; preds = %15
  %31 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %9, align 8
  %32 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 4
  %34 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %33, align 8
  %35 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %9, align 8
  %36 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 %34(i32 %38, i32 %41, i32 %44, i32 0)
  br label %64

46:                                               ; preds = %3
  %47 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %9, align 8
  %48 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i64, i64* @jiffies, align 8
  %51 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %9, align 8
  %52 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @msecs_to_jiffies(i32 %54)
  %56 = add nsw i64 %50, %55
  %57 = call i32 @mod_timer(i32* %49, i64 %56)
  br label %64

58:                                               ; preds = %3
  %59 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %60 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = call i32 @nfc_err(i32* %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %69

64:                                               ; preds = %46, %30
  br label %65

65:                                               ; preds = %64, %29
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = call i32 @kfree_skb(%struct.sk_buff* %66)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %58
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @nfc_hci_send_event(%struct.nfc_hci_dev*, i32, i32, i32*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @nfc_err(i32*, i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
