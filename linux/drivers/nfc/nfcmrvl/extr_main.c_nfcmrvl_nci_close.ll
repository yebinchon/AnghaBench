; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_main.c_nfcmrvl_nci_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_main.c_nfcmrvl_nci_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.nfcmrvl_private = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nfcmrvl_private*)* }

@NFCMRVL_NCI_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nci_dev*)* @nfcmrvl_nci_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfcmrvl_nci_close(%struct.nci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca %struct.nfcmrvl_private*, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  %5 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %6 = call %struct.nfcmrvl_private* @nci_get_drvdata(%struct.nci_dev* %5)
  store %struct.nfcmrvl_private* %6, %struct.nfcmrvl_private** %4, align 8
  %7 = load i32, i32* @NFCMRVL_NCI_RUNNING, align 4
  %8 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %4, align 8
  %9 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %8, i32 0, i32 1
  %10 = call i32 @test_and_clear_bit(i32 %7, i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

13:                                               ; preds = %1
  %14 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %4, align 8
  %15 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.nfcmrvl_private*)*, i32 (%struct.nfcmrvl_private*)** %17, align 8
  %19 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %4, align 8
  %20 = call i32 %18(%struct.nfcmrvl_private* %19)
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %13, %12
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local %struct.nfcmrvl_private* @nci_get_drvdata(%struct.nci_dev*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
