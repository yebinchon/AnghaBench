; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sisfb_set_TVyposoffset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sisfb_set_TVyposoffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_video_info = type { i32, i32, i32, i32, i32, i8, i8, i32, i32, i64 }

@CRT2_TV = common dso_local global i32 0, align 4
@VB2_CHRONTEL = common dso_local global i32 0, align 4
@SISSR = common dso_local global i32 0, align 4
@VB2_SISBRIDGE = common dso_local global i32 0, align 4
@TV_HIVISION = common dso_local global i32 0, align 4
@TV_YPBPR = common dso_local global i32 0, align 4
@SISPART2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sis_video_info*, i32)* @sisfb_set_TVyposoffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sisfb_set_TVyposoffset(%struct.sis_video_info* %0, i32 %1) #0 {
  %3 = alloca %struct.sis_video_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.sis_video_info* %0, %struct.sis_video_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp sgt i32 %8, 32
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 32, i32* %4, align 4
  br label %11

11:                                               ; preds = %10, %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, -32
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 -32, i32* %4, align 4
  br label %15

15:                                               ; preds = %14, %11
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %18 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %20 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %19, i32 0, i32 9
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %138

24:                                               ; preds = %15
  %25 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %26 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %138

30:                                               ; preds = %24
  %31 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %32 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CRT2_TV, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %138

37:                                               ; preds = %30
  %38 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %39 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @VB2_CHRONTEL, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %74

44:                                               ; preds = %37
  %45 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %46 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %5, align 4
  %48 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %49 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %73 [
    i32 1, label %51
    i32 2, label %72
  ]

51:                                               ; preds = %44
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %5, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %51
  %59 = load i32, i32* @SISSR, align 4
  %60 = call i32 @SiS_SetReg(i32 %59, i32 5, i8 signext -122)
  %61 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %62 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %61, i32 0, i32 7
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, 255
  %65 = call i32 @SiS_SetCH700x(i32* %62, i32 11, i32 %64)
  %66 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %67 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %66, i32 0, i32 7
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %68, 256
  %70 = ashr i32 %69, 8
  %71 = call i32 @SiS_SetCH70xxANDOR(i32* %67, i32 8, i32 %70, i32 254)
  br label %73

72:                                               ; preds = %44
  br label %73

73:                                               ; preds = %44, %72, %58
  br label %137

74:                                               ; preds = %37
  %75 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %76 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @VB2_SISBRIDGE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %136

81:                                               ; preds = %74
  %82 = load i32, i32* %4, align 4
  %83 = sdiv i32 %82, 2
  store i32 %83, i32* %4, align 4
  %84 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %85 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %84, i32 0, i32 5
  %86 = load i8, i8* %85, align 4
  store i8 %86, i8* %6, align 1
  %87 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %88 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %87, i32 0, i32 6
  %89 = load i8, i8* %88, align 1
  store i8 %89, i8* %7, align 1
  %90 = load i32, i32* %4, align 4
  %91 = load i8, i8* %6, align 1
  %92 = sext i8 %91 to i32
  %93 = add nsw i32 %92, %90
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %6, align 1
  %95 = load i32, i32* %4, align 4
  %96 = load i8, i8* %7, align 1
  %97 = sext i8 %96 to i32
  %98 = add nsw i32 %97, %95
  %99 = trunc i32 %98 to i8
  store i8 %99, i8* %7, align 1
  %100 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %101 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @TV_HIVISION, align 4
  %104 = load i32, i32* @TV_YPBPR, align 4
  %105 = or i32 %103, %104
  %106 = and i32 %102, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %129, label %108

108:                                              ; preds = %81
  br label %109

109:                                              ; preds = %119, %108
  %110 = load i8, i8* %6, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp sle i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load i8, i8* %7, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp sle i32 %115, 0
  br label %117

117:                                              ; preds = %113, %109
  %118 = phi i1 [ true, %109 ], [ %116, %113 ]
  br i1 %118, label %119, label %128

119:                                              ; preds = %117
  %120 = load i8, i8* %6, align 1
  %121 = sext i8 %120 to i32
  %122 = add nsw i32 %121, 2
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %6, align 1
  %124 = load i8, i8* %7, align 1
  %125 = sext i8 %124 to i32
  %126 = add nsw i32 %125, 2
  %127 = trunc i32 %126 to i8
  store i8 %127, i8* %7, align 1
  br label %109

128:                                              ; preds = %117
  br label %129

129:                                              ; preds = %128, %81
  %130 = load i32, i32* @SISPART2, align 4
  %131 = load i8, i8* %6, align 1
  %132 = call i32 @SiS_SetReg(i32 %130, i32 1, i8 signext %131)
  %133 = load i32, i32* @SISPART2, align 4
  %134 = load i8, i8* %7, align 1
  %135 = call i32 @SiS_SetReg(i32 %133, i32 2, i8 signext %134)
  br label %136

136:                                              ; preds = %129, %74
  br label %137

137:                                              ; preds = %136, %73
  br label %138

138:                                              ; preds = %23, %29, %137, %30
  ret void
}

declare dso_local i32 @SiS_SetReg(i32, i32, i8 signext) #1

declare dso_local i32 @SiS_SetCH700x(i32*, i32, i32) #1

declare dso_local i32 @SiS_SetCH70xxANDOR(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
