; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_core.c_st21nfca_hci_target_from_gate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_core.c_st21nfca_hci_target_from_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }
%struct.nfc_target = type { i32, i32, i32, i32, i32 }

@NFC_NFCID1_MAXSIZE = common dso_local global i32 0, align 4
@NFC_PROTO_FELICA_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_JEWEL_MASK = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NFC_PROTO_ISO15693_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_hci_dev*, i32, %struct.nfc_target*)* @st21nfca_hci_target_from_gate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st21nfca_hci_target_from_gate(%struct.nfc_hci_dev* %0, i32 %1, %struct.nfc_target* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfc_hci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfc_target*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nfc_target* %2, %struct.nfc_target** %7, align 8
  %15 = load i32, i32* @NFC_NFCID1_MAXSIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %94 [
    i32 129, label %20
    i32 130, label %24
    i32 128, label %82
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* @NFC_PROTO_FELICA_MASK, align 4
  %22 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %23 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %97

24:                                               ; preds = %3
  %25 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %26 = call i32 @st21nfca_get_iso14443_3_atqa(%struct.nfc_hci_dev* %25, i32* %10)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %98

31:                                               ; preds = %24
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 12
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32, i32* @NFC_PROTO_JEWEL_MASK, align 4
  %36 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %37 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %39 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %38, i32 0, i32 1
  store i32 3072, i32* %39, align 4
  br label %81

40:                                               ; preds = %31
  %41 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %42 = call i32 @st21nfca_get_iso14443_3_sak(%struct.nfc_hci_dev* %41, i32* %11)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %98

47:                                               ; preds = %40
  %48 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %49 = call i32 @st21nfca_get_iso14443_3_uid(%struct.nfc_hci_dev* %48, i32* %18, i32* %9)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %98

54:                                               ; preds = %47
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @nfc_hci_sak_to_protocol(i32 %55)
  %57 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %58 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %60 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load i32, i32* @EPROTO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %98

66:                                               ; preds = %54
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %69 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %72 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %74 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @memcpy(i32 %75, i32* %18, i32 %76)
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %80 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %66, %34
  br label %97

82:                                               ; preds = %3
  %83 = load i32, i32* @NFC_PROTO_ISO15693_MASK, align 4
  %84 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %85 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %87 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %88 = call i32 @st21nfca_get_iso15693_inventory(%struct.nfc_hci_dev* %86, %struct.nfc_target* %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %82
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %98

93:                                               ; preds = %82
  br label %97

94:                                               ; preds = %3
  %95 = load i32, i32* @EPROTO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %98

97:                                               ; preds = %93, %81, %20
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %98

98:                                               ; preds = %97, %94, %91, %63, %52, %45, %29
  %99 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @st21nfca_get_iso14443_3_atqa(%struct.nfc_hci_dev*, i32*) #2

declare dso_local i32 @st21nfca_get_iso14443_3_sak(%struct.nfc_hci_dev*, i32*) #2

declare dso_local i32 @st21nfca_get_iso14443_3_uid(%struct.nfc_hci_dev*, i32*, i32*) #2

declare dso_local i32 @nfc_hci_sak_to_protocol(i32) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @st21nfca_get_iso15693_inventory(%struct.nfc_hci_dev*, %struct.nfc_target*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
