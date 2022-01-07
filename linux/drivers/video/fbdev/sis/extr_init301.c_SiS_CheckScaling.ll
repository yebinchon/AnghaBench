; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_CheckScaling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_CheckScaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32, i32 }

@SetCRT2ToLCD = common dso_local global i32 0, align 4
@DontExpandLCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16, i8*)* @SiS_CheckScaling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_CheckScaling(%struct.SiS_Private* %0, i16 zeroext %1, i8* %2) #0 {
  %4 = alloca %struct.SiS_Private*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.SiS_Private* %0, %struct.SiS_Private** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %46, %3
  %9 = load i8*, i8** %6, align 8
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp ne i32 %14, 255
  br i1 %15, label %16, label %47

16:                                               ; preds = %8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %7, align 4
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = load i16, i16* %5, align 2
  %25 = zext i16 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %16
  %28 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %29 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SetCRT2ToLCD, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %27
  %35 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %36 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %45

39:                                               ; preds = %34, %27
  %40 = load i32, i32* @DontExpandLCD, align 4
  %41 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %42 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %34
  br label %47

46:                                               ; preds = %16
  br label %8

47:                                               ; preds = %45, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
