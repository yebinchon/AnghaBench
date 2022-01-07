; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_DoLowModeTest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_DoLowModeTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i64, i32 }

@SIS_315H = common dso_local global i64 0, align 8
@SIS_300 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SiS_Private*, i16)* @SiS_DoLowModeTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SiS_DoLowModeTest(%struct.SiS_Private* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.SiS_Private*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %4, align 8
  store i16 %1, i16* %5, align 2
  %9 = load i16, i16* %5, align 2
  %10 = zext i16 %9 to i32
  %11 = icmp ne i32 %10, 3
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load i16, i16* %5, align 2
  %14 = zext i16 %13 to i32
  %15 = icmp ne i32 %14, 16
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i16, i16* %5, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp ne i32 %18, 18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %79

21:                                               ; preds = %16, %12, %2
  %22 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %23 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call zeroext i16 @SiS_GetReg(i32 %24, i32 17)
  store i16 %25, i16* %6, align 2
  %26 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %27 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @SiS_SetRegOR(i32 %28, i32 17, i32 128)
  %30 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %31 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call zeroext i16 @SiS_GetReg(i32 %32, i32 0)
  store i16 %33, i16* %7, align 2
  %34 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %35 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @SiS_SetReg(i32 %36, i32 0, i16 zeroext 85)
  %38 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %39 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call zeroext i16 @SiS_GetReg(i32 %40, i32 0)
  store i16 %41, i16* %8, align 2
  %42 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %43 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i16, i16* %7, align 2
  %46 = call i32 @SiS_SetReg(i32 %44, i32 0, i16 zeroext %45)
  %47 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %48 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i16, i16* %6, align 2
  %51 = call i32 @SiS_SetReg(i32 %49, i32 17, i16 zeroext %50)
  %52 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %53 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SIS_315H, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %21
  %58 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %59 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SIS_300, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %57, %21
  %64 = load i16, i16* %8, align 2
  %65 = zext i16 %64 to i32
  %66 = icmp eq i32 %65, 85
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %79

68:                                               ; preds = %63
  store i32 1, i32* %3, align 4
  br label %79

69:                                               ; preds = %57
  %70 = load i16, i16* %8, align 2
  %71 = zext i16 %70 to i32
  %72 = icmp ne i32 %71, 85
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 1, i32* %3, align 4
  br label %79

74:                                               ; preds = %69
  %75 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %76 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @SiS_SetRegOR(i32 %77, i32 53, i32 1)
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %74, %73, %68, %67, %20
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local zeroext i16 @SiS_GetReg(i32, i32) #1

declare dso_local i32 @SiS_SetRegOR(i32, i32, i32) #1

declare dso_local i32 @SiS_SetReg(i32, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
