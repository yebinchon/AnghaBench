; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_DisableBridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_DisableBridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32 }

@VB_SISVB = common dso_local global i32 0, align 4
@VB_SIS30xBLV = common dso_local global i32 0, align 4
@SIS_315H = common dso_local global i64 0, align 8
@CUT_CLEVO1400 = common dso_local global i64 0, align 8
@CUT_COMPAQ1280 = common dso_local global i64 0, align 8
@IS_SIS740 = common dso_local global i64 0, align 8
@SIS_550 = common dso_local global i64 0, align 8
@SIS_730 = common dso_local global i64 0, align 8
@SIS_740 = common dso_local global i64 0, align 8
@VB_SISEMI = common dso_local global i32 0, align 4
@VB_SISLVDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiS_DisableBridge(%struct.SiS_Private* %0) #0 {
  %2 = alloca %struct.SiS_Private*, align 8
  %3 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %2, align 8
  store i16 0, i16* %3, align 2
  %4 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %5 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @VB_SISVB, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %82

10:                                               ; preds = %1
  %11 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %12 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @VB_SIS30xBLV, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %10
  %18 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %19 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SIS_315H, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %25

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %23
  br label %81

26:                                               ; preds = %10
  %27 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %28 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SIS_315H, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %26
  %34 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %35 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @SiS_SetRegAND(i32 %36, i32 0, i32 223)
  %38 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %39 = call i32 @SiS_DisplayOff(%struct.SiS_Private* %38)
  %40 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %41 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SIS_315H, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %33
  %46 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %47 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @SiS_SetRegOR(i32 %48, i32 0, i32 128)
  br label %50

50:                                               ; preds = %45, %33
  %51 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %52 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @SiS_SetRegAND(i32 %53, i32 50, i32 223)
  %55 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %56 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SIS_315H, align 8
  %59 = icmp sge i64 %57, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %50
  %61 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %62 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @SiS_GetReg(i32 %63, i32 0)
  %65 = trunc i32 %64 to i16
  store i16 %65, i16* %3, align 2
  %66 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %67 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @SiS_SetRegOR(i32 %68, i32 0, i32 16)
  %70 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %71 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @SiS_SetRegOR(i32 %72, i32 30, i32 32)
  %74 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %75 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load i16, i16* %3, align 2
  %78 = call i32 @SiS_SetReg(i32 %76, i32 0, i16 zeroext %77)
  br label %80

79:                                               ; preds = %50
  br label %80

80:                                               ; preds = %79, %60
  br label %81

81:                                               ; preds = %80, %25
  br label %91

82:                                               ; preds = %1
  %83 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %84 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @SIS_315H, align 8
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %90

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %88
  br label %91

91:                                               ; preds = %90, %81
  ret void
}

declare dso_local i32 @SiS_SetRegAND(i32, i32, i32) #1

declare dso_local i32 @SiS_DisplayOff(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_SetRegOR(i32, i32, i32) #1

declare dso_local i32 @SiS_GetReg(i32, i32) #1

declare dso_local i32 @SiS_SetReg(i32, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
