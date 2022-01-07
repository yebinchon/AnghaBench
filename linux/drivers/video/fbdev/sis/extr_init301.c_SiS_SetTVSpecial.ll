; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_SetTVSpecial.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_SetTVSpecial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32, i32, i32 }

@VB_SIS30xBLV = common dso_local global i32 0, align 4
@SetCRT2ToTVNoHiVision = common dso_local global i32 0, align 4
@TVSetYPbPr525p = common dso_local global i32 0, align 4
@TVSetYPbPr750p = common dso_local global i32 0, align 4
@TVSetPAL = common dso_local global i32 0, align 4
@TVSetNTSC1024 = common dso_local global i32 0, align 4
@SiS_SetTVSpecial.specialtv = internal constant [21 x i8] c"\A7\07\F2n\17\8BsS\13@4\F4c\BB\CCzX\E4s\DA\13", align 16
@SetCRT2ToYPbPr525750 = common dso_local global i32 0, align 4
@TVSetPALM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16)* @SiS_SetTVSpecial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetTVSpecial(%struct.SiS_Private* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.SiS_Private*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.SiS_Private* %0, %struct.SiS_Private** %3, align 8
  store i16 %1, i16* %4, align 2
  %7 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %8 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @VB_SIS30xBLV, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %147

14:                                               ; preds = %2
  %15 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %16 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SetCRT2ToTVNoHiVision, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %147

22:                                               ; preds = %14
  %23 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %24 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @TVSetYPbPr525p, align 4
  %27 = load i32, i32* @TVSetYPbPr750p, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %147

32:                                               ; preds = %22
  %33 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %34 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @TVSetPAL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %104, label %39

39:                                               ; preds = %32
  %40 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %41 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @TVSetNTSC1024, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %103

46:                                               ; preds = %39
  store i32 28, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %60, %46
  %48 = load i32, i32* %5, align 4
  %49 = icmp sle i32 %48, 48
  br i1 %49, label %50, label %65

50:                                               ; preds = %47
  %51 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %52 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [21 x i8], [21 x i8]* @SiS_SetTVSpecial.specialtv, i64 0, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = call i32 @SiS_SetReg(i32 %53, i32 %54, i8 zeroext %58)
  br label %60

60:                                               ; preds = %50
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %47

65:                                               ; preds = %47
  %66 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %67 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @SiS_SetReg(i32 %68, i32 67, i8 zeroext 114)
  %70 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %71 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @SetCRT2ToYPbPr525750, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %102, label %76

76:                                               ; preds = %65
  %77 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %78 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @TVSetPALM, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %76
  %84 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %85 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @SiS_SetReg(i32 %86, i32 1, i8 zeroext 20)
  %88 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %89 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @SiS_SetReg(i32 %90, i32 2, i8 zeroext 27)
  br label %101

92:                                               ; preds = %76
  %93 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %94 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @SiS_SetReg(i32 %95, i32 1, i8 zeroext 20)
  %97 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %98 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @SiS_SetReg(i32 %99, i32 2, i8 zeroext 26)
  br label %101

101:                                              ; preds = %92, %83
  br label %102

102:                                              ; preds = %101, %65
  br label %103

103:                                              ; preds = %102, %39
  br label %147

104:                                              ; preds = %32
  %105 = load i16, i16* %4, align 2
  %106 = zext i16 %105 to i32
  %107 = icmp eq i32 %106, 56
  br i1 %107, label %128, label %108

108:                                              ; preds = %104
  %109 = load i16, i16* %4, align 2
  %110 = zext i16 %109 to i32
  %111 = icmp eq i32 %110, 74
  br i1 %111, label %128, label %112

112:                                              ; preds = %108
  %113 = load i16, i16* %4, align 2
  %114 = zext i16 %113 to i32
  %115 = icmp eq i32 %114, 100
  br i1 %115, label %128, label %116

116:                                              ; preds = %112
  %117 = load i16, i16* %4, align 2
  %118 = zext i16 %117 to i32
  %119 = icmp eq i32 %118, 82
  br i1 %119, label %128, label %120

120:                                              ; preds = %116
  %121 = load i16, i16* %4, align 2
  %122 = zext i16 %121 to i32
  %123 = icmp eq i32 %122, 88
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load i16, i16* %4, align 2
  %126 = zext i16 %125 to i32
  %127 = icmp eq i32 %126, 92
  br i1 %127, label %128, label %137

128:                                              ; preds = %124, %120, %116, %112, %108, %104
  %129 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %130 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @SiS_SetReg(i32 %131, i32 1, i8 zeroext 27)
  %133 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %134 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @SiS_SetReg(i32 %135, i32 2, i8 zeroext 84)
  br label %146

137:                                              ; preds = %124
  %138 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %139 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @SiS_SetReg(i32 %140, i32 1, i8 zeroext 26)
  %142 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %143 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @SiS_SetReg(i32 %144, i32 2, i8 zeroext 83)
  br label %146

146:                                              ; preds = %137, %128
  br label %147

147:                                              ; preds = %13, %21, %31, %146, %103
  ret void
}

declare dso_local i32 @SiS_SetReg(i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
