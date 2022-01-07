; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_dep.c_st21nfca_im_send_atr_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_dep.c_st21nfca_im_send_atr_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nfc_target* }
%struct.nfc_target = type { i64, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.st21nfca_hci_info = type { i32, %struct.TYPE_4__, %struct.st21nfca_hci_info*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.st21nfca_atr_req = type { i32, i32, i32, i32, i64, %struct.st21nfca_atr_req*, i32, i32 }

@ST21NFCA_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@ST21NFCA_ATR_REQ_MIN_SIZE = common dso_local global i64 0, align 8
@ST21NFCA_ATR_REQ_MAX_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"14.6.1.1\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ST21NFCA_NFCIP1_REQ = common dso_local global i32 0, align 4
@ST21NFCA_NFCIP1_ATR_REQ = common dso_local global i32 0, align 4
@NFC_NFCID3_MAXSIZE = common dso_local global i32 0, align 4
@ST21NFCA_LR_BITS_PAYLOAD_SIZE_254B = common dso_local global i32 0, align 4
@ST21NFCA_GB_BIT = common dso_local global i32 0, align 4
@ST21NFCA_CB_TYPE_READER_F = common dso_local global i32 0, align 4
@st21nfca_im_recv_atr_res_cb = common dso_local global i32 0, align 4
@ST21NFCA_RF_READER_F_GATE = common dso_local global i32 0, align 4
@ST21NFCA_WR_XCHG_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st21nfca_im_send_atr_req(%struct.nfc_hci_dev* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfc_hci_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.st21nfca_hci_info*, align 8
  %10 = alloca %struct.st21nfca_atr_req*, align 8
  %11 = alloca %struct.nfc_target*, align 8
  %12 = alloca i64, align 8
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %14 = call %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev* %13)
  store %struct.st21nfca_hci_info* %14, %struct.st21nfca_hci_info** %9, align 8
  %15 = load i32, i32* @ST21NFCA_DEFAULT_TIMEOUT, align 4
  %16 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %9, align 8
  %17 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load i64, i64* @ST21NFCA_ATR_REQ_MIN_SIZE, align 8
  %20 = load i64, i64* %7, align 8
  %21 = add i64 %19, %20
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* @ST21NFCA_ATR_REQ_MAX_SIZE, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %168

29:                                               ; preds = %3
  %30 = load i64, i64* %7, align 8
  %31 = add i64 40, %30
  %32 = add i64 %31, 1
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.sk_buff* @alloc_skb(i32 %33, i32 %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %8, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = icmp ne %struct.sk_buff* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %168

41:                                               ; preds = %29
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = call i32 @skb_reserve(%struct.sk_buff* %42, i32 1)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %45 = call i32 @skb_put(%struct.sk_buff* %44, i32 40)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.st21nfca_atr_req*
  store %struct.st21nfca_atr_req* %49, %struct.st21nfca_atr_req** %10, align 8
  %50 = load %struct.st21nfca_atr_req*, %struct.st21nfca_atr_req** %10, align 8
  %51 = call i32 @memset(%struct.st21nfca_atr_req* %50, i32 0, i32 40)
  %52 = load i32, i32* @ST21NFCA_NFCIP1_REQ, align 4
  %53 = load %struct.st21nfca_atr_req*, %struct.st21nfca_atr_req** %10, align 8
  %54 = getelementptr inbounds %struct.st21nfca_atr_req, %struct.st21nfca_atr_req* %53, i32 0, i32 7
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @ST21NFCA_NFCIP1_ATR_REQ, align 4
  %56 = load %struct.st21nfca_atr_req*, %struct.st21nfca_atr_req** %10, align 8
  %57 = getelementptr inbounds %struct.st21nfca_atr_req, %struct.st21nfca_atr_req* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 8
  %58 = load %struct.st21nfca_atr_req*, %struct.st21nfca_atr_req** %10, align 8
  %59 = getelementptr inbounds %struct.st21nfca_atr_req, %struct.st21nfca_atr_req* %58, i32 0, i32 5
  %60 = load %struct.st21nfca_atr_req*, %struct.st21nfca_atr_req** %59, align 8
  %61 = load i32, i32* @NFC_NFCID3_MAXSIZE, align 4
  %62 = call i32 @memset(%struct.st21nfca_atr_req* %60, i32 0, i32 %61)
  %63 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %64 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load %struct.nfc_target*, %struct.nfc_target** %66, align 8
  store %struct.nfc_target* %67, %struct.nfc_target** %11, align 8
  %68 = load %struct.nfc_target*, %struct.nfc_target** %11, align 8
  %69 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %41
  %73 = load %struct.st21nfca_atr_req*, %struct.st21nfca_atr_req** %10, align 8
  %74 = getelementptr inbounds %struct.st21nfca_atr_req, %struct.st21nfca_atr_req* %73, i32 0, i32 5
  %75 = load %struct.st21nfca_atr_req*, %struct.st21nfca_atr_req** %74, align 8
  %76 = load %struct.nfc_target*, %struct.nfc_target** %11, align 8
  %77 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.nfc_target*, %struct.nfc_target** %11, align 8
  %80 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @memcpy(%struct.st21nfca_atr_req* %75, i32 %78, i64 %81)
  br label %89

83:                                               ; preds = %41
  %84 = load %struct.st21nfca_atr_req*, %struct.st21nfca_atr_req** %10, align 8
  %85 = getelementptr inbounds %struct.st21nfca_atr_req, %struct.st21nfca_atr_req* %84, i32 0, i32 5
  %86 = load %struct.st21nfca_atr_req*, %struct.st21nfca_atr_req** %85, align 8
  %87 = load i32, i32* @NFC_NFCID3_MAXSIZE, align 4
  %88 = call i32 @get_random_bytes(%struct.st21nfca_atr_req* %86, i32 %87)
  br label %89

89:                                               ; preds = %83, %72
  %90 = load %struct.st21nfca_atr_req*, %struct.st21nfca_atr_req** %10, align 8
  %91 = getelementptr inbounds %struct.st21nfca_atr_req, %struct.st21nfca_atr_req* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  %92 = load %struct.st21nfca_atr_req*, %struct.st21nfca_atr_req** %10, align 8
  %93 = getelementptr inbounds %struct.st21nfca_atr_req, %struct.st21nfca_atr_req* %92, i32 0, i32 1
  store i32 0, i32* %93, align 4
  %94 = load %struct.st21nfca_atr_req*, %struct.st21nfca_atr_req** %10, align 8
  %95 = getelementptr inbounds %struct.st21nfca_atr_req, %struct.st21nfca_atr_req* %94, i32 0, i32 2
  store i32 0, i32* %95, align 8
  %96 = load i32, i32* @ST21NFCA_LR_BITS_PAYLOAD_SIZE_254B, align 4
  %97 = load %struct.st21nfca_atr_req*, %struct.st21nfca_atr_req** %10, align 8
  %98 = getelementptr inbounds %struct.st21nfca_atr_req, %struct.st21nfca_atr_req* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load i64, i64* %7, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %89
  %102 = load i32, i32* @ST21NFCA_GB_BIT, align 4
  %103 = load %struct.st21nfca_atr_req*, %struct.st21nfca_atr_req** %10, align 8
  %104 = getelementptr inbounds %struct.st21nfca_atr_req, %struct.st21nfca_atr_req* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  %107 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %108 = load i32*, i32** %6, align 8
  %109 = load i64, i64* %7, align 8
  %110 = call i32 @skb_put_data(%struct.sk_buff* %107, i32* %108, i64 %109)
  br label %111

111:                                              ; preds = %101, %89
  %112 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %113 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add i64 40, %114
  %116 = load %struct.st21nfca_atr_req*, %struct.st21nfca_atr_req** %10, align 8
  %117 = getelementptr inbounds %struct.st21nfca_atr_req, %struct.st21nfca_atr_req* %116, i32 0, i32 4
  store i64 %115, i64* %117, align 8
  %118 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %9, align 8
  %119 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, 16
  %123 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %124 = call i64 @skb_push(%struct.sk_buff* %123, i32 1)
  %125 = inttoptr i64 %124 to i32*
  store i32 %122, i32* %125, align 4
  %126 = load i32, i32* @ST21NFCA_CB_TYPE_READER_F, align 4
  %127 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %9, align 8
  %128 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 8
  %129 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %9, align 8
  %130 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %9, align 8
  %131 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %130, i32 0, i32 2
  store %struct.st21nfca_hci_info* %129, %struct.st21nfca_hci_info** %131, align 8
  %132 = load i32, i32* @st21nfca_im_recv_atr_res_cb, align 4
  %133 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %9, align 8
  %134 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load %struct.st21nfca_atr_req*, %struct.st21nfca_atr_req** %10, align 8
  %136 = getelementptr inbounds %struct.st21nfca_atr_req, %struct.st21nfca_atr_req* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %9, align 8
  %139 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  store i32 %137, i32* %140, align 4
  %141 = load %struct.st21nfca_atr_req*, %struct.st21nfca_atr_req** %10, align 8
  %142 = getelementptr inbounds %struct.st21nfca_atr_req, %struct.st21nfca_atr_req* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %9, align 8
  %145 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 2
  store i32 %143, i32* %146, align 4
  %147 = load %struct.st21nfca_atr_req*, %struct.st21nfca_atr_req** %10, align 8
  %148 = getelementptr inbounds %struct.st21nfca_atr_req, %struct.st21nfca_atr_req* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @ST21NFCA_PP2LRI(i32 %149)
  %151 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %9, align 8
  %152 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 3
  store i32 %150, i32* %153, align 4
  %154 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %155 = load i32, i32* @ST21NFCA_RF_READER_F_GATE, align 4
  %156 = load i32, i32* @ST21NFCA_WR_XCHG_DATA, align 4
  %157 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %158 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %161 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %9, align 8
  %164 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %9, align 8
  %167 = call i32 @nfc_hci_send_cmd_async(%struct.nfc_hci_dev* %154, i32 %155, i32 %156, i64 %159, i32 %162, i32 %165, %struct.st21nfca_hci_info* %166)
  store i32 %167, i32* %4, align 4
  br label %168

168:                                              ; preds = %111, %38, %25
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev*) #1

declare dso_local i32 @PROTOCOL_ERR(i8*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.st21nfca_atr_req*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.st21nfca_atr_req*, i32, i64) #1

declare dso_local i32 @get_random_bytes(%struct.st21nfca_atr_req*, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i64) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @ST21NFCA_PP2LRI(i32) #1

declare dso_local i32 @nfc_hci_send_cmd_async(%struct.nfc_hci_dev*, i32, i32, i64, i32, i32, %struct.st21nfca_hci_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
