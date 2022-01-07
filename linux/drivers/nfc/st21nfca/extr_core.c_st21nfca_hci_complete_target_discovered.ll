; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_core.c_st21nfca_hci_complete_target_discovered.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_core.c_st21nfca_hci_complete_target_discovered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }
%struct.nfc_target = type { i32*, i64, i64, i8* }
%struct.sk_buff = type { i64, i32 }

@ST21NFCA_RF_READER_F_GATE = common dso_local global i64 0, align 8
@ST21NFCA_RF_READER_F_NFCID2 = common dso_local global i32 0, align 4
@NFC_SENSF_RES_MAXSIZE = common dso_local global i64 0, align 8
@EPROTO = common dso_local global i32 0, align 4
@NFC_PROTO_NFC_DEP_MASK = common dso_local global i8* null, align 8
@NFC_PROTO_FELICA_MASK = common dso_local global i8* null, align 8
@ST21NFCA_RF_READER_F_NFCID1 = common dso_local global i32 0, align 4
@NFC_NFCID1_MAXSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_hci_dev*, i64, %struct.nfc_target*)* @st21nfca_hci_complete_target_discovered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st21nfca_hci_complete_target_discovered(%struct.nfc_hci_dev* %0, i64 %1, %struct.nfc_target* %2) #0 {
  %4 = alloca %struct.nfc_hci_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.nfc_target*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.nfc_target* %2, %struct.nfc_target** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @ST21NFCA_RF_READER_F_GATE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %114

12:                                               ; preds = %3
  %13 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %14 = load i64, i64* @ST21NFCA_RF_READER_F_GATE, align 8
  %15 = load i32, i32* @ST21NFCA_RF_READER_F_NFCID2, align 4
  %16 = call i32 @nfc_hci_get_param(%struct.nfc_hci_dev* %13, i64 %14, i32 %15, %struct.sk_buff** %8)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %115

20:                                               ; preds = %12
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NFC_SENSF_RES_MAXSIZE, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EPROTO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %115

29:                                               ; preds = %20
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %72

34:                                               ; preds = %29
  %35 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %36 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @memcpy(i32* %37, i32 %40, i64 %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %49 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %51 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %67

56:                                               ; preds = %34
  %57 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %58 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 254
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i8*, i8** @NFC_PROTO_NFC_DEP_MASK, align 8
  %65 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %66 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  br label %71

67:                                               ; preds = %56, %34
  %68 = load i8*, i8** @NFC_PROTO_FELICA_MASK, align 8
  %69 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %70 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %67, %63
  br label %110

72:                                               ; preds = %29
  %73 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %74 = call i32 @kfree_skb(%struct.sk_buff* %73)
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  %75 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %76 = load i64, i64* @ST21NFCA_RF_READER_F_GATE, align 8
  %77 = load i32, i32* @ST21NFCA_RF_READER_F_NFCID1, align 4
  %78 = call i32 @nfc_hci_get_param(%struct.nfc_hci_dev* %75, i64 %76, i32 %77, %struct.sk_buff** %8)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %115

82:                                               ; preds = %72
  %83 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @NFC_NFCID1_MAXSIZE, align 8
  %87 = icmp sgt i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i32, i32* @EPROTO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %7, align 4
  br label %115

91:                                               ; preds = %82
  %92 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %93 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @memcpy(i32* %94, i32 %97, i64 %100)
  %102 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %106 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  %107 = load i8*, i8** @NFC_PROTO_NFC_DEP_MASK, align 8
  %108 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %109 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %108, i32 0, i32 3
  store i8* %107, i8** %109, align 8
  br label %110

110:                                              ; preds = %91, %71
  %111 = load i64, i64* @ST21NFCA_RF_READER_F_GATE, align 8
  %112 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %113 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %112, i32 0, i32 2
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %110, %3
  store i32 1, i32* %7, align 4
  br label %115

115:                                              ; preds = %114, %88, %81, %26, %19
  %116 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %117 = call i32 @kfree_skb(%struct.sk_buff* %116)
  %118 = load i32, i32* %7, align 4
  ret i32 %118
}

declare dso_local i32 @nfc_hci_get_param(%struct.nfc_hci_dev*, i64, i32, %struct.sk_buff**) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
