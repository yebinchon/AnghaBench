; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_SetCRT2VCLK.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_SetCRT2VCLK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i16, i16, i32, i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i16, i16 }

@VB_SIS30xBLV = common dso_local global i32 0, align 4
@TVSetNTSC1024 = common dso_local global i32 0, align 4
@TVSet525p1024 = common dso_local global i32 0, align 4
@SetCRT2ToRAMDAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16, i16, i16)* @SiS_SetCRT2VCLK to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetCRT2VCLK(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.SiS_Private*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  %13 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %14 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %13, i32 0, i32 7
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %4
  %18 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %19 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %18, i32 0, i32 0
  %20 = load i16, i16* %19, align 8
  store i16 %20, i16* %11, align 2
  %21 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %22 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %21, i32 0, i32 1
  %23 = load i16, i16* %22, align 2
  store i16 %23, i16* %12, align 2
  br label %46

24:                                               ; preds = %4
  %25 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %26 = load i16, i16* %6, align 2
  %27 = load i16, i16* %7, align 2
  %28 = load i16, i16* %8, align 2
  %29 = call zeroext i16 @SiS_GetVCLK2Ptr(%struct.SiS_Private* %25, i16 zeroext %26, i16 zeroext %27, i16 zeroext %28)
  store i16 %29, i16* %9, align 2
  %30 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %31 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %30, i32 0, i32 6
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i16, i16* %9, align 2
  %34 = zext i16 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i16, i16* %36, align 2
  store i16 %37, i16* %11, align 2
  %38 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %39 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %38, i32 0, i32 6
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i16, i16* %9, align 2
  %42 = zext i16 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i16, i16* %44, align 2
  store i16 %45, i16* %12, align 2
  br label %46

46:                                               ; preds = %24, %17
  %47 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %48 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @VB_SIS30xBLV, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %89

53:                                               ; preds = %46
  %54 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %55 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @TVSetNTSC1024, align 4
  %58 = load i32, i32* @TVSet525p1024, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %53
  %63 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %64 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @SiS_SetReg(i32 %65, i32 10, i32 87)
  %67 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %68 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @SiS_SetReg(i32 %69, i32 11, i32 70)
  %71 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %72 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @SiS_SetReg(i32 %73, i32 31, i32 246)
  br label %88

75:                                               ; preds = %53
  %76 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %77 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = load i16, i16* %11, align 2
  %80 = zext i16 %79 to i32
  %81 = call i32 @SiS_SetReg(i32 %78, i32 10, i32 %80)
  %82 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %83 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = load i16, i16* %12, align 2
  %86 = zext i16 %85 to i32
  %87 = call i32 @SiS_SetReg(i32 %84, i32 11, i32 %86)
  br label %88

88:                                               ; preds = %75, %62
  br label %106

89:                                               ; preds = %46
  %90 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %91 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @SiS_SetReg(i32 %92, i32 10, i32 1)
  %94 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %95 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = load i16, i16* %12, align 2
  %98 = zext i16 %97 to i32
  %99 = call i32 @SiS_SetReg(i32 %96, i32 11, i32 %98)
  %100 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %101 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = load i16, i16* %11, align 2
  %104 = zext i16 %103 to i32
  %105 = call i32 @SiS_SetReg(i32 %102, i32 10, i32 %104)
  br label %106

106:                                              ; preds = %89, %88
  %107 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %108 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @SiS_SetReg(i32 %109, i32 18, i32 0)
  store i16 8, i16* %10, align 2
  %111 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %112 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @SetCRT2ToRAMDAC, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %106
  %118 = load i16, i16* %10, align 2
  %119 = zext i16 %118 to i32
  %120 = or i32 %119, 32
  %121 = trunc i32 %120 to i16
  store i16 %121, i16* %10, align 2
  br label %122

122:                                              ; preds = %117, %106
  %123 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %124 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = load i16, i16* %10, align 2
  %127 = call i32 @SiS_SetRegOR(i32 %125, i32 18, i16 zeroext %126)
  ret void
}

declare dso_local zeroext i16 @SiS_GetVCLK2Ptr(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_SetReg(i32, i32, i32) #1

declare dso_local i32 @SiS_SetRegOR(i32, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
