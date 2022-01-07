; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_mei_phy.c_mei_nfc_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_mei_phy.c_mei_nfc_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_mei_phy = type { i32, i32, i32 }
%struct.mei_nfc_hdr = type { i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"receive\00", align 1
@MEI_NFC_CMD_HCI_SEND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_mei_phy*, i32*, i64)* @mei_nfc_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_nfc_recv(%struct.nfc_mei_phy* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfc_mei_phy*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mei_nfc_hdr*, align 8
  %9 = alloca i32, align 4
  store %struct.nfc_mei_phy* %0, %struct.nfc_mei_phy** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.nfc_mei_phy*, %struct.nfc_mei_phy** %5, align 8
  %11 = getelementptr inbounds %struct.nfc_mei_phy, %struct.nfc_mei_phy* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @mei_cldev_recv(i32 %12, i32* %13, i64 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %41

20:                                               ; preds = %3
  %21 = load i32*, i32** %6, align 8
  %22 = bitcast i32* %21 to %struct.mei_nfc_hdr*
  store %struct.mei_nfc_hdr* %22, %struct.mei_nfc_hdr** %8, align 8
  %23 = load %struct.mei_nfc_hdr*, %struct.mei_nfc_hdr** %8, align 8
  %24 = call i32 @MEI_DUMP_NFC_HDR(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.mei_nfc_hdr* %23)
  %25 = load %struct.mei_nfc_hdr*, %struct.mei_nfc_hdr** %8, align 8
  %26 = getelementptr inbounds %struct.mei_nfc_hdr, %struct.mei_nfc_hdr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MEI_NFC_CMD_HCI_SEND, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %20
  %31 = load %struct.mei_nfc_hdr*, %struct.mei_nfc_hdr** %8, align 8
  %32 = getelementptr inbounds %struct.mei_nfc_hdr, %struct.mei_nfc_hdr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.nfc_mei_phy*, %struct.nfc_mei_phy** %5, align 8
  %35 = getelementptr inbounds %struct.nfc_mei_phy, %struct.nfc_mei_phy* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.nfc_mei_phy*, %struct.nfc_mei_phy** %5, align 8
  %37 = getelementptr inbounds %struct.nfc_mei_phy, %struct.nfc_mei_phy* %36, i32 0, i32 0
  %38 = call i32 @wake_up(i32* %37)
  store i32 0, i32* %4, align 4
  br label %41

39:                                               ; preds = %20
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %30, %18
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @mei_cldev_recv(i32, i32*, i64) #1

declare dso_local i32 @MEI_DUMP_NFC_HDR(i8*, %struct.mei_nfc_hdr*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
