; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sisfb_sense_crt1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sisfb_sense_crt1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_video_info = type { i64, i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SISSR = common dso_local global i32 0, align 4
@SISCR = common dso_local global i32 0, align 4
@SIS_315_VGA = common dso_local global i64 0, align 8
@SIS_330 = common dso_local global i64 0, align 8
@SIS_340 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sis_video_info*)* @sisfb_sense_crt1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sisfb_sense_crt1(%struct.sis_video_info* %0) #0 {
  %2 = alloca %struct.sis_video_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sis_video_info* %0, %struct.sis_video_info** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 65535, i32* %6, align 4
  %8 = load i32, i32* @SISSR, align 4
  %9 = call i32 @SiS_GetReg(i32 %8, i32 31)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @SISSR, align 4
  %11 = call i32 @SiS_SetRegOR(i32 %10, i32 31, i32 4)
  %12 = load i32, i32* @SISSR, align 4
  %13 = call i32 @SiS_SetRegAND(i32 %12, i32 31, i32 63)
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 192
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %18

18:                                               ; preds = %17, %1
  %19 = load i32, i32* @SISCR, align 4
  %20 = call i32 @SiS_GetReg(i32 %19, i32 23)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 128
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @SISCR, align 4
  %27 = call i32 @SiS_SetRegOR(i32 %26, i32 23, i32 128)
  store i32 1, i32* %3, align 4
  %28 = load i32, i32* @SISSR, align 4
  %29 = call i32 @SiS_SetReg(i32 %28, i32 0, i32 1)
  %30 = load i32, i32* @SISSR, align 4
  %31 = call i32 @SiS_SetReg(i32 %30, i32 0, i32 3)
  br label %32

32:                                               ; preds = %25, %18
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %42, %35
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 10
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %41 = call i32 @sisfbwaitretracecrt1(%struct.sis_video_info* %40)
  br label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %36

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %32
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 65535
  br i1 %48, label %49, label %88

49:                                               ; preds = %46
  store i32 3, i32* %7, align 4
  br label %50

50:                                               ; preds = %73, %49
  %51 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %52 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %51, i32 0, i32 2
  %53 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %54 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %57 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %60 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @SiS_HandleDDC(%struct.TYPE_2__* %52, i32 %55, i64 %58, i32 0, i32 0, i32* null, i32 %61)
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %50
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, 65535
  br i1 %68, label %69, label %73

69:                                               ; preds = %66, %63
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %7, align 4
  %72 = icmp ne i32 %70, 0
  br label %73

73:                                               ; preds = %69, %66
  %74 = phi i1 [ false, %66 ], [ %72, %69 ]
  br i1 %74, label %50, label %75

75:                                               ; preds = %73
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %6, align 4
  %80 = icmp eq i32 %79, 65535
  br i1 %80, label %81, label %87

81:                                               ; preds = %78, %75
  %82 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %83 = call i64 @sisfb_test_DDC1(%struct.sis_video_info* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 1, i32* %6, align 4
  br label %86

86:                                               ; preds = %85, %81
  br label %87

87:                                               ; preds = %86, %78
  br label %88

88:                                               ; preds = %87, %46
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 65535
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* @SISCR, align 4
  %96 = call i32 @SiS_SetRegOR(i32 %95, i32 50, i32 32)
  br label %97

97:                                               ; preds = %94, %91, %88
  %98 = load i32, i32* @SISCR, align 4
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @SiS_SetRegANDOR(i32 %98, i32 23, i32 127, i32 %99)
  %101 = load i32, i32* @SISSR, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @SiS_SetReg(i32 %101, i32 31, i32 %102)
  ret void
}

declare dso_local i32 @SiS_GetReg(i32, i32) #1

declare dso_local i32 @SiS_SetRegOR(i32, i32, i32) #1

declare dso_local i32 @SiS_SetRegAND(i32, i32, i32) #1

declare dso_local i32 @SiS_SetReg(i32, i32, i32) #1

declare dso_local i32 @sisfbwaitretracecrt1(%struct.sis_video_info*) #1

declare dso_local i32 @SiS_HandleDDC(%struct.TYPE_2__*, i32, i64, i32, i32, i32*, i32) #1

declare dso_local i64 @sisfb_test_DDC1(%struct.sis_video_info*) #1

declare dso_local i32 @SiS_SetRegANDOR(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
