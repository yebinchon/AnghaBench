; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_se.c_st21nfca_hci_se_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_se.c_st21nfca_hci_se_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }
%struct.st21nfca_hci_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"se_io %x\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@ST21NFCA_APDU_READER_GATE = common dso_local global i32 0, align 4
@ST21NFCA_EVT_TRANSMIT_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st21nfca_hci_se_io(%struct.nfc_hci_dev* %0, i32 %1, i32* %2, i64 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfc_hci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.st21nfca_hci_info*, align 8
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %15 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %8, align 8
  %16 = call %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev* %15)
  store %struct.st21nfca_hci_info* %16, %struct.st21nfca_hci_info** %14, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %9, align 4
  switch i32 %19, label %49 [
    i32 128, label %20
  ]

20:                                               ; preds = %6
  %21 = load i32, i32* %12, align 4
  %22 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %14, align 8
  %23 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 4
  store i32 %21, i32* %24, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %14, align 8
  %27 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  store i8* %25, i8** %28, align 8
  %29 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %14, align 8
  %30 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i64, i64* @jiffies, align 8
  %33 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %14, align 8
  %34 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @msecs_to_jiffies(i32 %36)
  %38 = add nsw i64 %32, %37
  %39 = call i32 @mod_timer(i32* %31, i64 %38)
  %40 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %14, align 8
  %41 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %8, align 8
  %44 = load i32, i32* @ST21NFCA_APDU_READER_GATE, align 4
  %45 = load i32, i32* @ST21NFCA_EVT_TRANSMIT_DATA, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @nfc_hci_send_event(%struct.nfc_hci_dev* %43, i32 %44, i32 %45, i32* %46, i64 %47)
  store i32 %48, i32* %7, align 4
  br label %52

49:                                               ; preds = %6
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %49, %20
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @nfc_hci_send_event(%struct.nfc_hci_dev*, i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
