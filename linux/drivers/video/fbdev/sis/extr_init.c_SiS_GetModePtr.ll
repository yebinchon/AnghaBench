; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_GetModePtr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_GetModePtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i16 }

@ModeEGA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @SiS_GetModePtr(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.SiS_Private*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %8 = load i16, i16* %5, align 2
  %9 = zext i16 %8 to i32
  %10 = icmp sle i32 %9, 19
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %13 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i16, i16* %6, align 2
  %16 = zext i16 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i16, i16* %18, align 2
  store i16 %19, i16* %7, align 2
  br label %29

20:                                               ; preds = %3
  %21 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %22 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ModeEGA, align 8
  %25 = icmp sle i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i16 27, i16* %7, align 2
  br label %28

27:                                               ; preds = %20
  store i16 15, i16* %7, align 2
  br label %28

28:                                               ; preds = %27, %26
  br label %29

29:                                               ; preds = %28, %11
  %30 = load i16, i16* %7, align 2
  ret i16 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
