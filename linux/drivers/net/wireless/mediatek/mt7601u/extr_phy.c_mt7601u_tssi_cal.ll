; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_mt7601u_tssi_cal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_mt7601u_tssi_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32, i32, i32, i32, %struct.TYPE_8__*, i64, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i8*, i8 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.mt7601u_tssi_params = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"tssi dc:%04hx db:%04hx hvga:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Power curr:%08x diff:%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Error: TSSI upper saturation\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Error: TSSI lower saturation\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"final diff: %08x\0A\00", align 1
@MT_TX_ALC_CFG_1 = common dso_local global i32 0, align 4
@MT_TX_ALC_CFG_1_TEMP_COMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7601u_dev*)* @mt7601u_tssi_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7601u_tssi_cal(%struct.mt7601u_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7601u_dev*, align 8
  %4 = alloca %struct.mt7601u_tssi_params, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mt7601u_tssi_params, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %3, align 8
  %14 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %15 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %14, i32 0, i32 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %247

21:                                               ; preds = %1
  %22 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %23 = call i32 @mt7601u_use_hvga(%struct.mt7601u_dev* %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %25 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  %29 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @mt7601u_mcu_tssi_read_kick(%struct.mt7601u_dev* %29, i32 %30)
  store i32 %31, i32* %2, align 4
  br label %247

32:                                               ; preds = %21
  %33 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %34 = call i32 @mt7601u_tssi_read_ready(%struct.mt7601u_dev* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %247

37:                                               ; preds = %32
  %38 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %39 = call i64 @mt7601u_tssi_params_get(%struct.mt7601u_dev* %38)
  %40 = bitcast %struct.mt7601u_tssi_params* %13 to i64*
  store i64 %39, i64* %40, align 4
  %41 = bitcast %struct.mt7601u_tssi_params* %4 to i8*
  %42 = bitcast %struct.mt7601u_tssi_params* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 8, i1 false)
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %47 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  br label %53

49:                                               ; preds = %37
  %50 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %51 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i32 [ %48, %45 ], [ %52, %49 ]
  store i32 %54, i32* %8, align 4
  %55 = getelementptr inbounds %struct.mt7601u_tssi_params, %struct.mt7601u_tssi_params* %4, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = sub nsw i32 %56, %57
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %9, align 1
  %60 = load i8, i8* %9, align 1
  %61 = call signext i8 @lin2dBd(i8 signext %60)
  store i8 %61, i8* %10, align 1
  %62 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %63 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i8, i8* %9, align 1
  %66 = sext i8 %65 to i32
  %67 = load i8, i8* %10, align 1
  %68 = sext i8 %67 to i32
  %69 = load i32, i32* %11, align 4
  %70 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %68, i32 %69)
  %71 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %72 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %76, 5
  br i1 %77, label %78, label %87

78:                                               ; preds = %53
  %79 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %80 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %79, i32 0, i32 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  %86 = load i8, i8* %85, align 1
  store i8 %86, i8* %7, align 1
  br label %114

87:                                               ; preds = %53
  %88 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %89 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %88, i32 0, i32 6
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %93, 9
  br i1 %94, label %95, label %104

95:                                               ; preds = %87
  %96 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %97 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %96, i32 0, i32 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = load i8, i8* %102, align 1
  store i8 %103, i8* %7, align 1
  br label %113

104:                                              ; preds = %87
  %105 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %106 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %105, i32 0, i32 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  %112 = load i8, i8* %111, align 1
  store i8 %112, i8* %7, align 1
  br label %113

113:                                              ; preds = %104, %95
  br label %114

114:                                              ; preds = %113, %78
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %114
  %118 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %119 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = load i8, i8* %10, align 1
  %122 = sext i8 %121 to i64
  %123 = sub nsw i64 %122, %120
  %124 = trunc i64 %123 to i8
  store i8 %124, i8* %10, align 1
  br label %125

125:                                              ; preds = %117, %114
  %126 = load i8, i8* %10, align 1
  %127 = sext i8 %126 to i32
  %128 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %129 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %128, i32 0, i32 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i8, i8* %132, align 8
  %134 = sext i8 %133 to i32
  %135 = mul nsw i32 %127, %134
  %136 = load i8, i8* %7, align 1
  %137 = sext i8 %136 to i32
  %138 = shl i32 %137, 9
  %139 = add nsw i32 %135, %138
  store i32 %139, i32* %5, align 4
  %140 = getelementptr inbounds %struct.mt7601u_tssi_params, %struct.mt7601u_tssi_params* %4, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %5, align 4
  %143 = sub nsw i32 %141, %142
  store i32 %143, i32* %6, align 4
  %144 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %145 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* %6, align 4
  %149 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %146, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %147, i32 %148)
  %150 = getelementptr inbounds %struct.mt7601u_tssi_params, %struct.mt7601u_tssi_params* %4, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp sgt i32 %151, 126
  br i1 %152, label %153, label %161

153:                                              ; preds = %125
  %154 = load i32, i32* %6, align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %158 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @dev_err(i32 %159, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %161

161:                                              ; preds = %156, %153, %125
  %162 = getelementptr inbounds %struct.mt7601u_tssi_params, %struct.mt7601u_tssi_params* %4, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %8, align 4
  %165 = sub nsw i32 %163, %164
  %166 = icmp slt i32 %165, 1
  br i1 %166, label %167, label %175

167:                                              ; preds = %161
  %168 = load i32, i32* %6, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %167
  %171 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %172 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @dev_err(i32 %173, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %175

175:                                              ; preds = %170, %167, %161
  %176 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %177 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* %6, align 4
  %180 = xor i32 %178, %179
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %205

182:                                              ; preds = %175
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @abs(i32 %183) #4
  %185 = icmp slt i32 %184, 4096
  br i1 %185, label %186, label %205

186:                                              ; preds = %182
  %187 = load i32, i32* %6, align 4
  %188 = call i32 @abs(i32 %187) #4
  %189 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %190 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @abs(i32 %191) #4
  %193 = icmp sgt i32 %188, %192
  br i1 %193, label %204, label %194

194:                                              ; preds = %186
  %195 = load i32, i32* %6, align 4
  %196 = icmp sgt i32 %195, 0
  br i1 %196, label %197, label %205

197:                                              ; preds = %194
  %198 = load i32, i32* %6, align 4
  %199 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %200 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = sub nsw i32 0, %201
  %203 = icmp eq i32 %198, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %197, %186
  store i32 0, i32* %6, align 4
  br label %209

205:                                              ; preds = %197, %194, %182, %175
  %206 = load i32, i32* %6, align 4
  %207 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %208 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %207, i32 0, i32 2
  store i32 %206, i32* %208, align 8
  br label %209

209:                                              ; preds = %205, %204
  %210 = load i32, i32* %6, align 4
  %211 = icmp sgt i32 %210, 0
  %212 = zext i1 %211 to i64
  %213 = select i1 %211, i32 2048, i32 -2048
  %214 = load i32, i32* %6, align 4
  %215 = add nsw i32 %214, %213
  store i32 %215, i32* %6, align 4
  %216 = load i32, i32* %6, align 4
  %217 = sdiv i32 %216, 4096
  store i32 %217, i32* %6, align 4
  %218 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %219 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* %6, align 4
  %222 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %220, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %221)
  %223 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %224 = load i32, i32* @MT_TX_ALC_CFG_1, align 4
  %225 = call i32 @mt7601u_rr(%struct.mt7601u_dev* %223, i32 %224)
  store i32 %225, i32* %12, align 4
  %226 = load i32, i32* @MT_TX_ALC_CFG_1_TEMP_COMP, align 4
  %227 = load i32, i32* %12, align 4
  %228 = call i32 @FIELD_GET(i32 %226, i32 %227)
  %229 = call i32 @s6_to_int(i32 %228)
  store i32 %229, i32* %5, align 4
  %230 = load i32, i32* %5, align 4
  %231 = load i32, i32* %6, align 4
  %232 = add nsw i32 %231, %230
  store i32 %232, i32* %6, align 4
  %233 = load i32, i32* %12, align 4
  %234 = load i32, i32* @MT_TX_ALC_CFG_1_TEMP_COMP, align 4
  %235 = xor i32 %234, -1
  %236 = and i32 %233, %235
  %237 = load i32, i32* %6, align 4
  %238 = call i32 @int_to_s6(i32 %237)
  %239 = or i32 %236, %238
  store i32 %239, i32* %12, align 4
  %240 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %241 = load i32, i32* @MT_TX_ALC_CFG_1, align 4
  %242 = load i32, i32* %12, align 4
  %243 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %240, i32 %241, i32 %242)
  %244 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %245 = load i32, i32* %11, align 4
  %246 = call i32 @mt7601u_mcu_tssi_read_kick(%struct.mt7601u_dev* %244, i32 %245)
  store i32 %246, i32* %2, align 4
  br label %247

247:                                              ; preds = %209, %36, %28, %20
  %248 = load i32, i32* %2, align 4
  ret i32 %248
}

declare dso_local i32 @mt7601u_use_hvga(%struct.mt7601u_dev*) #1

declare dso_local i32 @mt7601u_mcu_tssi_read_kick(%struct.mt7601u_dev*, i32) #1

declare dso_local i32 @mt7601u_tssi_read_ready(%struct.mt7601u_dev*) #1

declare dso_local i64 @mt7601u_tssi_params_get(%struct.mt7601u_dev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local signext i8 @lin2dBd(i8 signext) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @dev_err(i32, i8*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #3

declare dso_local i32 @mt7601u_rr(%struct.mt7601u_dev*, i32) #1

declare dso_local i32 @s6_to_int(i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @int_to_s6(i32) #1

declare dso_local i32 @mt7601u_wr(%struct.mt7601u_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
