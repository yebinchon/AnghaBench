; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_LoadDAC.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_LoadDAC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i64, i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i16 }
%struct.TYPE_3__ = type { i16 }

@DACInfoFlag = common dso_local global i16 0, align 2
@SiS_MDA_DAC = common dso_local global i8* null, align 8
@SiS_CGA_DAC = common dso_local global i8* null, align 8
@SiS_EGA_DAC = common dso_local global i8* null, align 8
@SiS_VGA_DAC = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16, i16)* @SiS_LoadDAC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_LoadDAC(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.SiS_Private*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  store %struct.SiS_Private* %0, %struct.SiS_Private** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  store i8* null, i8** %22, align 8
  %23 = load i16, i16* %5, align 2
  %24 = zext i16 %23 to i32
  %25 = icmp slt i32 %24, 19
  br i1 %25, label %26, label %35

26:                                               ; preds = %3
  %27 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %28 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %27, i32 0, i32 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i16, i16* %6, align 2
  %31 = zext i16 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i16, i16* %33, align 2
  store i16 %34, i16* %7, align 2
  br label %44

35:                                               ; preds = %3
  %36 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %37 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %36, i32 0, i32 3
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i16, i16* %6, align 2
  %40 = zext i16 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i16, i16* %42, align 2
  store i16 %43, i16* %7, align 2
  br label %44

44:                                               ; preds = %35, %26
  %45 = load i16, i16* @DACInfoFlag, align 2
  %46 = zext i16 %45 to i32
  %47 = load i16, i16* %7, align 2
  %48 = zext i16 %47 to i32
  %49 = and i32 %48, %46
  %50 = trunc i32 %49 to i16
  store i16 %50, i16* %7, align 2
  store i16 64, i16* %9, align 2
  store i16 64, i16* %11, align 2
  %51 = load i16, i16* %7, align 2
  %52 = zext i16 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i8*, i8** @SiS_MDA_DAC, align 8
  store i8* %55, i8** %22, align 8
  br label %72

56:                                               ; preds = %44
  %57 = load i16, i16* %7, align 2
  %58 = zext i16 %57 to i32
  %59 = icmp eq i32 %58, 8
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i8*, i8** @SiS_CGA_DAC, align 8
  store i8* %61, i8** %22, align 8
  br label %71

62:                                               ; preds = %56
  %63 = load i16, i16* %7, align 2
  %64 = zext i16 %63 to i32
  %65 = icmp eq i32 %64, 16
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i8*, i8** @SiS_EGA_DAC, align 8
  store i8* %67, i8** %22, align 8
  br label %70

68:                                               ; preds = %62
  store i16 16, i16* %11, align 2
  store i16 256, i16* %9, align 2
  %69 = load i8*, i8** @SiS_VGA_DAC, align 8
  store i8* %69, i8** %22, align 8
  br label %70

70:                                               ; preds = %68, %66
  br label %71

71:                                               ; preds = %70, %60
  br label %72

72:                                               ; preds = %71, %54
  %73 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %74 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %20, align 8
  %76 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %77 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %21, align 8
  store i16 0, i16* %19, align 2
  %79 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %80 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %81 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @SiS_SetRegByte(%struct.SiS_Private* %79, i64 %82, i16 zeroext 255)
  %84 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %85 = load i64, i64* %20, align 8
  %86 = call i32 @SiS_SetRegByte(%struct.SiS_Private* %84, i64 %85, i16 zeroext 0)
  store i16 0, i16* %10, align 2
  br label %87

87:                                               ; preds = %142, %72
  %88 = load i16, i16* %10, align 2
  %89 = zext i16 %88 to i32
  %90 = load i16, i16* %11, align 2
  %91 = zext i16 %90 to i32
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %93, label %145

93:                                               ; preds = %87
  %94 = load i8*, i8** %22, align 8
  %95 = load i16, i16* %10, align 2
  %96 = zext i16 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i16
  store i16 %99, i16* %7, align 2
  store i16 0, i16* %12, align 2
  br label %100

100:                                              ; preds = %138, %93
  %101 = load i16, i16* %12, align 2
  %102 = zext i16 %101 to i32
  %103 = icmp slt i32 %102, 3
  br i1 %103, label %104, label %141

104:                                              ; preds = %100
  store i16 0, i16* %8, align 2
  %105 = load i16, i16* %7, align 2
  %106 = zext i16 %105 to i32
  %107 = and i32 %106, 1
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load i16, i16* %8, align 2
  %111 = zext i16 %110 to i32
  %112 = add nsw i32 %111, 42
  %113 = trunc i32 %112 to i16
  store i16 %113, i16* %8, align 2
  br label %114

114:                                              ; preds = %109, %104
  %115 = load i16, i16* %7, align 2
  %116 = zext i16 %115 to i32
  %117 = and i32 %116, 2
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load i16, i16* %8, align 2
  %121 = zext i16 %120 to i32
  %122 = add nsw i32 %121, 21
  %123 = trunc i32 %122 to i16
  store i16 %123, i16* %8, align 2
  br label %124

124:                                              ; preds = %119, %114
  %125 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %126 = load i64, i64* %21, align 8
  %127 = load i16, i16* %8, align 2
  %128 = zext i16 %127 to i32
  %129 = load i16, i16* %19, align 2
  %130 = zext i16 %129 to i32
  %131 = shl i32 %128, %130
  %132 = trunc i32 %131 to i16
  %133 = call i32 @SiS_SetRegByte(%struct.SiS_Private* %125, i64 %126, i16 zeroext %132)
  %134 = load i16, i16* %7, align 2
  %135 = zext i16 %134 to i32
  %136 = ashr i32 %135, 2
  %137 = trunc i32 %136 to i16
  store i16 %137, i16* %7, align 2
  br label %138

138:                                              ; preds = %124
  %139 = load i16, i16* %12, align 2
  %140 = add i16 %139, 1
  store i16 %140, i16* %12, align 2
  br label %100

141:                                              ; preds = %100
  br label %142

142:                                              ; preds = %141
  %143 = load i16, i16* %10, align 2
  %144 = add i16 %143, 1
  store i16 %144, i16* %10, align 2
  br label %87

145:                                              ; preds = %87
  %146 = load i16, i16* %9, align 2
  %147 = zext i16 %146 to i32
  %148 = icmp eq i32 %147, 256
  br i1 %148, label %149, label %275

149:                                              ; preds = %145
  store i16 16, i16* %10, align 2
  br label %150

150:                                              ; preds = %178, %149
  %151 = load i16, i16* %10, align 2
  %152 = zext i16 %151 to i32
  %153 = icmp slt i32 %152, 32
  br i1 %153, label %154, label %181

154:                                              ; preds = %150
  %155 = load i8*, i8** %22, align 8
  %156 = load i16, i16* %10, align 2
  %157 = zext i16 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = load i16, i16* %19, align 2
  %162 = zext i16 %161 to i32
  %163 = shl i32 %160, %162
  %164 = trunc i32 %163 to i16
  store i16 %164, i16* %7, align 2
  store i16 0, i16* %12, align 2
  br label %165

165:                                              ; preds = %174, %154
  %166 = load i16, i16* %12, align 2
  %167 = zext i16 %166 to i32
  %168 = icmp slt i32 %167, 3
  br i1 %168, label %169, label %177

169:                                              ; preds = %165
  %170 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %171 = load i64, i64* %21, align 8
  %172 = load i16, i16* %7, align 2
  %173 = call i32 @SiS_SetRegByte(%struct.SiS_Private* %170, i64 %171, i16 zeroext %172)
  br label %174

174:                                              ; preds = %169
  %175 = load i16, i16* %12, align 2
  %176 = add i16 %175, 1
  store i16 %176, i16* %12, align 2
  br label %165

177:                                              ; preds = %165
  br label %178

178:                                              ; preds = %177
  %179 = load i16, i16* %10, align 2
  %180 = add i16 %179, 1
  store i16 %180, i16* %10, align 2
  br label %150

181:                                              ; preds = %150
  store i16 32, i16* %16, align 2
  store i16 0, i16* %13, align 2
  br label %182

182:                                              ; preds = %271, %181
  %183 = load i16, i16* %13, align 2
  %184 = zext i16 %183 to i32
  %185 = icmp slt i32 %184, 9
  br i1 %185, label %186, label %274

186:                                              ; preds = %182
  %187 = load i16, i16* %16, align 2
  store i16 %187, i16* %17, align 2
  %188 = load i16, i16* %16, align 2
  %189 = zext i16 %188 to i32
  %190 = add nsw i32 %189, 4
  %191 = trunc i32 %190 to i16
  store i16 %191, i16* %18, align 2
  store i16 0, i16* %14, align 2
  br label %192

192:                                              ; preds = %263, %186
  %193 = load i16, i16* %14, align 2
  %194 = zext i16 %193 to i32
  %195 = icmp slt i32 %194, 3
  br i1 %195, label %196, label %266

196:                                              ; preds = %192
  store i16 0, i16* %15, align 2
  br label %197

197:                                              ; preds = %224, %196
  %198 = load i16, i16* %15, align 2
  %199 = zext i16 %198 to i32
  %200 = icmp slt i32 %199, 5
  br i1 %200, label %201, label %227

201:                                              ; preds = %197
  %202 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %203 = load i64, i64* %21, align 8
  %204 = load i16, i16* %19, align 2
  %205 = load i16, i16* %14, align 2
  %206 = load i8*, i8** %22, align 8
  %207 = load i16, i16* %17, align 2
  %208 = zext i16 %207 to i64
  %209 = getelementptr inbounds i8, i8* %206, i64 %208
  %210 = load i8, i8* %209, align 1
  %211 = load i8*, i8** %22, align 8
  %212 = load i16, i16* %18, align 2
  %213 = zext i16 %212 to i64
  %214 = getelementptr inbounds i8, i8* %211, i64 %213
  %215 = load i8, i8* %214, align 1
  %216 = load i8*, i8** %22, align 8
  %217 = load i16, i16* %16, align 2
  %218 = zext i16 %217 to i64
  %219 = getelementptr inbounds i8, i8* %216, i64 %218
  %220 = load i8, i8* %219, align 1
  %221 = call i32 @SiS_WriteDAC(%struct.SiS_Private* %202, i64 %203, i16 zeroext %204, i16 zeroext %205, i8 zeroext %210, i8 zeroext %215, i8 zeroext %220)
  %222 = load i16, i16* %16, align 2
  %223 = add i16 %222, 1
  store i16 %223, i16* %16, align 2
  br label %224

224:                                              ; preds = %201
  %225 = load i16, i16* %15, align 2
  %226 = add i16 %225, 1
  store i16 %226, i16* %15, align 2
  br label %197

227:                                              ; preds = %197
  %228 = load i16, i16* %16, align 2
  %229 = zext i16 %228 to i32
  %230 = sub nsw i32 %229, 2
  %231 = trunc i32 %230 to i16
  store i16 %231, i16* %16, align 2
  store i16 0, i16* %15, align 2
  br label %232

232:                                              ; preds = %259, %227
  %233 = load i16, i16* %15, align 2
  %234 = zext i16 %233 to i32
  %235 = icmp slt i32 %234, 3
  br i1 %235, label %236, label %262

236:                                              ; preds = %232
  %237 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %238 = load i64, i64* %21, align 8
  %239 = load i16, i16* %19, align 2
  %240 = load i16, i16* %14, align 2
  %241 = load i8*, i8** %22, align 8
  %242 = load i16, i16* %17, align 2
  %243 = zext i16 %242 to i64
  %244 = getelementptr inbounds i8, i8* %241, i64 %243
  %245 = load i8, i8* %244, align 1
  %246 = load i8*, i8** %22, align 8
  %247 = load i16, i16* %16, align 2
  %248 = zext i16 %247 to i64
  %249 = getelementptr inbounds i8, i8* %246, i64 %248
  %250 = load i8, i8* %249, align 1
  %251 = load i8*, i8** %22, align 8
  %252 = load i16, i16* %18, align 2
  %253 = zext i16 %252 to i64
  %254 = getelementptr inbounds i8, i8* %251, i64 %253
  %255 = load i8, i8* %254, align 1
  %256 = call i32 @SiS_WriteDAC(%struct.SiS_Private* %237, i64 %238, i16 zeroext %239, i16 zeroext %240, i8 zeroext %245, i8 zeroext %250, i8 zeroext %255)
  %257 = load i16, i16* %16, align 2
  %258 = add i16 %257, -1
  store i16 %258, i16* %16, align 2
  br label %259

259:                                              ; preds = %236
  %260 = load i16, i16* %15, align 2
  %261 = add i16 %260, 1
  store i16 %261, i16* %15, align 2
  br label %232

262:                                              ; preds = %232
  br label %263

263:                                              ; preds = %262
  %264 = load i16, i16* %14, align 2
  %265 = add i16 %264, 1
  store i16 %265, i16* %14, align 2
  br label %192

266:                                              ; preds = %192
  %267 = load i16, i16* %16, align 2
  %268 = zext i16 %267 to i32
  %269 = add nsw i32 %268, 5
  %270 = trunc i32 %269 to i16
  store i16 %270, i16* %16, align 2
  br label %271

271:                                              ; preds = %266
  %272 = load i16, i16* %13, align 2
  %273 = add i16 %272, 1
  store i16 %273, i16* %13, align 2
  br label %182

274:                                              ; preds = %182
  br label %275

275:                                              ; preds = %274, %145
  ret void
}

declare dso_local i32 @SiS_SetRegByte(%struct.SiS_Private*, i64, i16 zeroext) #1

declare dso_local i32 @SiS_WriteDAC(%struct.SiS_Private*, i64, i16 zeroext, i16 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
