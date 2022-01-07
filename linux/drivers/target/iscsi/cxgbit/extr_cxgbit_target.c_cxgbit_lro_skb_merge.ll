; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_lro_skb_merge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_lro_skb_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbit_sock = type { %struct.sk_buff* }
%struct.sk_buff = type { i32, i32, i32 }
%struct.cxgbit_lro_pdu_cb = type { i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.skb_shared_info = type { i64, i32* }

@PDUCBF_RX_HDR = common dso_local global i32 0, align 4
@PDUCBF_RX_DATA = common dso_local global i32 0, align 4
@PDUCBF_RX_STATUS = common dso_local global i32 0, align 4
@PDUCBF_RX_DATA_DDPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbit_sock*, %struct.sk_buff*, i64)* @cxgbit_lro_skb_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgbit_lro_skb_merge(%struct.cxgbit_sock* %0, %struct.sk_buff* %1, i64 %2) #0 {
  %4 = alloca %struct.cxgbit_sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.cxgbit_lro_pdu_cb*, align 8
  %9 = alloca %struct.cxgbit_lro_pdu_cb*, align 8
  %10 = alloca %struct.skb_shared_info*, align 8
  %11 = alloca %struct.skb_shared_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.cxgbit_sock* %0, %struct.cxgbit_sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %17 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %16, i32 0, i32 0
  %18 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  store %struct.sk_buff* %18, %struct.sk_buff** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = call %struct.cxgbit_lro_pdu_cb* @cxgbit_skb_lro_pdu_cb(%struct.sk_buff* %19, i64 0)
  store %struct.cxgbit_lro_pdu_cb* %20, %struct.cxgbit_lro_pdu_cb** %8, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call %struct.cxgbit_lro_pdu_cb* @cxgbit_skb_lro_pdu_cb(%struct.sk_buff* %21, i64 %22)
  store %struct.cxgbit_lro_pdu_cb* %23, %struct.cxgbit_lro_pdu_cb** %9, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %24)
  store %struct.skb_shared_info* %25, %struct.skb_shared_info** %10, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %26)
  store %struct.skb_shared_info* %27, %struct.skb_shared_info** %11, align 8
  store i32 0, i32* %12, align 4
  %28 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %9, align 8
  %29 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PDUCBF_RX_HDR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %112

34:                                               ; preds = %3
  %35 = load %struct.skb_shared_info*, %struct.skb_shared_info** %10, align 8
  %36 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %13, align 8
  %38 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %9, align 8
  %39 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %8, align 8
  %42 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %9, align 8
  %46 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %45, i32 0, i32 11
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %8, align 8
  %49 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %48, i32 0, i32 11
  store i32 %47, i32* %49, align 4
  %50 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %9, align 8
  %51 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %50, i32 0, i32 10
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %8, align 8
  %54 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %53, i32 0, i32 10
  store i32 %52, i32* %54, align 8
  %55 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %9, align 8
  %56 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %8, align 8
  %59 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 8
  %60 = load %struct.skb_shared_info*, %struct.skb_shared_info** %10, align 8
  %61 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %13, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load %struct.skb_shared_info*, %struct.skb_shared_info** %11, align 8
  %66 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %9, align 8
  %69 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = call i32 @memcpy(i32* %64, i32* %71, i32 4)
  %73 = load %struct.skb_shared_info*, %struct.skb_shared_info** %10, align 8
  %74 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %13, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = call i32 @skb_frag_page(i32* %77)
  %79 = call i32 @get_page(i32 %78)
  %80 = load %struct.skb_shared_info*, %struct.skb_shared_info** %10, align 8
  %81 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %81, align 8
  %84 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %8, align 8
  %85 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %84, i32 0, i32 9
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = load i64, i64* %13, align 8
  %89 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %8, align 8
  %90 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load %struct.skb_shared_info*, %struct.skb_shared_info** %10, align 8
  %92 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* %13, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = call i32 @skb_frag_size(i32* %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = add i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add i32 %105, %102
  store i32 %106, i32* %104, align 4
  %107 = load i32, i32* %12, align 4
  %108 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = add i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %34, %3
  %113 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %9, align 8
  %114 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @PDUCBF_RX_DATA, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %214

119:                                              ; preds = %112
  %120 = load %struct.skb_shared_info*, %struct.skb_shared_info** %10, align 8
  %121 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %14, align 8
  %123 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %9, align 8
  %124 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %8, align 8
  %127 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load i64, i64* %14, align 8
  %131 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %8, align 8
  %132 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %131, i32 0, i32 2
  store i64 %130, i64* %132, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %15, align 8
  br label %133

133:                                              ; preds = %178, %119
  %134 = load i64, i64* %15, align 8
  %135 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %9, align 8
  %136 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = icmp ult i64 %134, %137
  br i1 %138, label %139, label %183

139:                                              ; preds = %133
  %140 = load %struct.skb_shared_info*, %struct.skb_shared_info** %10, align 8
  %141 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* %14, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load %struct.skb_shared_info*, %struct.skb_shared_info** %11, align 8
  %146 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %9, align 8
  %149 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* %15, align 8
  %152 = add i64 %150, %151
  %153 = getelementptr inbounds i32, i32* %147, i64 %152
  %154 = call i32 @memcpy(i32* %144, i32* %153, i32 4)
  %155 = load %struct.skb_shared_info*, %struct.skb_shared_info** %10, align 8
  %156 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = load i64, i64* %14, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  %160 = call i32 @skb_frag_page(i32* %159)
  %161 = call i32 @get_page(i32 %160)
  %162 = load %struct.skb_shared_info*, %struct.skb_shared_info** %10, align 8
  %163 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load i64, i64* %14, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  %167 = call i32 @skb_frag_size(i32* %166)
  %168 = load i32, i32* %12, align 4
  %169 = add i32 %168, %167
  store i32 %169, i32* %12, align 4
  %170 = load %struct.skb_shared_info*, %struct.skb_shared_info** %10, align 8
  %171 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = add i64 %172, 1
  store i64 %173, i64* %171, align 8
  %174 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %8, align 8
  %175 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %174, i32 0, i32 9
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %139
  %179 = load i64, i64* %14, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %14, align 8
  %181 = load i64, i64* %15, align 8
  %182 = add i64 %181, 1
  store i64 %182, i64* %15, align 8
  br label %133

183:                                              ; preds = %133
  %184 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %9, align 8
  %185 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %184, i32 0, i32 8
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %8, align 8
  %188 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %187, i32 0, i32 8
  store i32 %186, i32* %188, align 8
  %189 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %8, align 8
  %190 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %189, i32 0, i32 6
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %8, align 8
  %193 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %192, i32 0, i32 7
  store i32 %191, i32* %193, align 4
  %194 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %9, align 8
  %195 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %8, align 8
  %198 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %197, i32 0, i32 3
  store i64 %196, i64* %198, align 8
  %199 = load i32, i32* %12, align 4
  %200 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %201 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = add i32 %202, %199
  store i32 %203, i32* %201, align 4
  %204 = load i32, i32* %12, align 4
  %205 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %206 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = add i32 %207, %204
  store i32 %208, i32* %206, align 4
  %209 = load i32, i32* %12, align 4
  %210 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %211 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = add i32 %212, %209
  store i32 %213, i32* %211, align 4
  br label %214

214:                                              ; preds = %183, %112
  %215 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %9, align 8
  %216 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @PDUCBF_RX_STATUS, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %253

221:                                              ; preds = %214
  %222 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %9, align 8
  %223 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %8, align 8
  %226 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = or i32 %227, %224
  store i32 %228, i32* %226, align 8
  %229 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %8, align 8
  %230 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @PDUCBF_RX_DATA, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %221
  %236 = load i32, i32* @PDUCBF_RX_DATA_DDPD, align 4
  %237 = xor i32 %236, -1
  %238 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %8, align 8
  %239 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = and i32 %240, %237
  store i32 %241, i32* %239, align 8
  br label %242

242:                                              ; preds = %235, %221
  %243 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %9, align 8
  %244 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %243, i32 0, i32 5
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %8, align 8
  %247 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %246, i32 0, i32 5
  store i32 %245, i32* %247, align 4
  %248 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %9, align 8
  %249 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %8, align 8
  %252 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %251, i32 0, i32 4
  store i32 %250, i32* %252, align 8
  br label %253

253:                                              ; preds = %242, %214
  ret void
}

declare dso_local %struct.cxgbit_lro_pdu_cb* @cxgbit_skb_lro_pdu_cb(%struct.sk_buff*, i64) #1

declare dso_local %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @get_page(i32) #1

declare dso_local i32 @skb_frag_page(i32*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
