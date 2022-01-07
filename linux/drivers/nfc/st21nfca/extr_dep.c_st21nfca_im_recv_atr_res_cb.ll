; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_dep.c_st21nfca_im_recv_atr_res_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_dep.c_st21nfca_im_recv_atr_res_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.st21nfca_hci_info = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.st21nfca_atr_res = type { i32, i32, i32, i32, i32, i32 }

@NFC_COMM_PASSIVE = common dso_local global i32 0, align 4
@NFC_RF_INITIATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sk_buff*, i32)* @st21nfca_im_recv_atr_res_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st21nfca_im_recv_atr_res_cb(i8* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.st21nfca_hci_info*, align 8
  %8 = alloca %struct.st21nfca_atr_res*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.st21nfca_hci_info*
  store %struct.st21nfca_hci_info* %11, %struct.st21nfca_hci_info** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %125

15:                                               ; preds = %3
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  br label %125

19:                                               ; preds = %15
  %20 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %7, align 8
  %21 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %122 [
    i32 128, label %23
  ]

23:                                               ; preds = %19
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = call i32 @skb_trim(%struct.sk_buff* %24, i32 %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.st21nfca_atr_res*
  store %struct.st21nfca_atr_res* %33, %struct.st21nfca_atr_res** %8, align 8
  %34 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %7, align 8
  %35 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.st21nfca_atr_res*, %struct.st21nfca_atr_res** %8, align 8
  %40 = getelementptr inbounds %struct.st21nfca_atr_res, %struct.st21nfca_atr_res* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = sub i64 %45, 24
  %47 = trunc i64 %46 to i32
  %48 = call i32 @nfc_set_remote_general_bytes(i32 %38, i32 %41, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %23
  br label %125

52:                                               ; preds = %23
  %53 = load %struct.st21nfca_atr_res*, %struct.st21nfca_atr_res** %8, align 8
  %54 = getelementptr inbounds %struct.st21nfca_atr_res, %struct.st21nfca_atr_res* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sge i32 %55, 14
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %7, align 8
  %59 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 14, i32* %60, align 8
  br label %69

61:                                               ; preds = %52
  %62 = load %struct.st21nfca_atr_res*, %struct.st21nfca_atr_res** %8, align 8
  %63 = getelementptr inbounds %struct.st21nfca_atr_res, %struct.st21nfca_atr_res* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  %66 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %7, align 8
  %67 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  br label %69

69:                                               ; preds = %61, %57
  %70 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %7, align 8
  %71 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, 16
  store i32 %74, i32* %72, align 8
  %75 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %7, align 8
  %76 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %7, align 8
  %81 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @NFC_COMM_PASSIVE, align 4
  %85 = load i32, i32* @NFC_RF_INITIATOR, align 4
  %86 = call i32 @nfc_dep_link_is_up(i32 %79, i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %69
  br label %125

90:                                               ; preds = %69
  %91 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %7, align 8
  %92 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  store i32 0, i32* %93, align 8
  %94 = load %struct.st21nfca_atr_res*, %struct.st21nfca_atr_res** %8, align 8
  %95 = getelementptr inbounds %struct.st21nfca_atr_res, %struct.st21nfca_atr_res* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ST21NFCA_PP2LRI(i32 %96)
  %98 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %7, align 8
  %99 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %97, %101
  br i1 %102, label %103, label %121

103:                                              ; preds = %90
  %104 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %7, align 8
  %105 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load %struct.st21nfca_atr_res*, %struct.st21nfca_atr_res** %8, align 8
  %108 = getelementptr inbounds %struct.st21nfca_atr_res, %struct.st21nfca_atr_res* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.st21nfca_atr_res*, %struct.st21nfca_atr_res** %8, align 8
  %111 = getelementptr inbounds %struct.st21nfca_atr_res, %struct.st21nfca_atr_res* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.st21nfca_atr_res*, %struct.st21nfca_atr_res** %8, align 8
  %114 = getelementptr inbounds %struct.st21nfca_atr_res, %struct.st21nfca_atr_res* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.st21nfca_atr_res*, %struct.st21nfca_atr_res** %8, align 8
  %117 = getelementptr inbounds %struct.st21nfca_atr_res, %struct.st21nfca_atr_res* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ST21NFCA_PP2LRI(i32 %118)
  %120 = call i32 @st21nfca_im_send_psl_req(%struct.TYPE_4__* %106, i32 %109, i32 %112, i32 %115, i32 %119)
  br label %121

121:                                              ; preds = %103, %90
  br label %125

122:                                              ; preds = %19
  %123 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %124 = call i32 @kfree_skb(%struct.sk_buff* %123)
  br label %125

125:                                              ; preds = %14, %18, %51, %89, %122, %121
  ret void
}

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @nfc_set_remote_general_bytes(i32, i32, i32) #1

declare dso_local i32 @nfc_dep_link_is_up(i32, i32, i32, i32) #1

declare dso_local i32 @ST21NFCA_PP2LRI(i32) #1

declare dso_local i32 @st21nfca_im_send_psl_req(%struct.TYPE_4__*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
