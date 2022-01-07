; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_VBWait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_VBWait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*)* @SiS_VBWait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_VBWait(%struct.SiS_Private* %0) #0 {
  %2 = alloca %struct.SiS_Private*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %2, align 8
  store i16 0, i16* %4, align 2
  store i16 0, i16* %5, align 2
  br label %7

7:                                                ; preds = %47, %1
  %8 = load i16, i16* %5, align 2
  %9 = zext i16 %8 to i32
  %10 = icmp slt i32 %9, 3
  br i1 %10, label %11, label %50

11:                                               ; preds = %7
  store i16 0, i16* %6, align 2
  br label %12

12:                                               ; preds = %39, %11
  %13 = load i16, i16* %6, align 2
  %14 = zext i16 %13 to i32
  %15 = icmp slt i32 %14, 100
  br i1 %15, label %16, label %42

16:                                               ; preds = %12
  %17 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %18 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call zeroext i16 @SiS_GetRegByte(i32 %19)
  store i16 %20, i16* %3, align 2
  %21 = load i16, i16* %4, align 2
  %22 = zext i16 %21 to i32
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %16
  %26 = load i16, i16* %3, align 2
  %27 = zext i16 %26 to i32
  %28 = and i32 %27, 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %39

31:                                               ; preds = %25
  br label %42

32:                                               ; preds = %16
  %33 = load i16, i16* %3, align 2
  %34 = zext i16 %33 to i32
  %35 = and i32 %34, 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %39

38:                                               ; preds = %32
  br label %42

39:                                               ; preds = %37, %30
  %40 = load i16, i16* %6, align 2
  %41 = add i16 %40, 1
  store i16 %41, i16* %6, align 2
  br label %12

42:                                               ; preds = %38, %31, %12
  %43 = load i16, i16* %4, align 2
  %44 = zext i16 %43 to i32
  %45 = xor i32 %44, 1
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* %4, align 2
  br label %47

47:                                               ; preds = %42
  %48 = load i16, i16* %5, align 2
  %49 = add i16 %48, 1
  store i16 %49, i16* %5, align 2
  br label %7

50:                                               ; preds = %7
  ret void
}

declare dso_local zeroext i16 @SiS_GetRegByte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
