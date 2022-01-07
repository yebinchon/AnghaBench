; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_HandleDDC.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_HandleDDC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32, i32 }

@VB2_VIDEOBRIDGE = common dso_local global i32 0, align 4
@SIS_300_VGA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @SiS_HandleDDC(%struct.SiS_Private* %0, i32 %1, i32 %2, i16 zeroext %3, i16 zeroext %4, i8* %5, i32 %6) #0 {
  %8 = alloca i16, align 2
  %9 = alloca %struct.SiS_Private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i16 %3, i16* %12, align 2
  store i16 %4, i16* %13, align 2
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i8 1, i8* %17, align 1
  %19 = load i16, i16* %12, align 2
  %20 = zext i16 %19 to i32
  %21 = icmp sgt i32 %20, 2
  br i1 %21, label %22, label %23

22:                                               ; preds = %7
  store i16 -1, i16* %8, align 2
  br label %220

23:                                               ; preds = %7
  %24 = load i16, i16* %13, align 2
  %25 = zext i16 %24 to i32
  %26 = icmp sgt i32 %25, 4
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i16 -1, i16* %8, align 2
  br label %220

28:                                               ; preds = %23
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* @VB2_VIDEOBRIDGE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i16, i16* %12, align 2
  %35 = zext i16 %34 to i32
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i16 -1, i16* %8, align 2
  br label %220

38:                                               ; preds = %33, %28
  %39 = load %struct.SiS_Private*, %struct.SiS_Private** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i16, i16* %12, align 2
  %43 = load i16, i16* %13, align 2
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @SiS_InitDDCRegs(%struct.SiS_Private* %39, i32 %40, i32 %41, i16 zeroext %42, i16 zeroext %43, i32 0, i32 %44)
  %46 = icmp eq i32 %45, 65535
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i16 -1, i16* %8, align 2
  br label %220

48:                                               ; preds = %38
  %49 = load %struct.SiS_Private*, %struct.SiS_Private** %9, align 8
  %50 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @SiS_GetReg(i32 %51, i32 31)
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %16, align 1
  %54 = load %struct.SiS_Private*, %struct.SiS_Private** %9, align 8
  %55 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @SiS_SetRegANDOR(i32 %56, i32 31, i32 63, i8 zeroext 4)
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @SIS_300_VGA, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %48
  %62 = load %struct.SiS_Private*, %struct.SiS_Private** %9, align 8
  %63 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @SiS_GetReg(i32 %64, i32 23)
  %66 = and i32 %65, 128
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %17, align 1
  %68 = load i8, i8* %17, align 1
  %69 = icmp ne i8 %68, 0
  br i1 %69, label %83, label %70

70:                                               ; preds = %61
  %71 = load %struct.SiS_Private*, %struct.SiS_Private** %9, align 8
  %72 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @SiS_SetRegOR(i32 %73, i32 23, i32 128)
  %75 = load %struct.SiS_Private*, %struct.SiS_Private** %9, align 8
  %76 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @SiS_SetReg(i32 %77, i32 0, i8 zeroext 1)
  %79 = load %struct.SiS_Private*, %struct.SiS_Private** %9, align 8
  %80 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @SiS_SetReg(i32 %81, i32 0, i8 zeroext 3)
  br label %83

83:                                               ; preds = %70, %61
  br label %84

84:                                               ; preds = %83, %48
  %85 = load i8, i8* %16, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = load i8, i8* %17, align 1
  %90 = icmp ne i8 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %88, %84
  %92 = load %struct.SiS_Private*, %struct.SiS_Private** %9, align 8
  %93 = call i32 @SiS_WaitRetrace1(%struct.SiS_Private* %92)
  %94 = load %struct.SiS_Private*, %struct.SiS_Private** %9, align 8
  %95 = call i32 @SiS_WaitRetrace1(%struct.SiS_Private* %94)
  %96 = load %struct.SiS_Private*, %struct.SiS_Private** %9, align 8
  %97 = call i32 @SiS_WaitRetrace1(%struct.SiS_Private* %96)
  %98 = load %struct.SiS_Private*, %struct.SiS_Private** %9, align 8
  %99 = call i32 @SiS_WaitRetrace1(%struct.SiS_Private* %98)
  br label %100

100:                                              ; preds = %91, %88
  %101 = load i16, i16* %13, align 2
  %102 = zext i16 %101 to i32
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load %struct.SiS_Private*, %struct.SiS_Private** %9, align 8
  %106 = call zeroext i16 @SiS_ProbeDDC(%struct.SiS_Private* %105)
  store i16 %106, i16* %18, align 2
  br label %203

107:                                              ; preds = %100
  %108 = load %struct.SiS_Private*, %struct.SiS_Private** %9, align 8
  %109 = load i16, i16* %13, align 2
  %110 = load i8*, i8** %14, align 8
  %111 = call zeroext i16 @SiS_ReadDDC(%struct.SiS_Private* %108, i16 zeroext %109, i8* %110)
  store i16 %111, i16* %18, align 2
  %112 = load i16, i16* %18, align 2
  %113 = icmp ne i16 %112, 0
  br i1 %113, label %202, label %114

114:                                              ; preds = %107
  %115 = load i16, i16* %13, align 2
  %116 = zext i16 %115 to i32
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %202

118:                                              ; preds = %114
  %119 = load i8*, i8** %14, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %201

124:                                              ; preds = %118
  %125 = load i8*, i8** %14, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp eq i32 %128, 255
  br i1 %129, label %130, label %201

130:                                              ; preds = %124
  %131 = load i8*, i8** %14, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 2
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp eq i32 %134, 255
  br i1 %135, label %136, label %201

136:                                              ; preds = %130
  %137 = load i8*, i8** %14, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 3
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = icmp eq i32 %140, 255
  br i1 %141, label %142, label %201

142:                                              ; preds = %136
  %143 = load i8*, i8** %14, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 4
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = icmp eq i32 %146, 255
  br i1 %147, label %148, label %201

148:                                              ; preds = %142
  %149 = load i8*, i8** %14, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 5
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp eq i32 %152, 255
  br i1 %153, label %154, label %201

154:                                              ; preds = %148
  %155 = load i8*, i8** %14, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 6
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = icmp eq i32 %158, 255
  br i1 %159, label %160, label %201

160:                                              ; preds = %154
  %161 = load i8*, i8** %14, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 7
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %201

166:                                              ; preds = %160
  %167 = load i8*, i8** %14, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 18
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %172, label %201

172:                                              ; preds = %166
  %173 = load %struct.SiS_Private*, %struct.SiS_Private** %9, align 8
  %174 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %200, label %177

177:                                              ; preds = %172
  %178 = load i16, i16* %12, align 2
  %179 = zext i16 %178 to i32
  %180 = icmp eq i32 %179, 1
  br i1 %180, label %181, label %190

181:                                              ; preds = %177
  %182 = load i8*, i8** %14, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 20
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = and i32 %185, 128
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %181
  store i16 -2, i16* %18, align 2
  br label %189

189:                                              ; preds = %188, %181
  br label %199

190:                                              ; preds = %177
  %191 = load i8*, i8** %14, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 20
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = and i32 %194, 128
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %190
  store i16 -2, i16* %18, align 2
  br label %198

198:                                              ; preds = %197, %190
  br label %199

199:                                              ; preds = %198, %189
  br label %200

200:                                              ; preds = %199, %172
  br label %201

201:                                              ; preds = %200, %166, %160, %154, %148, %142, %136, %130, %124, %118
  br label %202

202:                                              ; preds = %201, %114, %107
  br label %203

203:                                              ; preds = %202, %104
  %204 = load %struct.SiS_Private*, %struct.SiS_Private** %9, align 8
  %205 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load i8, i8* %16, align 1
  %208 = call i32 @SiS_SetReg(i32 %206, i32 31, i8 zeroext %207)
  %209 = load i32, i32* %11, align 4
  %210 = load i32, i32* @SIS_300_VGA, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %218

212:                                              ; preds = %203
  %213 = load %struct.SiS_Private*, %struct.SiS_Private** %9, align 8
  %214 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i8, i8* %17, align 1
  %217 = call i32 @SiS_SetRegANDOR(i32 %215, i32 23, i32 127, i8 zeroext %216)
  br label %218

218:                                              ; preds = %212, %203
  %219 = load i16, i16* %18, align 2
  store i16 %219, i16* %8, align 2
  br label %220

220:                                              ; preds = %218, %47, %37, %27, %22
  %221 = load i16, i16* %8, align 2
  ret i16 %221
}

declare dso_local i32 @SiS_InitDDCRegs(%struct.SiS_Private*, i32, i32, i16 zeroext, i16 zeroext, i32, i32) #1

declare dso_local i32 @SiS_GetReg(i32, i32) #1

declare dso_local i32 @SiS_SetRegANDOR(i32, i32, i32, i8 zeroext) #1

declare dso_local i32 @SiS_SetRegOR(i32, i32, i32) #1

declare dso_local i32 @SiS_SetReg(i32, i32, i8 zeroext) #1

declare dso_local i32 @SiS_WaitRetrace1(%struct.SiS_Private*) #1

declare dso_local zeroext i16 @SiS_ProbeDDC(%struct.SiS_Private*) #1

declare dso_local zeroext i16 @SiS_ReadDDC(%struct.SiS_Private*, i16 zeroext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
