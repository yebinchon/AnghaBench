; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiSDetermineROMUsage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiSDetermineROMUsage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i8*, i32, i32, i32, i64, i32, i32, i64 }

@XGI_20 = common dso_local global i64 0, align 8
@SIS_300 = common dso_local global i64 0, align 8
@SIS_315H = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*)* @SiSDetermineROMUsage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiSDetermineROMUsage(%struct.SiS_Private* %0) #0 {
  %2 = alloca %struct.SiS_Private*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %2, align 8
  %5 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %6 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  store i8* %7, i8** %3, align 8
  store i16 0, i16* %4, align 2
  %8 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %9 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %8, i32 0, i32 1
  store i32 0, i32* %9, align 8
  %10 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %11 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %10, i32 0, i32 2
  store i32 0, i32* %11, align 4
  %12 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %13 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %12, i32 0, i32 3
  store i32 0, i32* %13, align 8
  %14 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %15 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @XGI_20, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %153

20:                                               ; preds = %1
  %21 = load i8*, i8** %3, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %153

23:                                               ; preds = %20
  %24 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %25 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %24, i32 0, i32 7
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %153

28:                                               ; preds = %23
  %29 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %30 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SIS_300, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %28
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 3
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %38, 233
  br i1 %39, label %40, label %55

40:                                               ; preds = %34
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 5
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl i32 %44, 8
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 4
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %45, %49
  %51 = icmp sgt i32 %50, 538
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %54 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %53, i32 0, i32 1
  store i32 1, i32* %54, align 8
  br label %55

55:                                               ; preds = %52, %40, %34
  br label %152

56:                                               ; preds = %28
  %57 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %58 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SIS_315H, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %64 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %63, i32 0, i32 1
  store i32 1, i32* %64, align 8
  br label %151

65:                                               ; preds = %56
  %66 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %67 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %66, i32 0, i32 1
  store i32 1, i32* %67, align 8
  %68 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %69 = call i32 @SiSDetermineROMLayout661(%struct.SiS_Private* %68)
  %70 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %71 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = icmp ne i32 %69, 0
  br i1 %72, label %73, label %150

73:                                               ; preds = %65
  %74 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %75 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %74, i32 0, i32 5
  store i32 14, i32* %75, align 8
  %76 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %77 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %76, i32 0, i32 3
  store i32 17, i32* %77, align 8
  %78 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %79 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %78, i32 0, i32 6
  store i32 36, i32* %79, align 4
  %80 = call zeroext i16 @SISGETROMW(i32 258)
  store i16 %80, i16* %4, align 2
  %81 = icmp ne i16 %80, 0
  br i1 %81, label %82, label %149

82:                                               ; preds = %73
  %83 = load i8*, i8** %3, align 8
  %84 = load i16, i16* %4, align 2
  %85 = zext i16 %84 to i32
  %86 = add nsw i32 %85, 512
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %83, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp eq i32 %90, 255
  br i1 %91, label %92, label %95

92:                                               ; preds = %82
  %93 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %94 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %93, i32 0, i32 6
  store i32 32, i32* %94, align 4
  br label %148

95:                                               ; preds = %82
  %96 = load i8*, i8** %3, align 8
  %97 = load i16, i16* %4, align 2
  %98 = zext i16 %97 to i32
  %99 = add nsw i32 %98, 544
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %96, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp eq i32 %103, 255
  br i1 %104, label %105, label %108

105:                                              ; preds = %95
  %106 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %107 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %106, i32 0, i32 6
  store i32 34, i32* %107, align 4
  br label %147

108:                                              ; preds = %95
  %109 = load i8*, i8** %3, align 8
  %110 = load i16, i16* %4, align 2
  %111 = zext i16 %110 to i32
  %112 = add nsw i32 %111, 576
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %109, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = icmp eq i32 %116, 255
  br i1 %117, label %118, label %121

118:                                              ; preds = %108
  %119 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %120 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %119, i32 0, i32 6
  store i32 36, i32* %120, align 4
  br label %146

121:                                              ; preds = %108
  %122 = load i8*, i8** %3, align 8
  %123 = load i16, i16* %4, align 2
  %124 = zext i16 %123 to i32
  %125 = add nsw i32 %124, 608
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %122, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp eq i32 %129, 255
  br i1 %130, label %138, label %131

131:                                              ; preds = %121
  %132 = load i8*, i8** %3, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 111
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = and i32 %135, 1
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %131, %121
  %139 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %140 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %139, i32 0, i32 6
  store i32 38, i32* %140, align 4
  %141 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %142 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %141, i32 0, i32 5
  store i32 16, i32* %142, align 8
  %143 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %144 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %143, i32 0, i32 3
  store i32 19, i32* %144, align 8
  br label %145

145:                                              ; preds = %138, %131
  br label %146

146:                                              ; preds = %145, %118
  br label %147

147:                                              ; preds = %146, %105
  br label %148

148:                                              ; preds = %147, %92
  br label %149

149:                                              ; preds = %148, %73
  br label %150

150:                                              ; preds = %149, %65
  br label %151

151:                                              ; preds = %150, %62
  br label %152

152:                                              ; preds = %151, %55
  br label %153

153:                                              ; preds = %19, %152, %23, %20
  ret void
}

declare dso_local i32 @SiSDetermineROMLayout661(%struct.SiS_Private*) #1

declare dso_local zeroext i16 @SISGETROMW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
