; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_SiS_SenseLCD.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_SiS_SenseLCD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_video_info = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@VB2_SISTMDSBRIDGE = common dso_local global i32 0, align 4
@VB2_30xBDH = common dso_local global i32 0, align 4
@SISCR = common dso_local global i32 0, align 4
@VB2_30xC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sis_video_info*)* @SiS_SenseLCD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SenseLCD(%struct.sis_video_info* %0) #0 {
  %2 = alloca %struct.sis_video_info*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sis_video_info* %0, %struct.sis_video_info** %2, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %13 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %16 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @VB2_SISTMDSBRIDGE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %202

22:                                               ; preds = %1
  %23 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %24 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @VB2_30xBDH, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %202

30:                                               ; preds = %22
  %31 = load i32, i32* @SISCR, align 4
  %32 = call i32 @SiS_GetReg(i32 %31, i32 50)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %202

37:                                               ; preds = %30
  store i16 1, i16* %5, align 2
  %38 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %39 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i16 0, i16* %5, align 2
  br label %44

44:                                               ; preds = %43, %37
  %45 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %46 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %45, i32 0, i32 1
  %47 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %48 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %51 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i16, i16* %5, align 2
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %55 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %56 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call zeroext i16 @SiS_HandleDDC(%struct.TYPE_2__* %46, i32 %49, i32 %52, i16 zeroext %53, i32 0, i8* %54, i32 %57)
  store i16 %58, i16* %4, align 2
  %59 = load i16, i16* %4, align 2
  %60 = icmp ne i16 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %44
  %62 = load i16, i16* %4, align 2
  %63 = zext i16 %62 to i32
  %64 = icmp eq i32 %63, 65535
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = load i16, i16* %4, align 2
  %67 = zext i16 %66 to i32
  %68 = and i32 %67, 2
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65, %61, %44
  br label %202

71:                                               ; preds = %65
  store i16 3, i16* %6, align 2
  br label %72

72:                                               ; preds = %96, %71
  %73 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %74 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %73, i32 0, i32 1
  %75 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %76 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %79 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i16, i16* %5, align 2
  %82 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %83 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %84 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call zeroext i16 @SiS_HandleDDC(%struct.TYPE_2__* %74, i32 %77, i32 %80, i16 zeroext %81, i32 1, i8* %82, i32 %85)
  store i16 %86, i16* %4, align 2
  br label %87

87:                                               ; preds = %72
  %88 = load i16, i16* %4, align 2
  %89 = zext i16 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load i16, i16* %6, align 2
  %93 = add i16 %92, -1
  store i16 %93, i16* %6, align 2
  %94 = zext i16 %92 to i32
  %95 = icmp ne i32 %94, 0
  br label %96

96:                                               ; preds = %91, %87
  %97 = phi i1 [ false, %87 ], [ %95, %91 ]
  br i1 %97, label %72, label %98

98:                                               ; preds = %96
  %99 = load i16, i16* %4, align 2
  %100 = icmp ne i16 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %202

102:                                              ; preds = %98
  %103 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 20
  %104 = load i8, i8* %103, align 4
  %105 = zext i8 %104 to i32
  %106 = and i32 %105, 128
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %102
  br label %202

109:                                              ; preds = %102
  %110 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 24
  %111 = load i8, i8* %110, align 8
  %112 = zext i8 %111 to i32
  %113 = and i32 %112, 2
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %109
  br label %202

116:                                              ; preds = %109
  %117 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 56
  %118 = load i8, i8* %117, align 8
  %119 = zext i8 %118 to i32
  %120 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 58
  %121 = load i8, i8* %120, align 2
  %122 = zext i8 %121 to i32
  %123 = and i32 %122, 240
  %124 = shl i32 %123, 4
  %125 = or i32 %119, %124
  store i32 %125, i32* %10, align 4
  %126 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 59
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 61
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = and i32 %131, 240
  %133 = shl i32 %132, 4
  %134 = or i32 %128, %133
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %10, align 4
  switch i32 %135, label %158 [
    i32 1024, label %136
    i32 1280, label %141
    i32 1600, label %146
  ]

136:                                              ; preds = %116
  %137 = load i32, i32* %11, align 4
  %138 = icmp eq i32 %137, 768
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  store i32 2, i32* %9, align 4
  br label %140

140:                                              ; preds = %139, %136
  br label %158

141:                                              ; preds = %116
  %142 = load i32, i32* %11, align 4
  %143 = icmp eq i32 %142, 1024
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  store i32 3, i32* %9, align 4
  br label %145

145:                                              ; preds = %144, %141
  br label %158

146:                                              ; preds = %116
  %147 = load i32, i32* %11, align 4
  %148 = icmp eq i32 %147, 1200
  br i1 %148, label %149, label %157

149:                                              ; preds = %146
  %150 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %151 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @VB2_30xC, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  store i32 11, i32* %9, align 4
  br label %157

157:                                              ; preds = %156, %149, %146
  br label %158

158:                                              ; preds = %116, %157, %145, %140
  %159 = load i32, i32* %9, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %158
  br label %202

162:                                              ; preds = %158
  %163 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 35
  %164 = load i8, i8* %163, align 1
  %165 = icmp ne i8 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %162
  %167 = load i32, i32* %8, align 4
  %168 = or i32 %167, 16
  store i32 %168, i32* %8, align 4
  br label %169

169:                                              ; preds = %166, %162
  %170 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 71
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = and i32 %172, 24
  %174 = icmp eq i32 %173, 24
  br i1 %174, label %175, label %185

175:                                              ; preds = %169
  %176 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 71
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = and i32 %178, 6
  %180 = xor i32 %179, 6
  %181 = shl i32 %180, 5
  %182 = or i32 %181, 32
  %183 = load i32, i32* %8, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %8, align 4
  br label %188

185:                                              ; preds = %169
  %186 = load i32, i32* %8, align 4
  %187 = or i32 %186, 192
  store i32 %187, i32* %8, align 4
  br label %188

188:                                              ; preds = %185, %175
  %189 = load i32, i32* @SISCR, align 4
  %190 = load i32, i32* %9, align 4
  %191 = call i32 @SiS_SetReg(i32 %189, i32 54, i32 %190)
  %192 = load i32, i32* %8, align 4
  %193 = and i32 %192, 241
  store i32 %193, i32* %8, align 4
  %194 = load i32, i32* @SISCR, align 4
  %195 = load i32, i32* %8, align 4
  %196 = call i32 @SiS_SetRegANDOR(i32 %194, i32 55, i32 12, i32 %195)
  %197 = load i32, i32* @SISCR, align 4
  %198 = call i32 @SiS_SetRegOR(i32 %197, i32 50, i32 8)
  %199 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %200 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  store i32 1, i32* %201, align 8
  br label %202

202:                                              ; preds = %188, %161, %115, %108, %101, %70, %36, %29, %21
  ret void
}

declare dso_local i32 @SiS_GetReg(i32, i32) #1

declare dso_local zeroext i16 @SiS_HandleDDC(%struct.TYPE_2__*, i32, i32, i16 zeroext, i32, i8*, i32) #1

declare dso_local i32 @SiS_SetReg(i32, i32, i32) #1

declare dso_local i32 @SiS_SetRegANDOR(i32, i32, i32, i32) #1

declare dso_local i32 @SiS_SetRegOR(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
