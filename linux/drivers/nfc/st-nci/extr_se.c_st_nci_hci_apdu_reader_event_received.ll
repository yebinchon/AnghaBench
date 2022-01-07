; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_se.c_st_nci_hci_apdu_reader_event_received.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_se.c_st_nci_hci_apdu_reader_event_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.st_nci_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 (i32, i32, i32, i32)* }

@.str = private unnamed_addr constant [28 x i8] c"apdu reader gate event: %x\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Unexpected event on apdu reader gate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nci_dev*, i32, %struct.sk_buff*)* @st_nci_hci_apdu_reader_event_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_nci_hci_apdu_reader_event_received(%struct.nci_dev* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.st_nci_info*, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %11 = call %struct.st_nci_info* @nci_get_drvdata(%struct.nci_dev* %10)
  store %struct.st_nci_info* %11, %struct.st_nci_info** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %50 [
    i32 129, label %15
    i32 128, label %38
  ]

15:                                               ; preds = %3
  %16 = load %struct.st_nci_info*, %struct.st_nci_info** %9, align 8
  %17 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = call i32 @del_timer_sync(i32* %18)
  %20 = load %struct.st_nci_info*, %struct.st_nci_info** %9, align 8
  %21 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load %struct.st_nci_info*, %struct.st_nci_info** %9, align 8
  %24 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 4
  %26 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %25, align 8
  %27 = load %struct.st_nci_info*, %struct.st_nci_info** %9, align 8
  %28 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 %26(i32 %30, i32 %33, i32 %36, i32 0)
  br label %56

38:                                               ; preds = %3
  %39 = load %struct.st_nci_info*, %struct.st_nci_info** %9, align 8
  %40 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i64, i64* @jiffies, align 8
  %43 = load %struct.st_nci_info*, %struct.st_nci_info** %9, align 8
  %44 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @msecs_to_jiffies(i32 %46)
  %48 = add nsw i64 %42, %47
  %49 = call i32 @mod_timer(i32* %41, i64 %48)
  br label %56

50:                                               ; preds = %3
  %51 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %52 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @nfc_err(i32* %54, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %60

56:                                               ; preds = %38, %15
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = call i32 @kfree_skb(%struct.sk_buff* %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %56, %50
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.st_nci_info* @nci_get_drvdata(%struct.nci_dev*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

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
