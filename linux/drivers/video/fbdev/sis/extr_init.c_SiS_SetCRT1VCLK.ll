; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_SetCRT1VCLK.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_SetCRT1VCLK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i16, i16, i32, i32, i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i64, i64 }
%struct.TYPE_4__ = type { i16, i16 }
%struct.TYPE_3__ = type { i16, i16 }

@VB_SIS30xBLV = common dso_local global i32 0, align 4
@SetCRT2ToLCDA = common dso_local global i32 0, align 4
@SIS_315H = common dso_local global i64 0, align 8
@HalfDCLK = common dso_local global i16 0, align 2
@XGI_20 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16, i16, i16)* @SiS_SetCRT1VCLK to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetCRT1VCLK(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.SiS_Private*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  store i16 0, i16* %9, align 2
  %12 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %13 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %12, i32 0, i32 9
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %18 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %17, i32 0, i32 0
  %19 = load i16, i16* %18, align 8
  store i16 %19, i16* %10, align 2
  %20 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %21 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %20, i32 0, i32 1
  %22 = load i16, i16* %21, align 2
  store i16 %22, i16* %11, align 2
  br label %87

23:                                               ; preds = %4
  %24 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %25 = load i16, i16* %6, align 2
  %26 = load i16, i16* %7, align 2
  %27 = load i16, i16* %8, align 2
  %28 = call zeroext i16 @SiS_GetVCLK2Ptr(%struct.SiS_Private* %24, i16 zeroext %25, i16 zeroext %26, i16 zeroext %27)
  store i16 %28, i16* %9, align 2
  %29 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %30 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @VB_SIS30xBLV, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %69

35:                                               ; preds = %23
  %36 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %37 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SetCRT2ToLCDA, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %35
  %43 = load i16, i16* %9, align 2
  %44 = zext i16 %43 to i32
  %45 = icmp eq i32 %44, 33
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %48 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %47, i32 0, i32 8
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i16 114, i16* %9, align 2
  br label %52

52:                                               ; preds = %51, %46, %42
  %53 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %54 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %53, i32 0, i32 7
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i16, i16* %9, align 2
  %57 = zext i16 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i16, i16* %59, align 2
  store i16 %60, i16* %10, align 2
  %61 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %62 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %61, i32 0, i32 7
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i16, i16* %9, align 2
  %65 = zext i16 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i16, i16* %67, align 2
  store i16 %68, i16* %11, align 2
  br label %86

69:                                               ; preds = %35, %23
  %70 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %71 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %70, i32 0, i32 6
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i16, i16* %9, align 2
  %74 = zext i16 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i16, i16* %76, align 2
  store i16 %77, i16* %10, align 2
  %78 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %79 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %78, i32 0, i32 6
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i16, i16* %9, align 2
  %82 = zext i16 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i16, i16* %84, align 2
  store i16 %85, i16* %11, align 2
  br label %86

86:                                               ; preds = %69, %52
  br label %87

87:                                               ; preds = %86, %16
  %88 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %89 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @SiS_SetRegAND(i32 %90, i32 49, i32 207)
  %92 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %93 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = load i16, i16* %10, align 2
  %96 = zext i16 %95 to i32
  %97 = call i32 @SiS_SetReg(i32 %94, i32 43, i32 %96)
  %98 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %99 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = load i16, i16* %11, align 2
  %102 = zext i16 %101 to i32
  %103 = call i32 @SiS_SetReg(i32 %100, i32 44, i32 %102)
  %104 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %105 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SIS_315H, align 8
  %108 = icmp sge i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %87
  br label %115

110:                                              ; preds = %87
  %111 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %112 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @SiS_SetReg(i32 %113, i32 45, i32 128)
  br label %115

115:                                              ; preds = %110, %109
  ret void
}

declare dso_local zeroext i16 @SiS_GetVCLK2Ptr(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_SetRegAND(i32, i32, i32) #1

declare dso_local i32 @SiS_SetReg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
