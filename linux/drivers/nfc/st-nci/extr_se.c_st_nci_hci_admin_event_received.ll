; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_se.c_st_nci_hci_admin_event_received.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_se.c_st_nci_hci_admin_event_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.st_nci_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@ST_NCI_SE_TO_PIPES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unexpected event on admin gate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nci_dev*, i32, %struct.sk_buff*)* @st_nci_hci_admin_event_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st_nci_hci_admin_event_received(%struct.nci_dev* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.nci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.st_nci_info*, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %8 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %9 = call %struct.st_nci_info* @nci_get_drvdata(%struct.nci_dev* %8)
  store %struct.st_nci_info* %9, %struct.st_nci_info** %7, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %44 [
    i32 128, label %11
  ]

11:                                               ; preds = %3
  %12 = load %struct.st_nci_info*, %struct.st_nci_info** %7, align 8
  %13 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %11
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i32 @ST_NCI_EVT_HOT_PLUG_IS_INHIBITED(%struct.sk_buff* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %17
  %22 = load %struct.st_nci_info*, %struct.st_nci_info** %7, align 8
  %23 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = call i32 @del_timer_sync(i32* %24)
  %26 = load %struct.st_nci_info*, %struct.st_nci_info** %7, align 8
  %27 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load %struct.st_nci_info*, %struct.st_nci_info** %7, align 8
  %30 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = call i32 @complete(i32* %31)
  br label %42

33:                                               ; preds = %17
  %34 = load %struct.st_nci_info*, %struct.st_nci_info** %7, align 8
  %35 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* @jiffies, align 8
  %38 = load i32, i32* @ST_NCI_SE_TO_PIPES, align 4
  %39 = call i64 @msecs_to_jiffies(i32 %38)
  %40 = add nsw i64 %37, %39
  %41 = call i32 @mod_timer(i32* %36, i64 %40)
  br label %42

42:                                               ; preds = %33, %21
  br label %43

43:                                               ; preds = %42, %11
  br label %50

44:                                               ; preds = %3
  %45 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %46 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = call i32 @nfc_err(i32* %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %44, %43
  ret void
}

declare dso_local %struct.st_nci_info* @nci_get_drvdata(%struct.nci_dev*) #1

declare dso_local i32 @ST_NCI_EVT_HOT_PLUG_IS_INHIBITED(%struct.sk_buff*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @nfc_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
