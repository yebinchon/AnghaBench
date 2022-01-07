; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_SetVCLKState.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_SetVCLKState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i16, i64, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i16 }

@SIS_315H = common dso_local global i64 0, align 8
@XGI_20 = common dso_local global i64 0, align 8
@SIS_661 = common dso_local global i64 0, align 8
@SIS_540 = common dso_local global i64 0, align 8
@SIS_315PRO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16, i16, i16)* @SiS_SetVCLKState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetVCLKState(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
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
  store i16 0, i16* %10, align 2
  store i16 0, i16* %11, align 2
  %12 = load i16, i16* %6, align 2
  %13 = zext i16 %12 to i32
  %14 = icmp sgt i32 %13, 19
  br i1 %14, label %15, label %39

15:                                               ; preds = %4
  %16 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %17 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %22 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %21, i32 0, i32 0
  %23 = load i16, i16* %22, align 8
  store i16 %23, i16* %10, align 2
  br label %38

24:                                               ; preds = %15
  %25 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %26 = load i16, i16* %6, align 2
  %27 = load i16, i16* %8, align 2
  %28 = load i16, i16* %7, align 2
  %29 = call zeroext i16 @SiS_GetVCLK2Ptr(%struct.SiS_Private* %25, i16 zeroext %26, i16 zeroext %27, i16 zeroext %28)
  store i16 %29, i16* %11, align 2
  %30 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %31 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i16, i16* %11, align 2
  %34 = zext i16 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i16, i16* %36, align 2
  store i16 %37, i16* %10, align 2
  br label %38

38:                                               ; preds = %24, %20
  br label %39

39:                                               ; preds = %38, %4
  %40 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %41 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SIS_315H, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %55

46:                                               ; preds = %39
  %47 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %48 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @XGI_20, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %54

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %52
  br label %55

55:                                               ; preds = %54, %45
  %56 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %57 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SIS_661, align 8
  %60 = icmp sge i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %63 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @SiS_SetRegANDOR(i32 %64, i32 7, i32 232, i16 zeroext 16)
  br label %130

66:                                               ; preds = %55
  store i16 3, i16* %9, align 2
  %67 = load i16, i16* %10, align 2
  %68 = zext i16 %67 to i32
  %69 = icmp sge i32 %68, 260
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i16 0, i16* %9, align 2
  br label %83

71:                                               ; preds = %66
  %72 = load i16, i16* %10, align 2
  %73 = zext i16 %72 to i32
  %74 = icmp sge i32 %73, 160
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i16 1, i16* %9, align 2
  br label %82

76:                                               ; preds = %71
  %77 = load i16, i16* %10, align 2
  %78 = zext i16 %77 to i32
  %79 = icmp sge i32 %78, 135
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i16 2, i16* %9, align 2
  br label %81

81:                                               ; preds = %80, %76
  br label %82

82:                                               ; preds = %81, %75
  br label %83

83:                                               ; preds = %82, %70
  %84 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %85 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SIS_540, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load i16, i16* %10, align 2
  %91 = zext i16 %90 to i32
  %92 = icmp slt i32 %91, 234
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i16 2, i16* %9, align 2
  br label %94

94:                                               ; preds = %93, %89
  br label %95

95:                                               ; preds = %94, %83
  %96 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %97 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SIS_315H, align 8
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %103 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i16, i16* %9, align 2
  %106 = call i32 @SiS_SetRegANDOR(i32 %104, i32 7, i32 252, i16 zeroext %105)
  br label %129

107:                                              ; preds = %95
  %108 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %109 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @SIS_315PRO, align 8
  %112 = icmp sgt i64 %110, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %107
  %114 = load i16, i16* %6, align 2
  %115 = zext i16 %114 to i32
  %116 = icmp sgt i32 %115, 19
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load i16, i16* %9, align 2
  %119 = zext i16 %118 to i32
  %120 = and i32 %119, 252
  %121 = trunc i32 %120 to i16
  store i16 %121, i16* %9, align 2
  br label %122

122:                                              ; preds = %117, %113
  br label %123

123:                                              ; preds = %122, %107
  %124 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %125 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i16, i16* %9, align 2
  %128 = call i32 @SiS_SetRegANDOR(i32 %126, i32 7, i32 248, i16 zeroext %127)
  br label %129

129:                                              ; preds = %123, %101
  br label %130

130:                                              ; preds = %129, %61
  ret void
}

declare dso_local zeroext i16 @SiS_GetVCLK2Ptr(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_SetRegANDOR(i32, i32, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
