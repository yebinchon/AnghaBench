; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_core.c_st21nfca_hci_cmd_received.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_core.c_st21nfca_hci_cmd_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.sk_buff = type { i32 }
%struct.st21nfca_hci_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"cmd: %x\0A\00", align 1
@ST21NFCA_APDU_READER_GATE = common dso_local global i64 0, align 8
@NFC_HCI_UICC_HOST_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_hci_dev*, i64, i64, %struct.sk_buff*)* @st21nfca_hci_cmd_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st21nfca_hci_cmd_received(%struct.nfc_hci_dev* %0, i64 %1, i64 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.nfc_hci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.st21nfca_hci_info*, align 8
  %10 = alloca i64, align 8
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %11 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %12 = call %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev* %11)
  store %struct.st21nfca_hci_info* %12, %struct.st21nfca_hci_info** %9, align 8
  %13 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %14 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i64, i64* %7, align 8
  switch i64 %22, label %69 [
    i64 128, label %23
  ]

23:                                               ; preds = %4
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @ST21NFCA_APDU_READER_GATE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %29 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @NFC_HCI_UICC_HOST_ID, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %27
  %38 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %9, align 8
  %39 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %27, %23
  %44 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %9, align 8
  %45 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %9, align 8
  %49 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %47, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %43
  %54 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %9, align 8
  %55 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  %57 = call i32 @del_timer_sync(i32* %56)
  %58 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %9, align 8
  %59 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 0, i32* %60, align 4
  %61 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %9, align 8
  %62 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  store i32 0, i32* %63, align 4
  %64 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %9, align 8
  %65 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = call i32 @complete(i32* %66)
  br label %68

68:                                               ; preds = %53, %43
  br label %69

69:                                               ; preds = %4, %68
  ret void
}

declare dso_local %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev*) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
