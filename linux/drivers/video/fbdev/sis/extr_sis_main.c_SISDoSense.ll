; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_SISDoSense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_SISDoSense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_video_info = type { i32 }

@SISPART4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sis_video_info*, i32, i32)* @SISDoSense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SISDoSense(%struct.sis_video_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sis_video_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sis_video_info* %0, %struct.sis_video_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %72, %3
  %13 = load i32, i32* %11, align 4
  %14 = icmp slt i32 %13, 10
  br i1 %14, label %15, label %75

15:                                               ; preds = %12
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %61, %15
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %64

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @SISPART4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 255
  %24 = call i32 @SiS_SetReg(i32 %21, i32 17, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = ashr i32 %25, 8
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, 255
  %29 = or i32 %26, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @SISPART4, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @SiS_SetRegANDOR(i32 %30, i32 16, i32 224, i32 %31)
  %33 = load %struct.sis_video_info*, %struct.sis_video_info** %4, align 8
  %34 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %33, i32 0, i32 0
  %35 = call i32 @SiS_DDC2Delay(i32* %34, i32 5376)
  %36 = load i32, i32* %8, align 4
  %37 = ashr i32 %36, 8
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, 127
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* @SISPART4, align 4
  %41 = call i32 @SiS_GetReg(i32 %40, i32 3)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = xor i32 %42, 14
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %19
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %50, %19
  %54 = load i32, i32* @SISPART4, align 4
  %55 = call i32 @SiS_SetReg(i32 %54, i32 17, i32 0)
  %56 = load i32, i32* @SISPART4, align 4
  %57 = call i32 @SiS_SetRegAND(i32 %56, i32 16, i32 224)
  %58 = load %struct.sis_video_info*, %struct.sis_video_info** %4, align 8
  %59 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %58, i32 0, i32 0
  %60 = call i32 @SiS_DDC2Delay(i32* %59, i32 4096)
  br label %61

61:                                               ; preds = %53
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %16

64:                                               ; preds = %16
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %9, align 4
  %69 = icmp sge i32 %68, 2
  br i1 %69, label %70, label %71

70:                                               ; preds = %67, %64
  br label %75

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %12

75:                                               ; preds = %70, %12
  %76 = load i32, i32* %9, align 4
  ret i32 %76
}

declare dso_local i32 @SiS_SetReg(i32, i32, i32) #1

declare dso_local i32 @SiS_SetRegANDOR(i32, i32, i32, i32) #1

declare dso_local i32 @SiS_DDC2Delay(i32*, i32) #1

declare dso_local i32 @SiS_GetReg(i32, i32) #1

declare dso_local i32 @SiS_SetRegAND(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
