; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_pkey_api.c_pkey_verifykey2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_pkey_api.c_pkey_verifykey2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keytoken_header = type { i64, i64 }
%struct.secaeskeytoken = type { i32, i64 }
%struct.cipherkeytoken = type { i32, i32, i32 }
%struct.pkey_apqn = type { i32, i32 }

@TOKTYPE_CCA_INTERNAL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TOKVER_CCA_AES = common dso_local global i64 0, align 8
@debug_info = common dso_local global i32 0, align 4
@PKEY_TYPE_CCA_DATA = common dso_local global i32 0, align 4
@ZCRYPT_CEX3C = common dso_local global i32 0, align 4
@PKEY_FLAGS_MATCH_CUR_MKVP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PKEY_FLAGS_MATCH_ALT_MKVP = common dso_local global i32 0, align 4
@TOKVER_CCA_VLSC = common dso_local global i64 0, align 8
@PKEY_TYPE_CCA_CIPHER = common dso_local global i32 0, align 4
@PKEY_SIZE_UNKNOWN = common dso_local global i32 0, align 4
@PKEY_SIZE_AES_128 = common dso_local global i32 0, align 4
@PKEY_SIZE_AES_192 = common dso_local global i32 0, align 4
@PKEY_SIZE_AES_256 = common dso_local global i32 0, align 4
@ZCRYPT_CEX6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*, i32*, i32*, i32*, i32*)* @pkey_verifykey2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_verifykey2(i32* %0, i64 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.keytoken_header*, align 8
  %20 = alloca %struct.secaeskeytoken*, align 8
  %21 = alloca %struct.cipherkeytoken*, align 8
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* null, i32** %18, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = bitcast i32* %22 to %struct.keytoken_header*
  store %struct.keytoken_header* %23, %struct.keytoken_header** %19, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp ult i64 %24, 16
  br i1 %25, label %32, label %26

26:                                               ; preds = %7
  %27 = load %struct.keytoken_header*, %struct.keytoken_header** %19, align 8
  %28 = getelementptr inbounds %struct.keytoken_header, %struct.keytoken_header* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TOKTYPE_CCA_INTERNAL, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26, %7
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %256

35:                                               ; preds = %26
  %36 = load %struct.keytoken_header*, %struct.keytoken_header** %19, align 8
  %37 = getelementptr inbounds %struct.keytoken_header, %struct.keytoken_header* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TOKVER_CCA_AES, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %122

41:                                               ; preds = %35
  %42 = load i32*, i32** %9, align 8
  %43 = bitcast i32* %42 to %struct.secaeskeytoken*
  store %struct.secaeskeytoken* %43, %struct.secaeskeytoken** %20, align 8
  %44 = load i32, i32* @debug_info, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @cca_check_secaeskeytoken(i32 %44, i32 3, i32* %45, i32 0)
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %252

50:                                               ; preds = %41
  %51 = load i32*, i32** %13, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @PKEY_TYPE_CCA_DATA, align 4
  %55 = load i32*, i32** %13, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32*, i32** %14, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load %struct.secaeskeytoken*, %struct.secaeskeytoken** %20, align 8
  %61 = getelementptr inbounds %struct.secaeskeytoken, %struct.secaeskeytoken* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = load i32*, i32** %14, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %59, %56
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @ZCRYPT_CEX3C, align 4
  %71 = load %struct.secaeskeytoken*, %struct.secaeskeytoken** %20, align 8
  %72 = getelementptr inbounds %struct.secaeskeytoken, %struct.secaeskeytoken* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @cca_findcard2(i32** %18, i32* %17, i32 %67, i32 %69, i32 %70, i32 %73, i32 0, i32 1)
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %16, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %65
  %78 = load i32*, i32** %15, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* @PKEY_FLAGS_MATCH_CUR_MKVP, align 4
  %82 = load i32*, i32** %15, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %77, %65
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* @ENODEV, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %107

88:                                               ; preds = %83
  %89 = load i32*, i32** %11, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %12, align 8
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @ZCRYPT_CEX3C, align 4
  %94 = load %struct.secaeskeytoken*, %struct.secaeskeytoken** %20, align 8
  %95 = getelementptr inbounds %struct.secaeskeytoken, %struct.secaeskeytoken* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @cca_findcard2(i32** %18, i32* %17, i32 %90, i32 %92, i32 %93, i32 0, i32 %96, i32 1)
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %88
  %101 = load i32*, i32** %15, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* @PKEY_FLAGS_MATCH_ALT_MKVP, align 4
  %105 = load i32*, i32** %15, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %103, %100, %88
  br label %107

107:                                              ; preds = %106, %83
  %108 = load i32, i32* %16, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  br label %252

111:                                              ; preds = %107
  %112 = load i32*, i32** %18, align 8
  %113 = bitcast i32* %112 to %struct.pkey_apqn*
  %114 = getelementptr inbounds %struct.pkey_apqn, %struct.pkey_apqn* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %11, align 8
  store i32 %115, i32* %116, align 4
  %117 = load i32*, i32** %18, align 8
  %118 = bitcast i32* %117 to %struct.pkey_apqn*
  %119 = getelementptr inbounds %struct.pkey_apqn, %struct.pkey_apqn* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %12, align 8
  store i32 %120, i32* %121, align 4
  br label %251

122:                                              ; preds = %35
  %123 = load %struct.keytoken_header*, %struct.keytoken_header** %19, align 8
  %124 = getelementptr inbounds %struct.keytoken_header, %struct.keytoken_header* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @TOKVER_CCA_VLSC, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %247

128:                                              ; preds = %122
  %129 = load i32*, i32** %9, align 8
  %130 = bitcast i32* %129 to %struct.cipherkeytoken*
  store %struct.cipherkeytoken* %130, %struct.cipherkeytoken** %21, align 8
  %131 = load i32, i32* @debug_info, align 4
  %132 = load i32*, i32** %9, align 8
  %133 = call i32 @cca_check_secaescipherkey(i32 %131, i32 3, i32* %132, i32 0, i32 1)
  store i32 %133, i32* %16, align 4
  %134 = load i32, i32* %16, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  br label %252

137:                                              ; preds = %128
  %138 = load i32*, i32** %13, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i32, i32* @PKEY_TYPE_CCA_CIPHER, align 4
  %142 = load i32*, i32** %13, align 8
  store i32 %141, i32* %142, align 4
  br label %143

143:                                              ; preds = %140, %137
  %144 = load i32*, i32** %14, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %190

146:                                              ; preds = %143
  %147 = load i32, i32* @PKEY_SIZE_UNKNOWN, align 4
  %148 = load i32*, i32** %14, align 8
  store i32 %147, i32* %148, align 4
  %149 = load %struct.cipherkeytoken*, %struct.cipherkeytoken** %21, align 8
  %150 = getelementptr inbounds %struct.cipherkeytoken, %struct.cipherkeytoken* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %161, label %153

153:                                              ; preds = %146
  %154 = load %struct.cipherkeytoken*, %struct.cipherkeytoken** %21, align 8
  %155 = getelementptr inbounds %struct.cipherkeytoken, %struct.cipherkeytoken* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, 512
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load i32, i32* @PKEY_SIZE_AES_128, align 4
  %160 = load i32*, i32** %14, align 8
  store i32 %159, i32* %160, align 4
  br label %189

161:                                              ; preds = %153, %146
  %162 = load %struct.cipherkeytoken*, %struct.cipherkeytoken** %21, align 8
  %163 = getelementptr inbounds %struct.cipherkeytoken, %struct.cipherkeytoken* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %174, label %166

166:                                              ; preds = %161
  %167 = load %struct.cipherkeytoken*, %struct.cipherkeytoken** %21, align 8
  %168 = getelementptr inbounds %struct.cipherkeytoken, %struct.cipherkeytoken* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 576
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load i32, i32* @PKEY_SIZE_AES_192, align 4
  %173 = load i32*, i32** %14, align 8
  store i32 %172, i32* %173, align 4
  br label %188

174:                                              ; preds = %166, %161
  %175 = load %struct.cipherkeytoken*, %struct.cipherkeytoken** %21, align 8
  %176 = getelementptr inbounds %struct.cipherkeytoken, %struct.cipherkeytoken* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %187, label %179

179:                                              ; preds = %174
  %180 = load %struct.cipherkeytoken*, %struct.cipherkeytoken** %21, align 8
  %181 = getelementptr inbounds %struct.cipherkeytoken, %struct.cipherkeytoken* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %182, 640
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = load i32, i32* @PKEY_SIZE_AES_256, align 4
  %186 = load i32*, i32** %14, align 8
  store i32 %185, i32* %186, align 4
  br label %187

187:                                              ; preds = %184, %179, %174
  br label %188

188:                                              ; preds = %187, %171
  br label %189

189:                                              ; preds = %188, %158
  br label %190

190:                                              ; preds = %189, %143
  %191 = load i32*, i32** %11, align 8
  %192 = load i32, i32* %191, align 4
  %193 = load i32*, i32** %12, align 8
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @ZCRYPT_CEX6, align 4
  %196 = load %struct.cipherkeytoken*, %struct.cipherkeytoken** %21, align 8
  %197 = getelementptr inbounds %struct.cipherkeytoken, %struct.cipherkeytoken* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @cca_findcard2(i32** %18, i32* %17, i32 %192, i32 %194, i32 %195, i32 %198, i32 0, i32 1)
  store i32 %199, i32* %16, align 4
  %200 = load i32, i32* %16, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %190
  %203 = load i32*, i32** %15, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %208

205:                                              ; preds = %202
  %206 = load i32, i32* @PKEY_FLAGS_MATCH_CUR_MKVP, align 4
  %207 = load i32*, i32** %15, align 8
  store i32 %206, i32* %207, align 4
  br label %208

208:                                              ; preds = %205, %202, %190
  %209 = load i32, i32* %16, align 4
  %210 = load i32, i32* @ENODEV, align 4
  %211 = sub nsw i32 0, %210
  %212 = icmp eq i32 %209, %211
  br i1 %212, label %213, label %232

213:                                              ; preds = %208
  %214 = load i32*, i32** %11, align 8
  %215 = load i32, i32* %214, align 4
  %216 = load i32*, i32** %12, align 8
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @ZCRYPT_CEX6, align 4
  %219 = load %struct.cipherkeytoken*, %struct.cipherkeytoken** %21, align 8
  %220 = getelementptr inbounds %struct.cipherkeytoken, %struct.cipherkeytoken* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @cca_findcard2(i32** %18, i32* %17, i32 %215, i32 %217, i32 %218, i32 0, i32 %221, i32 1)
  store i32 %222, i32* %16, align 4
  %223 = load i32, i32* %16, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %213
  %226 = load i32*, i32** %15, align 8
  %227 = icmp ne i32* %226, null
  br i1 %227, label %228, label %231

228:                                              ; preds = %225
  %229 = load i32, i32* @PKEY_FLAGS_MATCH_ALT_MKVP, align 4
  %230 = load i32*, i32** %15, align 8
  store i32 %229, i32* %230, align 4
  br label %231

231:                                              ; preds = %228, %225, %213
  br label %232

232:                                              ; preds = %231, %208
  %233 = load i32, i32* %16, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %232
  br label %252

236:                                              ; preds = %232
  %237 = load i32*, i32** %18, align 8
  %238 = bitcast i32* %237 to %struct.pkey_apqn*
  %239 = getelementptr inbounds %struct.pkey_apqn, %struct.pkey_apqn* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load i32*, i32** %11, align 8
  store i32 %240, i32* %241, align 4
  %242 = load i32*, i32** %18, align 8
  %243 = bitcast i32* %242 to %struct.pkey_apqn*
  %244 = getelementptr inbounds %struct.pkey_apqn, %struct.pkey_apqn* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load i32*, i32** %12, align 8
  store i32 %245, i32* %246, align 4
  br label %250

247:                                              ; preds = %122
  %248 = load i32, i32* @EINVAL, align 4
  %249 = sub nsw i32 0, %248
  store i32 %249, i32* %16, align 4
  br label %250

250:                                              ; preds = %247, %236
  br label %251

251:                                              ; preds = %250, %111
  br label %252

252:                                              ; preds = %251, %235, %136, %110, %49
  %253 = load i32*, i32** %18, align 8
  %254 = call i32 @kfree(i32* %253)
  %255 = load i32, i32* %16, align 4
  store i32 %255, i32* %8, align 4
  br label %256

256:                                              ; preds = %252, %32
  %257 = load i32, i32* %8, align 4
  ret i32 %257
}

declare dso_local i32 @cca_check_secaeskeytoken(i32, i32, i32*, i32) #1

declare dso_local i32 @cca_findcard2(i32**, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cca_check_secaescipherkey(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
