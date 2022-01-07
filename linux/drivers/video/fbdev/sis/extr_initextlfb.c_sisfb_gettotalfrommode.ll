; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_initextlfb.c_sisfb_gettotalfrommode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_initextlfb.c_sisfb_gettotalfrommode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i16, i16, i16 }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i16 }

@HaveWideTiming = common dso_local global i32 0, align 4
@InterlaceMode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sisfb_gettotalfrommode(%struct.SiS_Private* %0, i8 zeroext %1, i32* %2, i32* %3, i8 zeroext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.SiS_Private*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  store %struct.SiS_Private* %0, %struct.SiS_Private** %7, align 8
  store i8 %1, i8* %8, align 1
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8 %4, i8* %11, align 1
  %19 = load i8, i8* %8, align 1
  %20 = zext i8 %19 to i16
  store i16 %20, i16* %12, align 2
  store i16 0, i16* %13, align 2
  store i16 0, i16* %14, align 2
  store i16 0, i16* %15, align 2
  %21 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %22 = call i32 @SiSInitPtr(%struct.SiS_Private* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %208

25:                                               ; preds = %5
  %26 = load i8, i8* %11, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i8, i8* %11, align 1
  %31 = add i8 %30, -1
  store i8 %31, i8* %11, align 1
  br label %32

32:                                               ; preds = %29, %25
  %33 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %34 = call i32 @SiS_SearchModeID(%struct.SiS_Private* %33, i16* %12, i16* %13)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %208

37:                                               ; preds = %32
  %38 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %39 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i16, i16* %13, align 2
  %42 = zext i16 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i16, i16* %44, align 2
  store i16 %45, i16* %15, align 2
  %46 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %47 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load i16, i16* %15, align 2
  %50 = zext i16 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @HaveWideTiming, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %87

57:                                               ; preds = %37
  %58 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %59 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %64 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load i16, i16* %15, align 2
  %67 = zext i16 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i16, i16* %69, align 4
  store i16 %70, i16* %14, align 2
  br label %86

71:                                               ; preds = %57
  %72 = load i8, i8* %11, align 1
  %73 = zext i8 %72 to i32
  %74 = load i16, i16* %15, align 2
  %75 = zext i16 %74 to i32
  %76 = add nsw i32 %75, %73
  %77 = trunc i32 %76 to i16
  store i16 %77, i16* %15, align 2
  %78 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %79 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %78, i32 0, i32 1
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = load i16, i16* %15, align 2
  %82 = zext i16 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i16, i16* %84, align 2
  store i16 %85, i16* %14, align 2
  br label %86

86:                                               ; preds = %71, %62
  br label %102

87:                                               ; preds = %37
  %88 = load i8, i8* %11, align 1
  %89 = zext i8 %88 to i32
  %90 = load i16, i16* %15, align 2
  %91 = zext i16 %90 to i32
  %92 = add nsw i32 %91, %89
  %93 = trunc i32 %92 to i16
  store i16 %93, i16* %15, align 2
  %94 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %95 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %94, i32 0, i32 1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = load i16, i16* %15, align 2
  %98 = zext i16 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 3
  %101 = load i16, i16* %100, align 4
  store i16 %101, i16* %14, align 2
  br label %102

102:                                              ; preds = %87, %86
  %103 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %104 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %103, i32 0, i32 2
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = load i16, i16* %14, align 2
  %107 = zext i16 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 14
  %112 = load i8, i8* %111, align 1
  store i8 %112, i8* %16, align 1
  %113 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %114 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %113, i32 0, i32 2
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = load i16, i16* %14, align 2
  %117 = zext i16 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i8, i8* %121, align 1
  store i8 %122, i8* %17, align 1
  %123 = load i8, i8* %17, align 1
  %124 = zext i8 %123 to i32
  %125 = and i32 %124, 255
  %126 = load i8, i8* %16, align 1
  %127 = zext i8 %126 to i32
  %128 = and i32 %127, 3
  %129 = trunc i32 %128 to i16
  %130 = zext i16 %129 to i32
  %131 = shl i32 %130, 8
  %132 = or i32 %125, %131
  %133 = add nsw i32 %132, 5
  %134 = mul nsw i32 %133, 8
  %135 = load i32*, i32** %9, align 8
  store i32 %134, i32* %135, align 4
  %136 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %137 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %136, i32 0, i32 2
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = load i16, i16* %14, align 2
  %140 = zext i16 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 13
  %145 = load i8, i8* %144, align 1
  store i8 %145, i8* %16, align 1
  %146 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %147 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %146, i32 0, i32 2
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = load i16, i16* %14, align 2
  %150 = zext i16 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 6
  %155 = load i8, i8* %154, align 1
  store i8 %155, i8* %17, align 1
  %156 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %157 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %156, i32 0, i32 2
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %157, align 8
  %159 = load i16, i16* %14, align 2
  %160 = zext i16 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 7
  %165 = load i8, i8* %164, align 1
  store i8 %165, i8* %18, align 1
  %166 = load i8, i8* %17, align 1
  %167 = zext i8 %166 to i32
  %168 = and i32 %167, 255
  %169 = load i8, i8* %18, align 1
  %170 = zext i8 %169 to i32
  %171 = and i32 %170, 1
  %172 = trunc i32 %171 to i16
  %173 = zext i16 %172 to i32
  %174 = shl i32 %173, 8
  %175 = or i32 %168, %174
  %176 = load i8, i8* %18, align 1
  %177 = zext i8 %176 to i32
  %178 = and i32 %177, 32
  %179 = trunc i32 %178 to i16
  %180 = zext i16 %179 to i32
  %181 = shl i32 %180, 4
  %182 = or i32 %175, %181
  %183 = load i8, i8* %16, align 1
  %184 = zext i8 %183 to i32
  %185 = and i32 %184, 1
  %186 = trunc i32 %185 to i16
  %187 = zext i16 %186 to i32
  %188 = shl i32 %187, 10
  %189 = or i32 %182, %188
  %190 = add nsw i32 %189, 2
  %191 = load i32*, i32** %10, align 8
  store i32 %190, i32* %191, align 4
  %192 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %193 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %192, i32 0, i32 1
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %193, align 8
  %195 = load i16, i16* %15, align 2
  %196 = zext i16 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @InterlaceMode, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %102
  %204 = load i32*, i32** %10, align 8
  %205 = load i32, i32* %204, align 4
  %206 = mul nsw i32 %205, 2
  store i32 %206, i32* %204, align 4
  br label %207

207:                                              ; preds = %203, %102
  store i32 1, i32* %6, align 4
  br label %208

208:                                              ; preds = %207, %36, %24
  %209 = load i32, i32* %6, align 4
  ret i32 %209
}

declare dso_local i32 @SiSInitPtr(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_SearchModeID(%struct.SiS_Private*, i16*, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
