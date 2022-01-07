; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_GetOffset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_GetOffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i16, i16, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i16, i16 }

@InterlaceMode = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @SiS_GetOffset(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
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
  %14 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %4
  %18 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %19 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %18, i32 0, i32 0
  %20 = load i16, i16* %19, align 8
  store i16 %20, i16* %12, align 2
  %21 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %22 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %21, i32 0, i32 1
  %23 = load i16, i16* %22, align 2
  store i16 %23, i16* %9, align 2
  br label %41

24:                                               ; preds = %4
  %25 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %26 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i16, i16* %8, align 2
  %29 = zext i16 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i16, i16* %31, align 2
  store i16 %32, i16* %12, align 2
  %33 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %34 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i16, i16* %8, align 2
  %37 = zext i16 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i16, i16* %39, align 2
  store i16 %40, i16* %9, align 2
  br label %41

41:                                               ; preds = %24, %17
  %42 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %43 = load i16, i16* %6, align 2
  %44 = load i16, i16* %7, align 2
  %45 = call zeroext i16 @SiS_GetColorDepth(%struct.SiS_Private* %42, i16 zeroext %43, i16 zeroext %44)
  store i16 %45, i16* %11, align 2
  %46 = load i16, i16* %9, align 2
  %47 = zext i16 %46 to i32
  %48 = sdiv i32 %47, 16
  %49 = trunc i32 %48 to i16
  store i16 %49, i16* %10, align 2
  %50 = load i16, i16* %12, align 2
  %51 = zext i16 %50 to i32
  %52 = load i16, i16* @InterlaceMode, align 2
  %53 = zext i16 %52 to i32
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %41
  %57 = load i16, i16* %10, align 2
  %58 = zext i16 %57 to i32
  %59 = shl i32 %58, 1
  %60 = trunc i32 %59 to i16
  store i16 %60, i16* %10, align 2
  br label %61

61:                                               ; preds = %56, %41
  %62 = load i16, i16* %11, align 2
  %63 = zext i16 %62 to i32
  %64 = load i16, i16* %10, align 2
  %65 = zext i16 %64 to i32
  %66 = mul nsw i32 %65, %63
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %10, align 2
  %68 = load i16, i16* %9, align 2
  %69 = zext i16 %68 to i32
  %70 = srem i32 %69, 16
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %61
  %73 = load i16, i16* %11, align 2
  %74 = zext i16 %73 to i32
  %75 = ashr i32 %74, 1
  %76 = load i16, i16* %10, align 2
  %77 = zext i16 %76 to i32
  %78 = add nsw i32 %77, %75
  %79 = trunc i32 %78 to i16
  store i16 %79, i16* %10, align 2
  br label %80

80:                                               ; preds = %72, %61
  %81 = load i16, i16* %10, align 2
  ret i16 %81
}

declare dso_local zeroext i16 @SiS_GetColorDepth(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
