; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_main.c_nfcmrvl_nci_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_main.c_nfcmrvl_nci_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.sk_buff = type { i8, i8* }
%struct.nfcmrvl_private = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 (%struct.nfcmrvl_private*, %struct.sk_buff*)* }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"send entry, len %d\0A\00", align 1
@NFCMRVL_HCI_EVENT_HEADER_SIZE = common dso_local global i32 0, align 4
@NFCMRVL_HCI_COMMAND_CODE = common dso_local global i8 0, align 1
@NFCMRVL_HCI_OGF = common dso_local global i8 0, align 1
@NFCMRVL_HCI_OCF = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nci_dev*, %struct.sk_buff*)* @nfcmrvl_nci_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfcmrvl_nci_send(%struct.nci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nfcmrvl_private*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %9 = call %struct.nfcmrvl_private* @nci_get_drvdata(%struct.nci_dev* %8)
  store %struct.nfcmrvl_private* %9, %struct.nfcmrvl_private** %5, align 8
  %10 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %5, align 8
  %11 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i8, i8* %14, align 8
  %16 = call i32 @nfc_info(i32 %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8 zeroext %15)
  %17 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %18 = bitcast %struct.nci_dev* %17 to i8*
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %5, align 8
  %22 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %2
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i8, i8* %28, align 8
  store i8 %29, i8* %7, align 1
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = load i32, i32* @NFCMRVL_HCI_EVENT_HEADER_SIZE, align 4
  %32 = call i8* @skb_push(%struct.sk_buff* %30, i32 %31)
  store i8* %32, i8** %6, align 8
  %33 = load i8, i8* @NFCMRVL_HCI_COMMAND_CODE, align 1
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  store i8 %33, i8* %35, align 1
  %36 = load i8, i8* @NFCMRVL_HCI_OGF, align 1
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  store i8 %36, i8* %38, align 1
  %39 = load i8, i8* @NFCMRVL_HCI_OCF, align 1
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  store i8 %39, i8* %41, align 1
  %42 = load i8, i8* %7, align 1
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 3
  store i8 %42, i8* %44, align 1
  br label %45

45:                                               ; preds = %26, %2
  %46 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %5, align 8
  %47 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32 (%struct.nfcmrvl_private*, %struct.sk_buff*)*, i32 (%struct.nfcmrvl_private*, %struct.sk_buff*)** %49, align 8
  %51 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %5, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = call i32 %50(%struct.nfcmrvl_private* %51, %struct.sk_buff* %52)
  ret i32 %53
}

declare dso_local %struct.nfcmrvl_private* @nci_get_drvdata(%struct.nci_dev*) #1

declare dso_local i32 @nfc_info(i32, i8*, i8 zeroext) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
