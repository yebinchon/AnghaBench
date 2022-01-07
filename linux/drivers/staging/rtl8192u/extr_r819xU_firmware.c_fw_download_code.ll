; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r819xU_firmware.c_fw_download_code.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r819xU_firmware.c_fw_download_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 (%struct.sk_buff*, %struct.net_device*)*, i32*, i64, i32 (%struct.net_device*, i64)* }
%struct.sk_buff = type { i8*, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.cb_desc = type { i64, i64, i64, i32 }

@USB_HWDESC_HEADER_LEN = common dso_local global i64 0, align 8
@MAX_DEV_ADDR_SIZE = common dso_local global i64 0, align 8
@TXCMD_QUEUE = common dso_local global i64 0, align 8
@DESC_PACKET_TYPE_INIT = common dso_local global i32 0, align 4
@COMP_FIRMWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"=====================================================> tx full!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64*, i64)* @fw_download_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_download_code(%struct.net_device* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.r8192_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.cb_desc*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %20)
  store %struct.r8192_priv* %21, %struct.r8192_priv** %8, align 8
  store i32 1, i32* %9, align 4
  store i64 0, i64* %12, align 8
  %22 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %23 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %14, align 8
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = call i32 @firmware_init_param(%struct.net_device* %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %10, align 8
  br label %30

30:                                               ; preds = %226, %3
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %12, align 8
  %33 = sub nsw i64 %31, %32
  %34 = load i64, i64* %10, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i64, i64* %10, align 8
  store i64 %37, i64* %11, align 8
  store i64 0, i64* %18, align 8
  br label %42

38:                                               ; preds = %30
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %12, align 8
  %41 = sub nsw i64 %39, %40
  store i64 %41, i64* %11, align 8
  store i64 1, i64* %18, align 8
  br label %42

42:                                               ; preds = %38, %36
  %43 = load i64, i64* @USB_HWDESC_HEADER_LEN, align 8
  %44 = load i64, i64* %11, align 8
  %45 = add nsw i64 %43, %44
  %46 = add nsw i64 %45, 4
  %47 = call %struct.sk_buff* @dev_alloc_skb(i64 %46)
  store %struct.sk_buff* %47, %struct.sk_buff** %15, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %49 = icmp ne %struct.sk_buff* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %232

51:                                               ; preds = %42
  %52 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 @memcpy(i8* %55, %struct.net_device** %5, i32 8)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MAX_DEV_ADDR_SIZE, align 8
  %61 = add nsw i64 %59, %60
  %62 = inttoptr i64 %61 to %struct.cb_desc*
  store %struct.cb_desc* %62, %struct.cb_desc** %17, align 8
  %63 = load i64, i64* @TXCMD_QUEUE, align 8
  %64 = load %struct.cb_desc*, %struct.cb_desc** %17, align 8
  %65 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load i32, i32* @DESC_PACKET_TYPE_INIT, align 4
  %67 = load %struct.cb_desc*, %struct.cb_desc** %17, align 8
  %68 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load i64, i64* %18, align 8
  %70 = load %struct.cb_desc*, %struct.cb_desc** %17, align 8
  %71 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %73 = load i64, i64* @USB_HWDESC_HEADER_LEN, align 8
  %74 = call i32 @skb_reserve(%struct.sk_buff* %72, i64 %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %16, align 8
  store i32 0, i32* %13, align 4
  br label %78

78:                                               ; preds = %156, %51
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %11, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %159

83:                                               ; preds = %78
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 0
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %11, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load i64*, i64** %6, align 8
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, 3
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %90, i64 %93
  %95 = load i64, i64* %94, align 8
  br label %97

96:                                               ; preds = %83
  br label %97

97:                                               ; preds = %96, %89
  %98 = phi i64 [ %95, %89 ], [ 0, %96 ]
  %99 = trunc i64 %98 to i8
  %100 = load i8*, i8** %16, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %16, align 8
  store i8 %99, i8* %100, align 1
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* %11, align 8
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %97
  %108 = load i64*, i64** %6, align 8
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 2
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %108, i64 %111
  %113 = load i64, i64* %112, align 8
  br label %115

114:                                              ; preds = %97
  br label %115

115:                                              ; preds = %114, %107
  %116 = phi i64 [ %113, %107 ], [ 0, %114 ]
  %117 = trunc i64 %116 to i8
  %118 = load i8*, i8** %16, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %16, align 8
  store i8 %117, i8* %118, align 1
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %120, 2
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* %11, align 8
  %124 = icmp slt i64 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %115
  %126 = load i64*, i64** %6, align 8
  %127 = load i32, i32* %13, align 4
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %126, i64 %129
  %131 = load i64, i64* %130, align 8
  br label %133

132:                                              ; preds = %115
  br label %133

133:                                              ; preds = %132, %125
  %134 = phi i64 [ %131, %125 ], [ 0, %132 ]
  %135 = trunc i64 %134 to i8
  %136 = load i8*, i8** %16, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %16, align 8
  store i8 %135, i8* %136, align 1
  %138 = load i32, i32* %13, align 4
  %139 = add nsw i32 %138, 3
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* %11, align 8
  %142 = icmp slt i64 %140, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %133
  %144 = load i64*, i64** %6, align 8
  %145 = load i32, i32* %13, align 4
  %146 = add nsw i32 %145, 0
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %144, i64 %147
  %149 = load i64, i64* %148, align 8
  br label %151

150:                                              ; preds = %133
  br label %151

151:                                              ; preds = %150, %143
  %152 = phi i64 [ %149, %143 ], [ 0, %150 ]
  %153 = trunc i64 %152 to i8
  %154 = load i8*, i8** %16, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %16, align 8
  store i8 %153, i8* %154, align 1
  br label %156

156:                                              ; preds = %151
  %157 = load i32, i32* %13, align 4
  %158 = add nsw i32 %157, 4
  store i32 %158, i32* %13, align 4
  br label %78

159:                                              ; preds = %78
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = load %struct.cb_desc*, %struct.cb_desc** %17, align 8
  %163 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %162, i32 0, i32 2
  store i64 %161, i64* %163, align 8
  %164 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %165 = load i32, i32* %13, align 4
  %166 = call i32 @skb_put(%struct.sk_buff* %164, i32 %165)
  %167 = load %struct.cb_desc*, %struct.cb_desc** %17, align 8
  %168 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  store i64 %169, i64* %19, align 8
  %170 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %171 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %170, i32 0, i32 0
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 3
  %174 = load i32 (%struct.net_device*, i64)*, i32 (%struct.net_device*, i64)** %173, align 8
  %175 = load %struct.net_device*, %struct.net_device** %5, align 8
  %176 = load i64, i64* %19, align 8
  %177 = call i32 %174(%struct.net_device* %175, i64 %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %196

179:                                              ; preds = %159
  %180 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %181 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %180, i32 0, i32 0
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = load i64, i64* %19, align 8
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  %187 = call i32 @skb_queue_empty(i32* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %179
  %190 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %191 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %190, i32 0, i32 0
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %210

196:                                              ; preds = %189, %179, %159
  %197 = load i32, i32* @COMP_FIRMWARE, align 4
  %198 = call i32 @RT_TRACE(i32 %197, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %199 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %200 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %199, i32 0, i32 0
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = load %struct.cb_desc*, %struct.cb_desc** %17, align 8
  %205 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds i32, i32* %203, i64 %206
  %208 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %209 = call i32 @skb_queue_tail(i32* %207, %struct.sk_buff* %208)
  br label %219

210:                                              ; preds = %189
  %211 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %212 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %211, i32 0, i32 0
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 0
  %215 = load i32 (%struct.sk_buff*, %struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*)** %214, align 8
  %216 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %217 = load %struct.net_device*, %struct.net_device** %5, align 8
  %218 = call i32 %215(%struct.sk_buff* %216, %struct.net_device* %217)
  br label %219

219:                                              ; preds = %210, %196
  %220 = load i64, i64* %11, align 8
  %221 = load i64*, i64** %6, align 8
  %222 = getelementptr inbounds i64, i64* %221, i64 %220
  store i64* %222, i64** %6, align 8
  %223 = load i64, i64* %11, align 8
  %224 = load i64, i64* %12, align 8
  %225 = add nsw i64 %224, %223
  store i64 %225, i64* %12, align 8
  br label %226

226:                                              ; preds = %219
  %227 = load i64, i64* %12, align 8
  %228 = load i64, i64* %7, align 8
  %229 = icmp slt i64 %227, %228
  br i1 %229, label %30, label %230

230:                                              ; preds = %226
  %231 = load i32, i32* %9, align 4
  store i32 %231, i32* %4, align 4
  br label %232

232:                                              ; preds = %230, %50
  %233 = load i32, i32* %4, align 4
  ret i32 %233
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @firmware_init_param(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @memcpy(i8*, %struct.net_device**, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @RT_TRACE(i32, i8*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
