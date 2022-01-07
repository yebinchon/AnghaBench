; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sisfb_post_setmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sisfb_post_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_video_info = type { i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.TYPE_2__, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64 }
%struct.TYPE_2__ = type { i32 }

@SISSR = common dso_local global i32 0, align 4
@VB2_VIDEOBRIDGE = common dso_local global i32 0, align 4
@VB_DISPTYPE_CRT1 = common dso_local global i32 0, align 4
@VB_SINGLE_MODE = common dso_local global i32 0, align 4
@VB_DISPTYPE_CRT2 = common dso_local global i32 0, align 4
@VB_MIRROR_MODE = common dso_local global i32 0, align 4
@IND_SIS_RAMDAC_CONTROL = common dso_local global i32 0, align 4
@CRT2_TV = common dso_local global i32 0, align 4
@VB2_SISBRIDGE = common dso_local global i32 0, align 4
@SISPART2 = common dso_local global i32 0, align 4
@VB2_CHRONTEL = common dso_local global i32 0, align 4
@SISCR = common dso_local global i32 0, align 4
@SIS_300_VGA = common dso_local global i64 0, align 8
@SIS_315_VGA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sis_video_info*)* @sisfb_post_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sisfb_post_setmode(%struct.sis_video_info* %0) #0 {
  %2 = alloca %struct.sis_video_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sis_video_info* %0, %struct.sis_video_info** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %5 = load i32, i32* @SISSR, align 4
  %6 = call i32 @SiS_SetReg(i32 %5, i32 5, i32 134)
  %7 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %8 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %10 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @VB2_VIDEOBRIDGE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %17 = call i64 @sisfb_bridgeisslave(%struct.sis_video_info* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %19, %15
  br label %24

21:                                               ; preds = %1
  %22 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %23 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %22, i32 0, i32 19
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %21, %20
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = load i32, i32* @VB_DISPTYPE_CRT1, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %31 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load i32, i32* @VB_SINGLE_MODE, align 4
  %35 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %36 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %64

39:                                               ; preds = %24
  %40 = load i32, i32* @VB_DISPTYPE_CRT1, align 4
  %41 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %42 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %46 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @VB_DISPTYPE_CRT2, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %39
  %52 = load i32, i32* @VB_MIRROR_MODE, align 4
  %53 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %54 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %63

57:                                               ; preds = %39
  %58 = load i32, i32* @VB_SINGLE_MODE, align 4
  %59 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %60 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %57, %51
  br label %64

64:                                               ; preds = %63, %27
  %65 = load i32, i32* @SISSR, align 4
  %66 = load i32, i32* @IND_SIS_RAMDAC_CONTROL, align 4
  %67 = call i32 @SiS_SetRegAND(i32 %65, i32 %66, i32 -5)
  %68 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %69 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @CRT2_TV, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %155

74:                                               ; preds = %64
  %75 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %76 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @VB2_SISBRIDGE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %110

81:                                               ; preds = %74
  %82 = load i32, i32* @SISPART2, align 4
  %83 = call i8* @SiS_GetReg(i32 %82, i32 31)
  %84 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %85 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %84, i32 0, i32 18
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* @SISPART2, align 4
  %87 = call i8* @SiS_GetReg(i32 %86, i32 32)
  %88 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %89 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %88, i32 0, i32 17
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* @SISPART2, align 4
  %91 = call i8* @SiS_GetReg(i32 %90, i32 43)
  %92 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %93 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %92, i32 0, i32 16
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* @SISPART2, align 4
  %95 = call i8* @SiS_GetReg(i32 %94, i32 66)
  %96 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %97 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %96, i32 0, i32 15
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* @SISPART2, align 4
  %99 = call i8* @SiS_GetReg(i32 %98, i32 67)
  %100 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %101 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %100, i32 0, i32 14
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* @SISPART2, align 4
  %103 = call i8* @SiS_GetReg(i32 %102, i32 1)
  %104 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %105 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %104, i32 0, i32 13
  store i8* %103, i8** %105, align 8
  %106 = load i32, i32* @SISPART2, align 4
  %107 = call i8* @SiS_GetReg(i32 %106, i32 2)
  %108 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %109 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %108, i32 0, i32 12
  store i8* %107, i8** %109, align 8
  br label %154

110:                                              ; preds = %74
  %111 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %112 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @VB2_CHRONTEL, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %153

117:                                              ; preds = %110
  %118 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %119 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %152

122:                                              ; preds = %117
  %123 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %124 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %123, i32 0, i32 11
  %125 = call i32 @SiS_GetCH700x(%struct.TYPE_2__* %124, i32 10)
  %126 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %127 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %126, i32 0, i32 5
  store i32 %125, i32* %127, align 8
  %128 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %129 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %128, i32 0, i32 11
  %130 = call i32 @SiS_GetCH700x(%struct.TYPE_2__* %129, i32 8)
  %131 = and i32 %130, 2
  %132 = ashr i32 %131, 1
  %133 = shl i32 %132, 8
  %134 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %135 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 8
  %138 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %139 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %138, i32 0, i32 11
  %140 = call i32 @SiS_GetCH700x(%struct.TYPE_2__* %139, i32 11)
  %141 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %142 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %141, i32 0, i32 6
  store i32 %140, i32* %142, align 4
  %143 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %144 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %143, i32 0, i32 11
  %145 = call i32 @SiS_GetCH700x(%struct.TYPE_2__* %144, i32 8)
  %146 = and i32 %145, 1
  %147 = shl i32 %146, 8
  %148 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %149 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %122, %117
  br label %153

153:                                              ; preds = %152, %110
  br label %154

154:                                              ; preds = %153, %81
  br label %155

155:                                              ; preds = %154, %64
  %156 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %157 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %156, i32 0, i32 10
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %162 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %163 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %162, i32 0, i32 10
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @sisfb_set_TVxposoffset(%struct.sis_video_info* %161, i64 %164)
  br label %166

166:                                              ; preds = %160, %155
  %167 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %168 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %167, i32 0, i32 9
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %166
  %172 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %173 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %174 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %173, i32 0, i32 9
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @sisfb_set_TVyposoffset(%struct.sis_video_info* %172, i64 %175)
  br label %177

177:                                              ; preds = %171, %166
  %178 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %179 = call i32 @sisfb_check_engine_and_sync(%struct.sis_video_info* %178)
  %180 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %181 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %180, i32 0, i32 8
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %177
  %185 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %186 = call i32 @sisfb_engine_init(%struct.sis_video_info* %185)
  br label %190

187:                                              ; preds = %177
  %188 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %189 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %188, i32 0, i32 7
  store i64 0, i64* %189, align 8
  br label %190

190:                                              ; preds = %187, %184
  ret void
}

declare dso_local i32 @SiS_SetReg(i32, i32, i32) #1

declare dso_local i64 @sisfb_bridgeisslave(%struct.sis_video_info*) #1

declare dso_local i32 @SiS_SetRegAND(i32, i32, i32) #1

declare dso_local i8* @SiS_GetReg(i32, i32) #1

declare dso_local i32 @SiS_GetCH700x(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @sisfb_set_TVxposoffset(%struct.sis_video_info*, i64) #1

declare dso_local i32 @sisfb_set_TVyposoffset(%struct.sis_video_info*, i64) #1

declare dso_local i32 @sisfb_check_engine_and_sync(%struct.sis_video_info*) #1

declare dso_local i32 @sisfb_engine_init(%struct.sis_video_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
