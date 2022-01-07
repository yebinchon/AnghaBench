; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_InitDDCRegs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_InitDDCRegs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i8, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@__const.SiS_InitDDCRegs.ddcdtype = private unnamed_addr constant [5 x i8] c"\A0\A0\A0\A2\A6", align 1
@VB2_SISTMDSBRIDGE = common dso_local global i32 0, align 4
@VB2_30xBDH = common dso_local global i32 0, align 4
@SIS_300_VGA = common dso_local global i32 0, align 4
@VB2_SISBRIDGE = common dso_local global i32 0, align 4
@VB2_301 = common dso_local global i32 0, align 4
@VB2_LVDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.SiS_Private*, i32, i32, i16, i16, i32, i32)* @SiS_InitDDCRegs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @SiS_InitDDCRegs(%struct.SiS_Private* %0, i32 %1, i32 %2, i16 zeroext %3, i16 zeroext %4, i32 %5, i32 %6) #0 {
  %8 = alloca i16, align 2
  %9 = alloca %struct.SiS_Private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [5 x i8], align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i16, align 2
  %20 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i16 %3, i16* %12, align 2
  store i16 %4, i16* %13, align 2
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = bitcast [5 x i8]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.SiS_InitDDCRegs.ddcdtype, i32 0, i32 0), i64 5, i1 false)
  store i16 0, i16* %19, align 2
  %22 = load i16, i16* %12, align 2
  store i16 %22, i16* %20, align 2
  %23 = load i16, i16* %12, align 2
  %24 = zext i16 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %7
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* @VB2_SISTMDSBRIDGE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i16 -1, i16* %8, align 2
  br label %213

32:                                               ; preds = %26
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* @VB2_30xBDH, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i16, i16* %12, align 2
  %39 = zext i16 %38 to i32
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i16 -1, i16* %8, align 2
  br label %213

42:                                               ; preds = %37, %32
  br label %43

43:                                               ; preds = %42, %7
  %44 = load %struct.SiS_Private*, %struct.SiS_Private** %9, align 8
  %45 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %44, i32 0, i32 9
  store i64 0, i64* %45, align 8
  %46 = load %struct.SiS_Private*, %struct.SiS_Private** %9, align 8
  %47 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %46, i32 0, i32 8
  store i64 0, i64* %47, align 8
  %48 = load i16, i16* %13, align 2
  %49 = zext i16 %48 to i64
  %50 = getelementptr inbounds [5 x i8], [5 x i8]* %16, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = load %struct.SiS_Private*, %struct.SiS_Private** %9, align 8
  %53 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %52, i32 0, i32 0
  store i8 %51, i8* %53, align 8
  %54 = load %struct.SiS_Private*, %struct.SiS_Private** %9, align 8
  %55 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.SiS_Private*, %struct.SiS_Private** %9, align 8
  %58 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 4
  %59 = load %struct.SiS_Private*, %struct.SiS_Private** %9, align 8
  %60 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %59, i32 0, i32 1
  store i32 17, i32* %60, align 4
  store i8 -1, i8* %17, align 1
  %61 = load %struct.SiS_Private*, %struct.SiS_Private** %9, align 8
  %62 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = call zeroext i8 @SiS_GetReg(i32 %63, i32 50)
  store i8 %64, i8* %18, align 1
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @SIS_300_VGA, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %128

68:                                               ; preds = %43
  %69 = load i16, i16* %20, align 2
  %70 = zext i16 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %68
  store i8 0, i8* %17, align 1
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* @VB2_SISBRIDGE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load %struct.SiS_Private*, %struct.SiS_Private** %9, align 8
  %79 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.SiS_Private*, %struct.SiS_Private** %9, align 8
  %82 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 4
  %83 = load %struct.SiS_Private*, %struct.SiS_Private** %9, align 8
  %84 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %83, i32 0, i32 1
  store i32 15, i32* %84, align 4
  br label %85

85:                                               ; preds = %77, %72
  br label %86

86:                                               ; preds = %85, %68
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* @VB2_301, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %118, label %91

91:                                               ; preds = %86
  %92 = load i8, i8* %18, align 1
  %93 = zext i8 %92 to i32
  %94 = and i32 %93, 128
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %117

96:                                               ; preds = %91
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %117

99:                                               ; preds = %96
  %100 = load i16, i16* %20, align 2
  %101 = zext i16 %100 to i32
  %102 = icmp sge i32 %101, 1
  br i1 %102, label %103, label %116

103:                                              ; preds = %99
  %104 = load i8, i8* %18, align 1
  %105 = zext i8 %104 to i32
  %106 = and i32 %105, 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %103
  store i16 1, i16* %20, align 2
  %109 = load i8, i8* %18, align 1
  %110 = zext i8 %109 to i32
  %111 = and i32 %110, 16
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  store i16 -1, i16* %8, align 2
  br label %213

114:                                              ; preds = %108
  br label %115

115:                                              ; preds = %114, %103
  br label %116

116:                                              ; preds = %115, %99
  br label %117

117:                                              ; preds = %116, %96, %91
  br label %118

118:                                              ; preds = %117, %86
  %119 = load i16, i16* %20, align 2
  %120 = zext i16 %119 to i32
  %121 = mul nsw i32 %120, 2
  %122 = sub nsw i32 4, %121
  %123 = trunc i32 %122 to i16
  store i16 %123, i16* %19, align 2
  %124 = load i8, i8* %17, align 1
  %125 = icmp ne i8 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  store i16 0, i16* %19, align 2
  br label %127

127:                                              ; preds = %126, %118
  br label %200

128:                                              ; preds = %43
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* @VB2_SISBRIDGE, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = load i16, i16* %20, align 2
  %135 = zext i16 %134 to i32
  %136 = icmp eq i32 %135, 2
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  store i16 1, i16* %20, align 2
  br label %138

138:                                              ; preds = %137, %133
  br label %139

139:                                              ; preds = %138, %128
  %140 = load i16, i16* %20, align 2
  %141 = zext i16 %140 to i32
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %143, label %157

143:                                              ; preds = %139
  store i8 0, i8* %17, align 1
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* @VB2_SISBRIDGE, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %143
  %149 = load %struct.SiS_Private*, %struct.SiS_Private** %9, align 8
  %150 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.SiS_Private*, %struct.SiS_Private** %9, align 8
  %153 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %152, i32 0, i32 5
  store i32 %151, i32* %153, align 4
  %154 = load %struct.SiS_Private*, %struct.SiS_Private** %9, align 8
  %155 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %154, i32 0, i32 1
  store i32 15, i32* %155, align 4
  br label %156

156:                                              ; preds = %148, %143
  br label %157

157:                                              ; preds = %156, %139
  %158 = load i8, i8* %18, align 1
  %159 = zext i8 %158 to i32
  %160 = and i32 %159, 128
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %183

162:                                              ; preds = %157
  %163 = load i32, i32* %14, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %183

165:                                              ; preds = %162
  %166 = load i16, i16* %20, align 2
  %167 = zext i16 %166 to i32
  %168 = icmp sge i32 %167, 1
  br i1 %168, label %169, label %182

169:                                              ; preds = %165
  %170 = load i8, i8* %18, align 1
  %171 = zext i8 %170 to i32
  %172 = and i32 %171, 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %181, label %174

174:                                              ; preds = %169
  store i16 1, i16* %20, align 2
  %175 = load i8, i8* %18, align 1
  %176 = zext i8 %175 to i32
  %177 = and i32 %176, 16
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %174
  store i16 -1, i16* %8, align 2
  br label %213

180:                                              ; preds = %174
  br label %181

181:                                              ; preds = %180, %169
  br label %182

182:                                              ; preds = %181, %165
  br label %183

183:                                              ; preds = %182, %162, %157
  %184 = load i16, i16* %20, align 2
  store i16 %184, i16* %19, align 2
  %185 = load i16, i16* %20, align 2
  %186 = zext i16 %185 to i32
  %187 = icmp eq i32 %186, 1
  br i1 %187, label %188, label %195

188:                                              ; preds = %183
  store i16 0, i16* %19, align 2
  %189 = load i32, i32* %15, align 4
  %190 = load i32, i32* @VB2_LVDS, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  store i8 -1, i8* %17, align 1
  br label %194

194:                                              ; preds = %193, %188
  br label %195

195:                                              ; preds = %194, %183
  %196 = load i8, i8* %17, align 1
  %197 = icmp ne i8 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %195
  store i16 0, i16* %19, align 2
  br label %199

199:                                              ; preds = %198, %195
  br label %200

200:                                              ; preds = %199, %127
  %201 = load i16, i16* %19, align 2
  %202 = zext i16 %201 to i32
  %203 = shl i32 2, %202
  %204 = load %struct.SiS_Private*, %struct.SiS_Private** %9, align 8
  %205 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %204, i32 0, i32 2
  store i32 %203, i32* %205, align 8
  %206 = load i16, i16* %19, align 2
  %207 = zext i16 %206 to i32
  %208 = shl i32 1, %207
  %209 = load %struct.SiS_Private*, %struct.SiS_Private** %9, align 8
  %210 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %209, i32 0, i32 3
  store i32 %208, i32* %210, align 4
  %211 = load %struct.SiS_Private*, %struct.SiS_Private** %9, align 8
  %212 = call i32 @SiS_SetupDDCN(%struct.SiS_Private* %211)
  store i16 0, i16* %8, align 2
  br label %213

213:                                              ; preds = %200, %179, %113, %41, %31
  %214 = load i16, i16* %8, align 2
  ret i16 %214
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local zeroext i8 @SiS_GetReg(i32, i32) #2

declare dso_local i32 @SiS_SetupDDCN(%struct.SiS_Private*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
