; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_SetYPbPr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_SetYPbPr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i64, i32, i32, i8*, i32 }

@SIS_661 = common dso_local global i64 0, align 8
@SetCRT2ToHiVision = common dso_local global i32 0, align 4
@YPbPrHiVision = common dso_local global i8* null, align 8
@SIS_315H = common dso_local global i64 0, align 8
@VB_SISYPBPR = common dso_local global i32 0, align 4
@YPbPr525i = common dso_local global i8* null, align 8
@YPbPr525p = common dso_local global i8* null, align 8
@YPbPr750p = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiS_SetYPbPr(%struct.SiS_Private* %0) #0 {
  %2 = alloca %struct.SiS_Private*, align 8
  %3 = alloca i8, align 1
  store %struct.SiS_Private* %0, %struct.SiS_Private** %2, align 8
  %4 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %5 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %4, i32 0, i32 3
  store i8* null, i8** %5, align 8
  %6 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %7 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SIS_661, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %74

12:                                               ; preds = %1
  %13 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %14 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %19 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SetCRT2ToHiVision, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i8*, i8** @YPbPrHiVision, align 8
  %26 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %27 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  br label %28

28:                                               ; preds = %24, %17
  br label %29

29:                                               ; preds = %28, %12
  %30 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %31 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SIS_315H, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %74

35:                                               ; preds = %29
  %36 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %37 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @VB_SISYPBPR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %73

42:                                               ; preds = %35
  %43 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %44 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call zeroext i8 @SiS_GetReg(i32 %45, i32 56)
  store i8 %46, i8* %3, align 1
  %47 = load i8, i8* %3, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %48, 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %42
  %52 = load i8, i8* %3, align 1
  %53 = zext i8 %52 to i32
  %54 = ashr i32 %53, 4
  switch i32 %54, label %71 [
    i32 0, label %55
    i32 1, label %59
    i32 2, label %63
    i32 3, label %67
  ]

55:                                               ; preds = %51
  %56 = load i8*, i8** @YPbPr525i, align 8
  %57 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %58 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  br label %71

59:                                               ; preds = %51
  %60 = load i8*, i8** @YPbPr525p, align 8
  %61 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %62 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  br label %71

63:                                               ; preds = %51
  %64 = load i8*, i8** @YPbPr750p, align 8
  %65 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %66 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  br label %71

67:                                               ; preds = %51
  %68 = load i8*, i8** @YPbPrHiVision, align 8
  %69 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %70 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %51, %67, %63, %59, %55
  br label %72

72:                                               ; preds = %71, %42
  br label %73

73:                                               ; preds = %72, %35
  br label %74

74:                                               ; preds = %11, %73, %29
  ret void
}

declare dso_local zeroext i8 @SiS_GetReg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
