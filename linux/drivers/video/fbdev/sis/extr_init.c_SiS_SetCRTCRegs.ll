; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_SetCRTCRegs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_SetCRTCRegs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@SIS_661 = common dso_local global i64 0, align 8
@SIS_630 = common dso_local global i64 0, align 8
@SIS_730 = common dso_local global i64 0, align 8
@SetInSlaveMode = common dso_local global i32 0, align 4
@SetCRT2ToLCD = common dso_local global i32 0, align 4
@SetCRT2ToTV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16)* @SiS_SetCRTCRegs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetCRTCRegs(%struct.SiS_Private* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.SiS_Private*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %3, align 8
  store i16 %1, i16* %4, align 2
  %7 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %8 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @SiS_SetRegAND(i32 %9, i32 17, i32 127)
  store i16 0, i16* %6, align 2
  br label %11

11:                                               ; preds = %36, %2
  %12 = load i16, i16* %6, align 2
  %13 = zext i16 %12 to i32
  %14 = icmp sle i32 %13, 24
  br i1 %14, label %15, label %39

15:                                               ; preds = %11
  %16 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %17 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %16, i32 0, i32 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i16, i16* %4, align 2
  %20 = zext i16 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i16, i16* %6, align 2
  %25 = zext i16 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %5, align 1
  %28 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %29 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load i16, i16* %6, align 2
  %32 = zext i16 %31 to i32
  %33 = load i8, i8* %5, align 1
  %34 = zext i8 %33 to i32
  %35 = call i32 @SiS_SetReg(i32 %30, i32 %32, i32 %34)
  br label %36

36:                                               ; preds = %15
  %37 = load i16, i16* %6, align 2
  %38 = add i16 %37, 1
  store i16 %38, i16* %6, align 2
  br label %11

39:                                               ; preds = %11
  %40 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %41 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SIS_661, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %77

45:                                               ; preds = %39
  %46 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %47 = call i32 @SiS_OpenCRTC(%struct.SiS_Private* %46)
  store i16 19, i16* %6, align 2
  br label %48

48:                                               ; preds = %73, %45
  %49 = load i16, i16* %6, align 2
  %50 = zext i16 %49 to i32
  %51 = icmp sle i32 %50, 20
  br i1 %51, label %52, label %76

52:                                               ; preds = %48
  %53 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %54 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %53, i32 0, i32 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i16, i16* %4, align 2
  %57 = zext i16 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i16, i16* %6, align 2
  %62 = zext i16 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  store i8 %64, i8* %5, align 1
  %65 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %66 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load i16, i16* %6, align 2
  %69 = zext i16 %68 to i32
  %70 = load i8, i8* %5, align 1
  %71 = zext i8 %70 to i32
  %72 = call i32 @SiS_SetReg(i32 %67, i32 %69, i32 %71)
  br label %73

73:                                               ; preds = %52
  %74 = load i16, i16* %6, align 2
  %75 = add i16 %74, 1
  store i16 %75, i16* %6, align 2
  br label %48

76:                                               ; preds = %48
  br label %118

77:                                               ; preds = %39
  %78 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %79 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @SIS_630, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %85 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SIS_730, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %117

89:                                               ; preds = %83, %77
  %90 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %91 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp sge i32 %92, 48
  br i1 %93, label %94, label %117

94:                                               ; preds = %89
  %95 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %96 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @SetInSlaveMode, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %94
  %102 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %103 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @SetCRT2ToLCD, align 4
  %106 = load i32, i32* @SetCRT2ToTV, align 4
  %107 = or i32 %105, %106
  %108 = and i32 %104, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %101
  %111 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %112 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @SiS_SetReg(i32 %113, i32 24, i32 254)
  br label %115

115:                                              ; preds = %110, %101
  br label %116

116:                                              ; preds = %115, %94
  br label %117

117:                                              ; preds = %116, %89, %83
  br label %118

118:                                              ; preds = %117, %76
  ret void
}

declare dso_local i32 @SiS_SetRegAND(i32, i32, i32) #1

declare dso_local i32 @SiS_SetReg(i32, i32, i32) #1

declare dso_local i32 @SiS_OpenCRTC(%struct.SiS_Private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
