; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sisfb_set_TVxposoffset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sisfb_set_TVxposoffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_video_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@CRT2_TV = common dso_local global i32 0, align 4
@VB2_CHRONTEL = common dso_local global i32 0, align 4
@SISSR = common dso_local global i32 0, align 4
@VB2_SISBRIDGE = common dso_local global i32 0, align 4
@SISPART2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sis_video_info*, i32)* @sisfb_set_TVxposoffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sisfb_set_TVxposoffset(%struct.sis_video_info* %0, i32 %1) #0 {
  %3 = alloca %struct.sis_video_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  store %struct.sis_video_info* %0, %struct.sis_video_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 32
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 32, i32* %4, align 4
  br label %15

15:                                               ; preds = %14, %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, -32
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 -32, i32* %4, align 4
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %22 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %24 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %23, i32 0, i32 12
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %162

28:                                               ; preds = %19
  %29 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %30 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %29, i32 0, i32 11
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %162

34:                                               ; preds = %28
  %35 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %36 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CRT2_TV, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %162

41:                                               ; preds = %34
  %42 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %43 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @VB2_CHRONTEL, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %78

48:                                               ; preds = %41
  %49 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %50 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %5, align 4
  %52 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %53 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %77 [
    i32 1, label %55
    i32 2, label %76
  ]

55:                                               ; preds = %48
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %55
  %63 = load i32, i32* @SISSR, align 4
  %64 = call i32 @SiS_SetReg(i32 %63, i32 5, i32 134)
  %65 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %66 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %65, i32 0, i32 10
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, 255
  %69 = call i32 @SiS_SetCH700x(i32* %66, i32 10, i32 %68)
  %70 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %71 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %70, i32 0, i32 10
  %72 = load i32, i32* %5, align 4
  %73 = and i32 %72, 256
  %74 = ashr i32 %73, 7
  %75 = call i32 @SiS_SetCH70xxANDOR(i32* %71, i32 8, i32 %74, i32 253)
  br label %77

76:                                               ; preds = %48
  br label %77

77:                                               ; preds = %48, %76, %62
  br label %161

78:                                               ; preds = %41
  %79 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %80 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @VB2_SISBRIDGE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %160

85:                                               ; preds = %78
  %86 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %87 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %6, align 4
  %89 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %90 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %7, align 4
  %92 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %93 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %8, align 4
  %95 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %96 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %9, align 4
  %98 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %99 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %98, i32 0, i32 9
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = and i32 %102, 240
  %104 = shl i32 %103, 4
  %105 = or i32 %101, %104
  %106 = trunc i32 %105 to i16
  store i16 %106, i16* %11, align 2
  %107 = load i32, i32* %4, align 4
  %108 = mul nsw i32 %107, 2
  %109 = load i16, i16* %11, align 2
  %110 = zext i16 %109 to i32
  %111 = add nsw i32 %110, %108
  %112 = trunc i32 %111 to i16
  store i16 %112, i16* %11, align 2
  %113 = load i16, i16* %11, align 2
  %114 = zext i16 %113 to i32
  %115 = and i32 %114, 255
  store i32 %115, i32* %6, align 4
  %116 = load i16, i16* %11, align 2
  %117 = zext i16 %116 to i32
  %118 = and i32 %117, 3840
  %119 = ashr i32 %118, 4
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %8, align 4
  %121 = and i32 %120, 15
  %122 = load i32, i32* %4, align 4
  %123 = mul nsw i32 %122, 2
  %124 = add nsw i32 %121, %123
  %125 = and i32 %124, 15
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %9, align 4
  %128 = and i32 %127, 240
  %129 = shl i32 %128, 4
  %130 = or i32 %126, %129
  %131 = trunc i32 %130 to i16
  store i16 %131, i16* %11, align 2
  %132 = load i32, i32* %4, align 4
  %133 = mul nsw i32 %132, 2
  %134 = load i16, i16* %11, align 2
  %135 = zext i16 %134 to i32
  %136 = add nsw i32 %135, %133
  %137 = trunc i32 %136 to i16
  store i16 %137, i16* %11, align 2
  %138 = load i16, i16* %11, align 2
  %139 = zext i16 %138 to i32
  %140 = and i32 %139, 255
  store i32 %140, i32* %10, align 4
  %141 = load i16, i16* %11, align 2
  %142 = zext i16 %141 to i32
  %143 = and i32 %142, 3840
  %144 = ashr i32 %143, 4
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* @SISPART2, align 4
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @SiS_SetReg(i32 %145, i32 31, i32 %146)
  %148 = load i32, i32* @SISPART2, align 4
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @SiS_SetRegANDOR(i32 %148, i32 32, i32 15, i32 %149)
  %151 = load i32, i32* @SISPART2, align 4
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @SiS_SetRegANDOR(i32 %151, i32 43, i32 240, i32 %152)
  %154 = load i32, i32* @SISPART2, align 4
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @SiS_SetRegANDOR(i32 %154, i32 66, i32 15, i32 %155)
  %157 = load i32, i32* @SISPART2, align 4
  %158 = load i32, i32* %10, align 4
  %159 = call i32 @SiS_SetReg(i32 %157, i32 67, i32 %158)
  br label %160

160:                                              ; preds = %85, %78
  br label %161

161:                                              ; preds = %160, %77
  br label %162

162:                                              ; preds = %27, %33, %161, %34
  ret void
}

declare dso_local i32 @SiS_SetReg(i32, i32, i32) #1

declare dso_local i32 @SiS_SetCH700x(i32*, i32, i32) #1

declare dso_local i32 @SiS_SetCH70xxANDOR(i32*, i32, i32, i32) #1

declare dso_local i32 @SiS_SetRegANDOR(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
