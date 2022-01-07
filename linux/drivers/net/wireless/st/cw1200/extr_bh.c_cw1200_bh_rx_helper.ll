; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_bh.c_cw1200_bh_rx_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_bh.c_cw1200_bh_rx_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (i32, i64)* }
%struct.sk_buff = type { i32* }
%struct.wsm_hdr = type { i32, i32 }

@ST90TDS_CONT_NEXT_LEN_MASK = common dso_local global i32 0, align 4
@EFFECTIVE_BUF_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Invalid read len: %zu (%04x)\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Read aligned len: %zu\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"rx blew up, len %zu\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"<-- \00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*, i32*, i32*)* @cw1200_bh_rx_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cw1200_bh_rx_helper(%struct.cw1200_common* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cw1200_common*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.wsm_hdr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %8, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  store i32 1, i32* %14, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ST90TDS_CONT_NEXT_LEN_MASK, align 4
  %21 = and i32 %19, %20
  %22 = mul nsw i32 %21, 2
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %222

27:                                               ; preds = %3
  %28 = load i64, i64* %8, align 8
  %29 = icmp ult i64 %28, 8
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @EFFECTIVE_BUF_SIZE, align 8
  %33 = icmp ugt i64 %31, %32
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i1 [ true, %27 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @WARN_ON(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i64, i64* %8, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %40, i32 %42)
  br label %215

44:                                               ; preds = %34
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %45, 2
  store i64 %46, i64* %8, align 8
  %47 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %48 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %47, i32 0, i32 3
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64 (i32, i64)*, i64 (i32, i64)** %50, align 8
  %52 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %53 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i64 %51(i32 %54, i64 %55)
  store i64 %56, i64* %15, align 8
  %57 = load i64, i64* %15, align 8
  %58 = load i64, i64* @EFFECTIVE_BUF_SIZE, align 8
  %59 = icmp ugt i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i64 @WARN_ON_ONCE(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %44
  %64 = load i64, i64* %15, align 8
  %65 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %64)
  br label %66

66:                                               ; preds = %63, %44
  %67 = load i64, i64* %15, align 8
  %68 = call %struct.sk_buff* @dev_alloc_skb(i64 %67)
  store %struct.sk_buff* %68, %struct.sk_buff** %9, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %70 = icmp ne %struct.sk_buff* %69, null
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i64 @WARN_ON(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %215

76:                                               ; preds = %66
  %77 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %78 = call i32 @skb_trim(%struct.sk_buff* %77, i64 0)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %80 = load i64, i64* %8, align 8
  %81 = call i32 @skb_put(%struct.sk_buff* %79, i64 %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  store i32* %84, i32** %16, align 8
  %85 = load i32*, i32** %16, align 8
  %86 = icmp ne i32* %85, null
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i64 @WARN_ON(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %76
  br label %215

92:                                               ; preds = %76
  %93 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %94 = load i32*, i32** %16, align 8
  %95 = load i64, i64* %15, align 8
  %96 = call i32 @cw1200_data_read(%struct.cw1200_common* %93, i32* %94, i64 %95)
  %97 = call i64 @WARN_ON(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load i64, i64* %15, align 8
  %101 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %100)
  br label %215

102:                                              ; preds = %92
  %103 = load i32*, i32** %16, align 8
  %104 = load i64, i64* %15, align 8
  %105 = udiv i64 %104, 2
  %106 = sub i64 %105, 1
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @__le16_to_cpu(i32 %108)
  %110 = load i32*, i32** %6, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i32*, i32** %16, align 8
  %112 = bitcast i32* %111 to %struct.wsm_hdr*
  store %struct.wsm_hdr* %112, %struct.wsm_hdr** %10, align 8
  %113 = load %struct.wsm_hdr*, %struct.wsm_hdr** %10, align 8
  %114 = getelementptr inbounds %struct.wsm_hdr, %struct.wsm_hdr* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @__le16_to_cpu(i32 %115)
  %117 = sext i32 %116 to i64
  store i64 %117, i64* %11, align 8
  %118 = load i64, i64* %11, align 8
  %119 = load i64, i64* %8, align 8
  %120 = icmp ugt i64 %118, %119
  %121 = zext i1 %120 to i32
  %122 = call i64 @WARN_ON(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %102
  br label %215

125:                                              ; preds = %102
  %126 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %127 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %132 = load i32*, i32** %16, align 8
  %133 = load i64, i64* %11, align 8
  %134 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %131, i32* %132, i64 %133)
  br label %135

135:                                              ; preds = %130, %125
  %136 = load %struct.wsm_hdr*, %struct.wsm_hdr** %10, align 8
  %137 = getelementptr inbounds %struct.wsm_hdr, %struct.wsm_hdr* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @__le16_to_cpu(i32 %138)
  %140 = and i32 %139, 4095
  store i32 %140, i32* %12, align 4
  %141 = load %struct.wsm_hdr*, %struct.wsm_hdr** %10, align 8
  %142 = getelementptr inbounds %struct.wsm_hdr, %struct.wsm_hdr* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @__le16_to_cpu(i32 %143)
  %145 = ashr i32 %144, 13
  %146 = and i32 %145, 7
  store i32 %146, i32* %13, align 4
  %147 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %148 = load i64, i64* %11, align 8
  %149 = call i32 @skb_trim(%struct.sk_buff* %147, i64 %148)
  %150 = load i32, i32* %12, align 4
  %151 = icmp eq i32 %150, 2048
  br i1 %151, label %152, label %159

152:                                              ; preds = %135
  %153 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %154 = load i32*, i32** %16, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 8
  %156 = load i64, i64* %11, align 8
  %157 = sub i64 %156, 8
  %158 = call i32 @wsm_handle_exception(%struct.cw1200_common* %153, i32* %155, i64 %157)
  br label %215

159:                                              ; preds = %135
  %160 = load i32, i32* %14, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %173, label %162

162:                                              ; preds = %159
  %163 = load i32, i32* %13, align 4
  %164 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %165 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %163, %166
  %168 = zext i1 %167 to i32
  %169 = call i64 @WARN_ON(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %162
  br label %215

172:                                              ; preds = %162
  br label %173

173:                                              ; preds = %172, %159
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %13, align 4
  %176 = add nsw i32 %175, 1
  %177 = and i32 %176, 7
  %178 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %179 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  store i32 0, i32* %14, align 4
  %180 = load i32, i32* %12, align 4
  %181 = and i32 %180, 1024
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %200

183:                                              ; preds = %174
  %184 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %185 = call i32 @wsm_release_tx_buffer(%struct.cw1200_common* %184, i32 1)
  store i32 %185, i32* %17, align 4
  %186 = load i32, i32* %17, align 4
  %187 = icmp slt i32 %186, 0
  %188 = zext i1 %187 to i32
  %189 = call i64 @WARN_ON(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %183
  %192 = load i32, i32* %17, align 4
  store i32 %192, i32* %4, align 4
  br label %222

193:                                              ; preds = %183
  %194 = load i32, i32* %17, align 4
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = load i32*, i32** %7, align 8
  store i32 1, i32* %197, align 4
  br label %198

198:                                              ; preds = %196, %193
  br label %199

199:                                              ; preds = %198
  br label %200

200:                                              ; preds = %199, %174
  %201 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %202 = load i32, i32* %12, align 4
  %203 = load %struct.wsm_hdr*, %struct.wsm_hdr** %10, align 8
  %204 = call i32 @wsm_handle_rx(%struct.cw1200_common* %201, i32 %202, %struct.wsm_hdr* %203, %struct.sk_buff** %9)
  %205 = call i64 @WARN_ON(i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %200
  br label %215

208:                                              ; preds = %200
  %209 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %210 = icmp ne %struct.sk_buff* %209, null
  br i1 %210, label %211, label %214

211:                                              ; preds = %208
  %212 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %213 = call i32 @dev_kfree_skb(%struct.sk_buff* %212)
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  br label %214

214:                                              ; preds = %211, %208
  store i32 0, i32* %4, align 4
  br label %222

215:                                              ; preds = %207, %171, %152, %124, %99, %91, %75, %39
  %216 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %217 = icmp ne %struct.sk_buff* %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %220 = call i32 @dev_kfree_skb(%struct.sk_buff* %219)
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  br label %221

221:                                              ; preds = %218, %215
  store i32 -1, i32* %4, align 4
  br label %222

222:                                              ; preds = %221, %214, %191, %26
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, i64, ...) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @cw1200_data_read(%struct.cw1200_common*, i32*, i64) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @print_hex_dump_bytes(i8*, i32, i32*, i64) #1

declare dso_local i32 @wsm_handle_exception(%struct.cw1200_common*, i32*, i64) #1

declare dso_local i32 @wsm_release_tx_buffer(%struct.cw1200_common*, i32) #1

declare dso_local i32 @wsm_handle_rx(%struct.cw1200_common*, i32, %struct.wsm_hdr*, %struct.sk_buff**) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
