; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiSDetermineROMLayout661.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiSDetermineROMLayout661.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i8*, i64 }

@XGI_20 = common dso_local global i64 0, align 8
@SIS_761 = common dso_local global i64 0, align 8
@SIS_661 = common dso_local global i64 0, align 8
@IS_SIS650740 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SiSDetermineROMLayout661(%struct.SiS_Private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SiS_Private*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %3, align 8
  %8 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %9 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %4, align 8
  store i16 1, i16* %6, align 2
  store i16 0, i16* %7, align 2
  %11 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %12 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @XGI_20, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %163

17:                                               ; preds = %1
  %18 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %19 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SIS_761, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %163

24:                                               ; preds = %17
  %25 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %26 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SIS_661, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %130

30:                                               ; preds = %24
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 26
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %34, 78
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 27
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, 101
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 28
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %46, 119
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 29
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %52, 86
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 1, i32* %2, align 4
  br label %163

55:                                               ; preds = %48, %42, %36, %30
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 22
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 23
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = shl i32 %63, 8
  %65 = or i32 %59, %64
  %66 = trunc i32 %65 to i16
  store i16 %66, i16* %5, align 2
  %67 = load i16, i16* %5, align 2
  %68 = icmp ne i16 %67, 0
  br i1 %68, label %69, label %120

69:                                               ; preds = %55
  %70 = load i8*, i8** %4, align 8
  %71 = load i16, i16* %5, align 2
  %72 = zext i16 %71 to i32
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %70, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp eq i32 %77, 46
  br i1 %78, label %89, label %79

79:                                               ; preds = %69
  %80 = load i8*, i8** %4, align 8
  %81 = load i16, i16* %5, align 2
  %82 = zext i16 %81 to i32
  %83 = add nsw i32 %82, 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %80, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp eq i32 %87, 46
  br i1 %88, label %89, label %119

89:                                               ; preds = %79, %69
  %90 = load i8*, i8** %4, align 8
  %91 = load i16, i16* %5, align 2
  %92 = zext i16 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = sub nsw i32 %95, 48
  %97 = trunc i32 %96 to i16
  store i16 %97, i16* %6, align 2
  %98 = load i8*, i8** %4, align 8
  %99 = load i16, i16* %5, align 2
  %100 = zext i16 %99 to i32
  %101 = add nsw i32 %100, 2
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %98, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = sub nsw i32 %105, 48
  %107 = mul nsw i32 %106, 10
  %108 = load i8*, i8** %4, align 8
  %109 = load i16, i16* %5, align 2
  %110 = zext i16 %109 to i32
  %111 = add nsw i32 %110, 3
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %108, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = sub nsw i32 %115, 48
  %117 = add nsw i32 %107, %116
  %118 = trunc i32 %117 to i16
  store i16 %118, i16* %7, align 2
  br label %119

119:                                              ; preds = %89, %79
  br label %120

120:                                              ; preds = %119, %55
  %121 = load i16, i16* %6, align 2
  %122 = zext i16 %121 to i32
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load i16, i16* %7, align 2
  %126 = zext i16 %125 to i32
  %127 = icmp sge i32 %126, 92
  br i1 %127, label %128, label %129

128:                                              ; preds = %124, %120
  store i32 1, i32* %2, align 4
  br label %163

129:                                              ; preds = %124
  br label %160

130:                                              ; preds = %24
  %131 = load i64, i64* @IS_SIS650740, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %159

133:                                              ; preds = %130
  %134 = load i8*, i8** %4, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 26
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = icmp eq i32 %137, 78
  br i1 %138, label %139, label %158

139:                                              ; preds = %133
  %140 = load i8*, i8** %4, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 27
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = icmp eq i32 %143, 101
  br i1 %144, label %145, label %158

145:                                              ; preds = %139
  %146 = load i8*, i8** %4, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 28
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = icmp eq i32 %149, 119
  br i1 %150, label %151, label %158

151:                                              ; preds = %145
  %152 = load i8*, i8** %4, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 29
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = icmp eq i32 %155, 86
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  store i32 1, i32* %2, align 4
  br label %163

158:                                              ; preds = %151, %145, %139, %133
  br label %159

159:                                              ; preds = %158, %130
  br label %160

160:                                              ; preds = %159, %129
  br label %161

161:                                              ; preds = %160
  br label %162

162:                                              ; preds = %161
  store i32 0, i32* %2, align 4
  br label %163

163:                                              ; preds = %162, %157, %128, %54, %23, %16
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
