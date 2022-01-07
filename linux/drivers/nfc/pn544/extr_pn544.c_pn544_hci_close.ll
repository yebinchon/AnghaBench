; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_pn544.c_pn544_hci_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_pn544.c_pn544_hci_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }
%struct.pn544_hci_info = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)* }

@PN544_ST_COLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_hci_dev*)* @pn544_hci_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pn544_hci_close(%struct.nfc_hci_dev* %0) #0 {
  %2 = alloca %struct.nfc_hci_dev*, align 8
  %3 = alloca %struct.pn544_hci_info*, align 8
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %2, align 8
  %4 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %2, align 8
  %5 = call %struct.pn544_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev* %4)
  store %struct.pn544_hci_info* %5, %struct.pn544_hci_info** %3, align 8
  %6 = load %struct.pn544_hci_info*, %struct.pn544_hci_info** %3, align 8
  %7 = getelementptr inbounds %struct.pn544_hci_info, %struct.pn544_hci_info* %6, i32 0, i32 1
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.pn544_hci_info*, %struct.pn544_hci_info** %3, align 8
  %10 = getelementptr inbounds %struct.pn544_hci_info, %struct.pn544_hci_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PN544_ST_COLD, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %28

15:                                               ; preds = %1
  %16 = load %struct.pn544_hci_info*, %struct.pn544_hci_info** %3, align 8
  %17 = getelementptr inbounds %struct.pn544_hci_info, %struct.pn544_hci_info* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i32)*, i32 (i32)** %19, align 8
  %21 = load %struct.pn544_hci_info*, %struct.pn544_hci_info** %3, align 8
  %22 = getelementptr inbounds %struct.pn544_hci_info, %struct.pn544_hci_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 %20(i32 %23)
  %25 = load i64, i64* @PN544_ST_COLD, align 8
  %26 = load %struct.pn544_hci_info*, %struct.pn544_hci_info** %3, align 8
  %27 = getelementptr inbounds %struct.pn544_hci_info, %struct.pn544_hci_info* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %15, %14
  %29 = load %struct.pn544_hci_info*, %struct.pn544_hci_info** %3, align 8
  %30 = getelementptr inbounds %struct.pn544_hci_info, %struct.pn544_hci_info* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  ret void
}

declare dso_local %struct.pn544_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
