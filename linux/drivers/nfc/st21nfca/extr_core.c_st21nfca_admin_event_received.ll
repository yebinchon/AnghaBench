; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_core.c_st21nfca_admin_event_received.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_core.c_st21nfca_admin_event_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.st21nfca_hci_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"admin event: %x\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@ST21NFCA_SE_TO_PIPES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unexpected event on admin gate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_hci_dev*, i32, %struct.sk_buff*)* @st21nfca_admin_event_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st21nfca_admin_event_received(%struct.nfc_hci_dev* %0, i32 %1, %struct.sk_buff* %2) #0 {
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
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %46 [
    i32 128, label %13
  ]

13:                                               ; preds = %3
  %14 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %7, align 8
  %15 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %13
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = call i32 @ST21NFCA_EVT_HOT_PLUG_IS_INHIBITED(%struct.sk_buff* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  %24 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %7, align 8
  %25 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = call i32 @del_timer_sync(i32* %26)
  %28 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %7, align 8
  %29 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %7, align 8
  %32 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = call i32 @complete(i32* %33)
  br label %44

35:                                               ; preds = %19
  %36 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %7, align 8
  %37 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* @jiffies, align 8
  %40 = load i32, i32* @ST21NFCA_SE_TO_PIPES, align 4
  %41 = call i64 @msecs_to_jiffies(i32 %40)
  %42 = add nsw i64 %39, %41
  %43 = call i32 @mod_timer(i32* %38, i64 %42)
  br label %44

44:                                               ; preds = %35, %23
  br label %45

45:                                               ; preds = %44, %13
  br label %52

46:                                               ; preds = %3
  %47 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %48 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = call i32 @nfc_err(i32* %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %46, %45
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = call i32 @kfree_skb(%struct.sk_buff* %53)
  ret i32 0
}

declare dso_local %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @ST21NFCA_EVT_HOT_PLUG_IS_INHIBITED(%struct.sk_buff*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @complete(i32*) #1

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
