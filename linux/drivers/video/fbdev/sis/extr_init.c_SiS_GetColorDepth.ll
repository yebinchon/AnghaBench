; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_GetColorDepth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_GetColorDepth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i16, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i16 }
%struct.TYPE_3__ = type { i16 }

@SiS_GetColorDepth.ColorDepth = internal constant [6 x i16] [i16 1, i16 2, i16 4, i16 4, i16 6, i16 8], align 2
@ModeTypeMask = common dso_local global i16 0, align 2
@ModeEGA = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @SiS_GetColorDepth(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.SiS_Private*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %9 = load i16, i16* %5, align 2
  %10 = zext i16 %9 to i32
  %11 = icmp eq i32 %10, 254
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %14 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %13, i32 0, i32 0
  %15 = load i16, i16* %14, align 8
  store i16 %15, i16* %7, align 2
  br label %39

16:                                               ; preds = %3
  %17 = load i16, i16* %5, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp sle i32 %18, 19
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %22 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i16, i16* %6, align 2
  %25 = zext i16 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i16, i16* %27, align 2
  store i16 %28, i16* %7, align 2
  br label %38

29:                                               ; preds = %16
  %30 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %31 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i16, i16* %6, align 2
  %34 = zext i16 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i16, i16* %36, align 2
  store i16 %37, i16* %7, align 2
  br label %38

38:                                               ; preds = %29, %20
  br label %39

39:                                               ; preds = %38, %12
  %40 = load i16, i16* %7, align 2
  %41 = zext i16 %40 to i32
  %42 = load i16, i16* @ModeTypeMask, align 2
  %43 = zext i16 %42 to i32
  %44 = and i32 %41, %43
  %45 = load i16, i16* @ModeEGA, align 2
  %46 = zext i16 %45 to i32
  %47 = sub nsw i32 %44, %46
  %48 = trunc i32 %47 to i16
  store i16 %48, i16* %8, align 2
  %49 = load i16, i16* %8, align 2
  %50 = sext i16 %49 to i32
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  store i16 0, i16* %8, align 2
  br label %53

53:                                               ; preds = %52, %39
  %54 = load i16, i16* %8, align 2
  %55 = sext i16 %54 to i64
  %56 = getelementptr inbounds [6 x i16], [6 x i16]* @SiS_GetColorDepth.ColorDepth, i64 0, i64 %55
  %57 = load i16, i16* %56, align 2
  ret i16 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
