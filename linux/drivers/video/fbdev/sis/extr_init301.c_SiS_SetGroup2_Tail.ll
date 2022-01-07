; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_SetGroup2_Tail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_SetGroup2_Tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32, i64, i32, i32, i64, i32, i32, i32, i32, i32 }

@LCDVESATiming = common dso_local global i32 0, align 4
@ModeVGA = common dso_local global i64 0, align 8
@VB_SIS30xBLV = common dso_local global i32 0, align 4
@SetCRT2ToLCD = common dso_local global i32 0, align 4
@Panel_1400x1050 = common dso_local global i64 0, align 8
@VB_SIS30xB = common dso_local global i32 0, align 4
@SetSimuScanMode = common dso_local global i32 0, align 4
@SiS_Part2Port = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16)* @SiS_SetGroup2_Tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetGroup2_Tail(%struct.SiS_Private* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.SiS_Private*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %3, align 8
  store i16 %1, i16* %4, align 2
  %6 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %7 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @LCDVESATiming, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %82, label %12

12:                                               ; preds = %2
  %13 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %14 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 525
  br i1 %16, label %17, label %49

17:                                               ; preds = %12
  store i16 195, i16* %5, align 2
  %18 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %19 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ModeVGA, align 8
  %22 = icmp sle i64 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %17
  %24 = load i16, i16* %5, align 2
  %25 = add i16 %24, 1
  store i16 %25, i16* %5, align 2
  %26 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %27 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @VB_SIS30xBLV, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load i16, i16* %5, align 2
  %34 = zext i16 %33 to i32
  %35 = add nsw i32 %34, 2
  %36 = trunc i32 %35 to i16
  store i16 %36, i16* %5, align 2
  br label %37

37:                                               ; preds = %32, %23
  br label %38

38:                                               ; preds = %37, %17
  %39 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %40 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %39, i32 0, i32 10
  %41 = load i32, i32* %40, align 8
  %42 = load i16, i16* %5, align 2
  %43 = zext i16 %42 to i32
  %44 = call i32 @SiS_SetReg(i32 %41, i32 47, i32 %43)
  %45 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %46 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %45, i32 0, i32 10
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @SiS_SetReg(i32 %47, i32 48, i32 179)
  br label %81

49:                                               ; preds = %12
  %50 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %51 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 420
  br i1 %53, label %54, label %80

54:                                               ; preds = %49
  store i16 77, i16* %5, align 2
  %55 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %56 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ModeVGA, align 8
  %59 = icmp sle i64 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %54
  %61 = load i16, i16* %5, align 2
  %62 = add i16 %61, 1
  store i16 %62, i16* %5, align 2
  %63 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %64 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @VB_SIS30xBLV, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load i16, i16* %5, align 2
  %71 = add i16 %70, 1
  store i16 %71, i16* %5, align 2
  br label %72

72:                                               ; preds = %69, %60
  br label %73

73:                                               ; preds = %72, %54
  %74 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %75 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %74, i32 0, i32 10
  %76 = load i32, i32* %75, align 8
  %77 = load i16, i16* %5, align 2
  %78 = zext i16 %77 to i32
  %79 = call i32 @SiS_SetReg(i32 %76, i32 47, i32 %78)
  br label %80

80:                                               ; preds = %73, %49
  br label %81

81:                                               ; preds = %80, %38
  br label %82

82:                                               ; preds = %81, %2
  %83 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %84 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @SetCRT2ToLCD, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %120

89:                                               ; preds = %82
  %90 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %91 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @Panel_1400x1050, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %119

95:                                               ; preds = %89
  %96 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %97 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @VB_SIS30xB, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %104 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %103, i32 0, i32 10
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @SiS_SetRegOR(i32 %105, i32 26, i32 3)
  br label %107

107:                                              ; preds = %102, %95
  store i16 1, i16* %5, align 2
  %108 = load i16, i16* %4, align 2
  %109 = zext i16 %108 to i32
  %110 = icmp sle i32 %109, 19
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  store i16 3, i16* %5, align 2
  br label %112

112:                                              ; preds = %111, %107
  %113 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %114 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %113, i32 0, i32 10
  %115 = load i32, i32* %114, align 8
  %116 = load i16, i16* %5, align 2
  %117 = zext i16 %116 to i32
  %118 = call i32 @SiS_SetReg(i32 %115, i32 11, i32 %117)
  br label %119

119:                                              ; preds = %112, %89
  br label %120

120:                                              ; preds = %119, %82
  ret void
}

declare dso_local i32 @SiS_SetReg(i32, i32, i32) #1

declare dso_local i32 @SiS_SetRegOR(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
