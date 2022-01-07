; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_rxtx.c_s_uFillDataHead.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_rxtx.c_s_uFillDataHead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i16, i32 }
%struct.vnt_tx_datahead_g = type { i8*, i8*, i8*, i8*, i32, i32 }
%struct.vnt_tx_datahead_g_fb = type { i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.vnt_tx_datahead_a_fb = type { i8*, i8*, i8*, i8*, i32 }
%struct.vnt_tx_datahead_ab = type { i8*, i8*, i32 }

@PK_TYPE_11GB = common dso_local global i8 0, align 1
@PK_TYPE_11GA = common dso_local global i8 0, align 1
@AUTO_FB_NONE = common dso_local global i8 0, align 1
@PK_TYPE_11B = common dso_local global i8 0, align 1
@DATADUR_A = common dso_local global i32 0, align 4
@DATADUR_B = common dso_local global i32 0, align 4
@DATADUR_A_F0 = common dso_local global i32 0, align 4
@DATADUR_A_F1 = common dso_local global i32 0, align 4
@PK_TYPE_11A = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.vnt_private*, i8, i8*, i32, i32, i32, i32, i32, i32, i8, i16, i32)* @s_uFillDataHead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @s_uFillDataHead(%struct.vnt_private* %0, i8 zeroext %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i8 zeroext %9, i16 zeroext %10, i32 %11) #0 {
  %13 = alloca i8*, align 8
  %14 = alloca %struct.vnt_private*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8, align 1
  %24 = alloca i16, align 2
  %25 = alloca i32, align 4
  %26 = alloca %struct.vnt_tx_datahead_g*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca %struct.vnt_tx_datahead_g_fb*, align 8
  %29 = alloca %struct.vnt_tx_datahead_a_fb*, align 8
  %30 = alloca %struct.vnt_tx_datahead_ab*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca %struct.vnt_tx_datahead_ab*, align 8
  %33 = alloca i8*, align 8
  store %struct.vnt_private* %0, %struct.vnt_private** %14, align 8
  store i8 %1, i8* %15, align 1
  store i8* %2, i8** %16, align 8
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i8 %9, i8* %23, align 1
  store i16 %10, i16* %24, align 2
  store i32 %11, i32* %25, align 4
  %34 = load i8*, i8** %16, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %12
  store i8* null, i8** %13, align 8
  br label %409

37:                                               ; preds = %12
  %38 = load i8, i8* %15, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @PK_TYPE_11GB, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load i8, i8* %15, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* @PK_TYPE_11GA, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %236

49:                                               ; preds = %43, %37
  %50 = load i8, i8* %23, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* @AUTO_FB_NONE, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %140

55:                                               ; preds = %49
  %56 = load i8*, i8** %16, align 8
  %57 = bitcast i8* %56 to %struct.vnt_tx_datahead_g*
  store %struct.vnt_tx_datahead_g* %57, %struct.vnt_tx_datahead_g** %26, align 8
  %58 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %59 = load i32, i32* %17, align 4
  %60 = load i16, i16* %24, align 2
  %61 = load i8, i8* %15, align 1
  %62 = load %struct.vnt_tx_datahead_g*, %struct.vnt_tx_datahead_g** %26, align 8
  %63 = getelementptr inbounds %struct.vnt_tx_datahead_g, %struct.vnt_tx_datahead_g* %62, i32 0, i32 5
  %64 = call i32 @vnt_get_phy_field(%struct.vnt_private* %58, i32 %59, i16 zeroext %60, i8 zeroext %61, i32* %63)
  %65 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %66 = load i32, i32* %17, align 4
  %67 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %68 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %67, i32 0, i32 0
  %69 = load i16, i16* %68, align 4
  %70 = load i8, i8* @PK_TYPE_11B, align 1
  %71 = load %struct.vnt_tx_datahead_g*, %struct.vnt_tx_datahead_g** %26, align 8
  %72 = getelementptr inbounds %struct.vnt_tx_datahead_g, %struct.vnt_tx_datahead_g* %71, i32 0, i32 4
  %73 = call i32 @vnt_get_phy_field(%struct.vnt_private* %65, i32 %66, i16 zeroext %69, i8 zeroext %70, i32* %72)
  %74 = load i32, i32* %25, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %55
  %77 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %78 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @BIT(i32 14)
  %81 = or i32 %79, %80
  %82 = call i32 @BIT(i32 15)
  %83 = or i32 %81, %82
  %84 = call i8* @cpu_to_le16(i32 %83)
  store i8* %84, i8** %27, align 8
  %85 = load i8*, i8** %27, align 8
  %86 = load %struct.vnt_tx_datahead_g*, %struct.vnt_tx_datahead_g** %26, align 8
  %87 = getelementptr inbounds %struct.vnt_tx_datahead_g, %struct.vnt_tx_datahead_g* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  %88 = load i8*, i8** %27, align 8
  %89 = load %struct.vnt_tx_datahead_g*, %struct.vnt_tx_datahead_g** %26, align 8
  %90 = getelementptr inbounds %struct.vnt_tx_datahead_g, %struct.vnt_tx_datahead_g* %89, i32 0, i32 3
  store i8* %88, i8** %90, align 8
  br label %124

91:                                               ; preds = %55
  %92 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %93 = load i32, i32* @DATADUR_A, align 4
  %94 = load i32, i32* %17, align 4
  %95 = load i8, i8* %15, align 1
  %96 = load i16, i16* %24, align 2
  %97 = load i32, i32* %19, align 4
  %98 = load i32, i32* %20, align 4
  %99 = load i32, i32* %21, align 4
  %100 = load i32, i32* %22, align 4
  %101 = load i8, i8* %23, align 1
  %102 = call i64 @s_uGetDataDuration(%struct.vnt_private* %92, i32 %93, i32 %94, i8 zeroext %95, i16 zeroext %96, i32 %97, i32 %98, i32 %99, i32 %100, i8 zeroext %101)
  %103 = trunc i64 %102 to i32
  %104 = call i8* @cpu_to_le16(i32 %103)
  %105 = load %struct.vnt_tx_datahead_g*, %struct.vnt_tx_datahead_g** %26, align 8
  %106 = getelementptr inbounds %struct.vnt_tx_datahead_g, %struct.vnt_tx_datahead_g* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  %107 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %108 = load i32, i32* @DATADUR_B, align 4
  %109 = load i32, i32* %17, align 4
  %110 = load i8, i8* @PK_TYPE_11B, align 1
  %111 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %112 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %111, i32 0, i32 0
  %113 = load i16, i16* %112, align 4
  %114 = load i32, i32* %19, align 4
  %115 = load i32, i32* %20, align 4
  %116 = load i32, i32* %21, align 4
  %117 = load i32, i32* %22, align 4
  %118 = load i8, i8* %23, align 1
  %119 = call i64 @s_uGetDataDuration(%struct.vnt_private* %107, i32 %108, i32 %109, i8 zeroext %110, i16 zeroext %113, i32 %114, i32 %115, i32 %116, i32 %117, i8 zeroext %118)
  %120 = trunc i64 %119 to i32
  %121 = call i8* @cpu_to_le16(i32 %120)
  %122 = load %struct.vnt_tx_datahead_g*, %struct.vnt_tx_datahead_g** %26, align 8
  %123 = getelementptr inbounds %struct.vnt_tx_datahead_g, %struct.vnt_tx_datahead_g* %122, i32 0, i32 3
  store i8* %121, i8** %123, align 8
  br label %124

124:                                              ; preds = %91, %76
  %125 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %126 = load i16, i16* %24, align 2
  %127 = call i8* @vnt_time_stamp_off(%struct.vnt_private* %125, i16 zeroext %126)
  %128 = load %struct.vnt_tx_datahead_g*, %struct.vnt_tx_datahead_g** %26, align 8
  %129 = getelementptr inbounds %struct.vnt_tx_datahead_g, %struct.vnt_tx_datahead_g* %128, i32 0, i32 2
  store i8* %127, i8** %129, align 8
  %130 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %131 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %132 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %131, i32 0, i32 0
  %133 = load i16, i16* %132, align 4
  %134 = call i8* @vnt_time_stamp_off(%struct.vnt_private* %130, i16 zeroext %133)
  %135 = load %struct.vnt_tx_datahead_g*, %struct.vnt_tx_datahead_g** %26, align 8
  %136 = getelementptr inbounds %struct.vnt_tx_datahead_g, %struct.vnt_tx_datahead_g* %135, i32 0, i32 1
  store i8* %134, i8** %136, align 8
  %137 = load %struct.vnt_tx_datahead_g*, %struct.vnt_tx_datahead_g** %26, align 8
  %138 = getelementptr inbounds %struct.vnt_tx_datahead_g, %struct.vnt_tx_datahead_g* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  store i8* %139, i8** %13, align 8
  br label %409

140:                                              ; preds = %49
  %141 = load i8*, i8** %16, align 8
  %142 = bitcast i8* %141 to %struct.vnt_tx_datahead_g_fb*
  store %struct.vnt_tx_datahead_g_fb* %142, %struct.vnt_tx_datahead_g_fb** %28, align 8
  %143 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %144 = load i32, i32* %17, align 4
  %145 = load i16, i16* %24, align 2
  %146 = load i8, i8* %15, align 1
  %147 = load %struct.vnt_tx_datahead_g_fb*, %struct.vnt_tx_datahead_g_fb** %28, align 8
  %148 = getelementptr inbounds %struct.vnt_tx_datahead_g_fb, %struct.vnt_tx_datahead_g_fb* %147, i32 0, i32 7
  %149 = call i32 @vnt_get_phy_field(%struct.vnt_private* %143, i32 %144, i16 zeroext %145, i8 zeroext %146, i32* %148)
  %150 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %151 = load i32, i32* %17, align 4
  %152 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %153 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %152, i32 0, i32 0
  %154 = load i16, i16* %153, align 4
  %155 = load i8, i8* @PK_TYPE_11B, align 1
  %156 = load %struct.vnt_tx_datahead_g_fb*, %struct.vnt_tx_datahead_g_fb** %28, align 8
  %157 = getelementptr inbounds %struct.vnt_tx_datahead_g_fb, %struct.vnt_tx_datahead_g_fb* %156, i32 0, i32 6
  %158 = call i32 @vnt_get_phy_field(%struct.vnt_private* %150, i32 %151, i16 zeroext %154, i8 zeroext %155, i32* %157)
  %159 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %160 = load i32, i32* @DATADUR_A, align 4
  %161 = load i32, i32* %17, align 4
  %162 = load i8, i8* %15, align 1
  %163 = load i16, i16* %24, align 2
  %164 = load i32, i32* %19, align 4
  %165 = load i32, i32* %20, align 4
  %166 = load i32, i32* %21, align 4
  %167 = load i32, i32* %22, align 4
  %168 = load i8, i8* %23, align 1
  %169 = call i64 @s_uGetDataDuration(%struct.vnt_private* %159, i32 %160, i32 %161, i8 zeroext %162, i16 zeroext %163, i32 %164, i32 %165, i32 %166, i32 %167, i8 zeroext %168)
  %170 = trunc i64 %169 to i32
  %171 = call i8* @cpu_to_le16(i32 %170)
  %172 = load %struct.vnt_tx_datahead_g_fb*, %struct.vnt_tx_datahead_g_fb** %28, align 8
  %173 = getelementptr inbounds %struct.vnt_tx_datahead_g_fb, %struct.vnt_tx_datahead_g_fb* %172, i32 0, i32 0
  store i8* %171, i8** %173, align 8
  %174 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %175 = load i32, i32* @DATADUR_B, align 4
  %176 = load i32, i32* %17, align 4
  %177 = load i8, i8* @PK_TYPE_11B, align 1
  %178 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %179 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %178, i32 0, i32 0
  %180 = load i16, i16* %179, align 4
  %181 = load i32, i32* %19, align 4
  %182 = load i32, i32* %20, align 4
  %183 = load i32, i32* %21, align 4
  %184 = load i32, i32* %22, align 4
  %185 = load i8, i8* %23, align 1
  %186 = call i64 @s_uGetDataDuration(%struct.vnt_private* %174, i32 %175, i32 %176, i8 zeroext %177, i16 zeroext %180, i32 %181, i32 %182, i32 %183, i32 %184, i8 zeroext %185)
  %187 = trunc i64 %186 to i32
  %188 = call i8* @cpu_to_le16(i32 %187)
  %189 = load %struct.vnt_tx_datahead_g_fb*, %struct.vnt_tx_datahead_g_fb** %28, align 8
  %190 = getelementptr inbounds %struct.vnt_tx_datahead_g_fb, %struct.vnt_tx_datahead_g_fb* %189, i32 0, i32 5
  store i8* %188, i8** %190, align 8
  %191 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %192 = load i32, i32* @DATADUR_A_F0, align 4
  %193 = load i32, i32* %17, align 4
  %194 = load i8, i8* %15, align 1
  %195 = load i16, i16* %24, align 2
  %196 = load i32, i32* %19, align 4
  %197 = load i32, i32* %20, align 4
  %198 = load i32, i32* %21, align 4
  %199 = load i32, i32* %22, align 4
  %200 = load i8, i8* %23, align 1
  %201 = call i64 @s_uGetDataDuration(%struct.vnt_private* %191, i32 %192, i32 %193, i8 zeroext %194, i16 zeroext %195, i32 %196, i32 %197, i32 %198, i32 %199, i8 zeroext %200)
  %202 = trunc i64 %201 to i32
  %203 = call i8* @cpu_to_le16(i32 %202)
  %204 = load %struct.vnt_tx_datahead_g_fb*, %struct.vnt_tx_datahead_g_fb** %28, align 8
  %205 = getelementptr inbounds %struct.vnt_tx_datahead_g_fb, %struct.vnt_tx_datahead_g_fb* %204, i32 0, i32 4
  store i8* %203, i8** %205, align 8
  %206 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %207 = load i32, i32* @DATADUR_A_F1, align 4
  %208 = load i32, i32* %17, align 4
  %209 = load i8, i8* %15, align 1
  %210 = load i16, i16* %24, align 2
  %211 = load i32, i32* %19, align 4
  %212 = load i32, i32* %20, align 4
  %213 = load i32, i32* %21, align 4
  %214 = load i32, i32* %22, align 4
  %215 = load i8, i8* %23, align 1
  %216 = call i64 @s_uGetDataDuration(%struct.vnt_private* %206, i32 %207, i32 %208, i8 zeroext %209, i16 zeroext %210, i32 %211, i32 %212, i32 %213, i32 %214, i8 zeroext %215)
  %217 = trunc i64 %216 to i32
  %218 = call i8* @cpu_to_le16(i32 %217)
  %219 = load %struct.vnt_tx_datahead_g_fb*, %struct.vnt_tx_datahead_g_fb** %28, align 8
  %220 = getelementptr inbounds %struct.vnt_tx_datahead_g_fb, %struct.vnt_tx_datahead_g_fb* %219, i32 0, i32 3
  store i8* %218, i8** %220, align 8
  %221 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %222 = load i16, i16* %24, align 2
  %223 = call i8* @vnt_time_stamp_off(%struct.vnt_private* %221, i16 zeroext %222)
  %224 = load %struct.vnt_tx_datahead_g_fb*, %struct.vnt_tx_datahead_g_fb** %28, align 8
  %225 = getelementptr inbounds %struct.vnt_tx_datahead_g_fb, %struct.vnt_tx_datahead_g_fb* %224, i32 0, i32 2
  store i8* %223, i8** %225, align 8
  %226 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %227 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %228 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %227, i32 0, i32 0
  %229 = load i16, i16* %228, align 4
  %230 = call i8* @vnt_time_stamp_off(%struct.vnt_private* %226, i16 zeroext %229)
  %231 = load %struct.vnt_tx_datahead_g_fb*, %struct.vnt_tx_datahead_g_fb** %28, align 8
  %232 = getelementptr inbounds %struct.vnt_tx_datahead_g_fb, %struct.vnt_tx_datahead_g_fb* %231, i32 0, i32 1
  store i8* %230, i8** %232, align 8
  %233 = load %struct.vnt_tx_datahead_g_fb*, %struct.vnt_tx_datahead_g_fb** %28, align 8
  %234 = getelementptr inbounds %struct.vnt_tx_datahead_g_fb, %struct.vnt_tx_datahead_g_fb* %233, i32 0, i32 0
  %235 = load i8*, i8** %234, align 8
  store i8* %235, i8** %13, align 8
  br label %409

236:                                              ; preds = %43
  %237 = load i8, i8* %15, align 1
  %238 = zext i8 %237 to i32
  %239 = load i8, i8* @PK_TYPE_11A, align 1
  %240 = zext i8 %239 to i32
  %241 = icmp eq i32 %238, %240
  br i1 %241, label %242, label %360

242:                                              ; preds = %236
  %243 = load i8, i8* %23, align 1
  %244 = zext i8 %243 to i32
  %245 = load i8, i8* @AUTO_FB_NONE, align 1
  %246 = zext i8 %245 to i32
  %247 = icmp ne i32 %244, %246
  br i1 %247, label %248, label %311

248:                                              ; preds = %242
  %249 = load i8*, i8** %16, align 8
  %250 = bitcast i8* %249 to %struct.vnt_tx_datahead_a_fb*
  store %struct.vnt_tx_datahead_a_fb* %250, %struct.vnt_tx_datahead_a_fb** %29, align 8
  %251 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %252 = load i32, i32* %17, align 4
  %253 = load i16, i16* %24, align 2
  %254 = load i8, i8* %15, align 1
  %255 = load %struct.vnt_tx_datahead_a_fb*, %struct.vnt_tx_datahead_a_fb** %29, align 8
  %256 = getelementptr inbounds %struct.vnt_tx_datahead_a_fb, %struct.vnt_tx_datahead_a_fb* %255, i32 0, i32 4
  %257 = call i32 @vnt_get_phy_field(%struct.vnt_private* %251, i32 %252, i16 zeroext %253, i8 zeroext %254, i32* %256)
  %258 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %259 = load i32, i32* @DATADUR_A, align 4
  %260 = load i32, i32* %17, align 4
  %261 = load i8, i8* %15, align 1
  %262 = load i16, i16* %24, align 2
  %263 = load i32, i32* %19, align 4
  %264 = load i32, i32* %20, align 4
  %265 = load i32, i32* %21, align 4
  %266 = load i32, i32* %22, align 4
  %267 = load i8, i8* %23, align 1
  %268 = call i64 @s_uGetDataDuration(%struct.vnt_private* %258, i32 %259, i32 %260, i8 zeroext %261, i16 zeroext %262, i32 %263, i32 %264, i32 %265, i32 %266, i8 zeroext %267)
  %269 = trunc i64 %268 to i32
  %270 = call i8* @cpu_to_le16(i32 %269)
  %271 = load %struct.vnt_tx_datahead_a_fb*, %struct.vnt_tx_datahead_a_fb** %29, align 8
  %272 = getelementptr inbounds %struct.vnt_tx_datahead_a_fb, %struct.vnt_tx_datahead_a_fb* %271, i32 0, i32 0
  store i8* %270, i8** %272, align 8
  %273 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %274 = load i32, i32* @DATADUR_A_F0, align 4
  %275 = load i32, i32* %17, align 4
  %276 = load i8, i8* %15, align 1
  %277 = load i16, i16* %24, align 2
  %278 = load i32, i32* %19, align 4
  %279 = load i32, i32* %20, align 4
  %280 = load i32, i32* %21, align 4
  %281 = load i32, i32* %22, align 4
  %282 = load i8, i8* %23, align 1
  %283 = call i64 @s_uGetDataDuration(%struct.vnt_private* %273, i32 %274, i32 %275, i8 zeroext %276, i16 zeroext %277, i32 %278, i32 %279, i32 %280, i32 %281, i8 zeroext %282)
  %284 = trunc i64 %283 to i32
  %285 = call i8* @cpu_to_le16(i32 %284)
  %286 = load %struct.vnt_tx_datahead_a_fb*, %struct.vnt_tx_datahead_a_fb** %29, align 8
  %287 = getelementptr inbounds %struct.vnt_tx_datahead_a_fb, %struct.vnt_tx_datahead_a_fb* %286, i32 0, i32 3
  store i8* %285, i8** %287, align 8
  %288 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %289 = load i32, i32* @DATADUR_A_F1, align 4
  %290 = load i32, i32* %17, align 4
  %291 = load i8, i8* %15, align 1
  %292 = load i16, i16* %24, align 2
  %293 = load i32, i32* %19, align 4
  %294 = load i32, i32* %20, align 4
  %295 = load i32, i32* %21, align 4
  %296 = load i32, i32* %22, align 4
  %297 = load i8, i8* %23, align 1
  %298 = call i64 @s_uGetDataDuration(%struct.vnt_private* %288, i32 %289, i32 %290, i8 zeroext %291, i16 zeroext %292, i32 %293, i32 %294, i32 %295, i32 %296, i8 zeroext %297)
  %299 = trunc i64 %298 to i32
  %300 = call i8* @cpu_to_le16(i32 %299)
  %301 = load %struct.vnt_tx_datahead_a_fb*, %struct.vnt_tx_datahead_a_fb** %29, align 8
  %302 = getelementptr inbounds %struct.vnt_tx_datahead_a_fb, %struct.vnt_tx_datahead_a_fb* %301, i32 0, i32 2
  store i8* %300, i8** %302, align 8
  %303 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %304 = load i16, i16* %24, align 2
  %305 = call i8* @vnt_time_stamp_off(%struct.vnt_private* %303, i16 zeroext %304)
  %306 = load %struct.vnt_tx_datahead_a_fb*, %struct.vnt_tx_datahead_a_fb** %29, align 8
  %307 = getelementptr inbounds %struct.vnt_tx_datahead_a_fb, %struct.vnt_tx_datahead_a_fb* %306, i32 0, i32 1
  store i8* %305, i8** %307, align 8
  %308 = load %struct.vnt_tx_datahead_a_fb*, %struct.vnt_tx_datahead_a_fb** %29, align 8
  %309 = getelementptr inbounds %struct.vnt_tx_datahead_a_fb, %struct.vnt_tx_datahead_a_fb* %308, i32 0, i32 0
  %310 = load i8*, i8** %309, align 8
  store i8* %310, i8** %13, align 8
  br label %409

311:                                              ; preds = %242
  %312 = load i8*, i8** %16, align 8
  %313 = bitcast i8* %312 to %struct.vnt_tx_datahead_ab*
  store %struct.vnt_tx_datahead_ab* %313, %struct.vnt_tx_datahead_ab** %30, align 8
  %314 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %315 = load i32, i32* %17, align 4
  %316 = load i16, i16* %24, align 2
  %317 = load i8, i8* %15, align 1
  %318 = load %struct.vnt_tx_datahead_ab*, %struct.vnt_tx_datahead_ab** %30, align 8
  %319 = getelementptr inbounds %struct.vnt_tx_datahead_ab, %struct.vnt_tx_datahead_ab* %318, i32 0, i32 2
  %320 = call i32 @vnt_get_phy_field(%struct.vnt_private* %314, i32 %315, i16 zeroext %316, i8 zeroext %317, i32* %319)
  %321 = load i32, i32* %25, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %335

323:                                              ; preds = %311
  %324 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %325 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @BIT(i32 14)
  %328 = or i32 %326, %327
  %329 = call i32 @BIT(i32 15)
  %330 = or i32 %328, %329
  %331 = call i8* @cpu_to_le16(i32 %330)
  store i8* %331, i8** %31, align 8
  %332 = load i8*, i8** %31, align 8
  %333 = load %struct.vnt_tx_datahead_ab*, %struct.vnt_tx_datahead_ab** %30, align 8
  %334 = getelementptr inbounds %struct.vnt_tx_datahead_ab, %struct.vnt_tx_datahead_ab* %333, i32 0, i32 0
  store i8* %332, i8** %334, align 8
  br label %351

335:                                              ; preds = %311
  %336 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %337 = load i32, i32* @DATADUR_A, align 4
  %338 = load i32, i32* %17, align 4
  %339 = load i8, i8* %15, align 1
  %340 = load i16, i16* %24, align 2
  %341 = load i32, i32* %19, align 4
  %342 = load i32, i32* %20, align 4
  %343 = load i32, i32* %21, align 4
  %344 = load i32, i32* %22, align 4
  %345 = load i8, i8* %23, align 1
  %346 = call i64 @s_uGetDataDuration(%struct.vnt_private* %336, i32 %337, i32 %338, i8 zeroext %339, i16 zeroext %340, i32 %341, i32 %342, i32 %343, i32 %344, i8 zeroext %345)
  %347 = trunc i64 %346 to i32
  %348 = call i8* @cpu_to_le16(i32 %347)
  %349 = load %struct.vnt_tx_datahead_ab*, %struct.vnt_tx_datahead_ab** %30, align 8
  %350 = getelementptr inbounds %struct.vnt_tx_datahead_ab, %struct.vnt_tx_datahead_ab* %349, i32 0, i32 0
  store i8* %348, i8** %350, align 8
  br label %351

351:                                              ; preds = %335, %323
  %352 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %353 = load i16, i16* %24, align 2
  %354 = call i8* @vnt_time_stamp_off(%struct.vnt_private* %352, i16 zeroext %353)
  %355 = load %struct.vnt_tx_datahead_ab*, %struct.vnt_tx_datahead_ab** %30, align 8
  %356 = getelementptr inbounds %struct.vnt_tx_datahead_ab, %struct.vnt_tx_datahead_ab* %355, i32 0, i32 1
  store i8* %354, i8** %356, align 8
  %357 = load %struct.vnt_tx_datahead_ab*, %struct.vnt_tx_datahead_ab** %30, align 8
  %358 = getelementptr inbounds %struct.vnt_tx_datahead_ab, %struct.vnt_tx_datahead_ab* %357, i32 0, i32 0
  %359 = load i8*, i8** %358, align 8
  store i8* %359, i8** %13, align 8
  br label %409

360:                                              ; preds = %236
  %361 = load i8*, i8** %16, align 8
  %362 = bitcast i8* %361 to %struct.vnt_tx_datahead_ab*
  store %struct.vnt_tx_datahead_ab* %362, %struct.vnt_tx_datahead_ab** %32, align 8
  %363 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %364 = load i32, i32* %17, align 4
  %365 = load i16, i16* %24, align 2
  %366 = load i8, i8* %15, align 1
  %367 = load %struct.vnt_tx_datahead_ab*, %struct.vnt_tx_datahead_ab** %32, align 8
  %368 = getelementptr inbounds %struct.vnt_tx_datahead_ab, %struct.vnt_tx_datahead_ab* %367, i32 0, i32 2
  %369 = call i32 @vnt_get_phy_field(%struct.vnt_private* %363, i32 %364, i16 zeroext %365, i8 zeroext %366, i32* %368)
  %370 = load i32, i32* %25, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %384

372:                                              ; preds = %360
  %373 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %374 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = call i32 @BIT(i32 14)
  %377 = or i32 %375, %376
  %378 = call i32 @BIT(i32 15)
  %379 = or i32 %377, %378
  %380 = call i8* @cpu_to_le16(i32 %379)
  store i8* %380, i8** %33, align 8
  %381 = load i8*, i8** %33, align 8
  %382 = load %struct.vnt_tx_datahead_ab*, %struct.vnt_tx_datahead_ab** %32, align 8
  %383 = getelementptr inbounds %struct.vnt_tx_datahead_ab, %struct.vnt_tx_datahead_ab* %382, i32 0, i32 0
  store i8* %381, i8** %383, align 8
  br label %400

384:                                              ; preds = %360
  %385 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %386 = load i32, i32* @DATADUR_B, align 4
  %387 = load i32, i32* %17, align 4
  %388 = load i8, i8* %15, align 1
  %389 = load i16, i16* %24, align 2
  %390 = load i32, i32* %19, align 4
  %391 = load i32, i32* %20, align 4
  %392 = load i32, i32* %21, align 4
  %393 = load i32, i32* %22, align 4
  %394 = load i8, i8* %23, align 1
  %395 = call i64 @s_uGetDataDuration(%struct.vnt_private* %385, i32 %386, i32 %387, i8 zeroext %388, i16 zeroext %389, i32 %390, i32 %391, i32 %392, i32 %393, i8 zeroext %394)
  %396 = trunc i64 %395 to i32
  %397 = call i8* @cpu_to_le16(i32 %396)
  %398 = load %struct.vnt_tx_datahead_ab*, %struct.vnt_tx_datahead_ab** %32, align 8
  %399 = getelementptr inbounds %struct.vnt_tx_datahead_ab, %struct.vnt_tx_datahead_ab* %398, i32 0, i32 0
  store i8* %397, i8** %399, align 8
  br label %400

400:                                              ; preds = %384, %372
  %401 = load %struct.vnt_private*, %struct.vnt_private** %14, align 8
  %402 = load i16, i16* %24, align 2
  %403 = call i8* @vnt_time_stamp_off(%struct.vnt_private* %401, i16 zeroext %402)
  %404 = load %struct.vnt_tx_datahead_ab*, %struct.vnt_tx_datahead_ab** %32, align 8
  %405 = getelementptr inbounds %struct.vnt_tx_datahead_ab, %struct.vnt_tx_datahead_ab* %404, i32 0, i32 1
  store i8* %403, i8** %405, align 8
  %406 = load %struct.vnt_tx_datahead_ab*, %struct.vnt_tx_datahead_ab** %32, align 8
  %407 = getelementptr inbounds %struct.vnt_tx_datahead_ab, %struct.vnt_tx_datahead_ab* %406, i32 0, i32 0
  %408 = load i8*, i8** %407, align 8
  store i8* %408, i8** %13, align 8
  br label %409

409:                                              ; preds = %400, %351, %248, %140, %124, %36
  %410 = load i8*, i8** %13, align 8
  ret i8* %410
}

declare dso_local i32 @vnt_get_phy_field(%struct.vnt_private*, i32, i16 zeroext, i8 zeroext, i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @s_uGetDataDuration(%struct.vnt_private*, i32, i32, i8 zeroext, i16 zeroext, i32, i32, i32, i32, i8 zeroext) #1

declare dso_local i8* @vnt_time_stamp_off(%struct.vnt_private*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
