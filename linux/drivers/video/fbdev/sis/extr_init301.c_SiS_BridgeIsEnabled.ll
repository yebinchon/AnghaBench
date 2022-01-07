; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_BridgeIsEnabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_BridgeIsEnabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i64, i32 }

@SIS_315H = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SiS_Private*)* @SiS_BridgeIsEnabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SiS_BridgeIsEnabled(%struct.SiS_Private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SiS_Private*, align 8
  %4 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %3, align 8
  %5 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %6 = call i64 @SiS_HaveBridge(%struct.SiS_Private* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %47

8:                                                ; preds = %1
  %9 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %10 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call zeroext i16 @SiS_GetReg(i32 %11, i32 0)
  store i16 %12, i16* %4, align 2
  %13 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %14 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SIS_315H, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %8
  %19 = load i16, i16* %4, align 2
  %20 = zext i16 %19 to i32
  %21 = and i32 %20, 160
  %22 = trunc i32 %21 to i16
  store i16 %22, i16* %4, align 2
  %23 = load i16, i16* %4, align 2
  %24 = zext i16 %23 to i32
  %25 = icmp eq i32 %24, 128
  br i1 %25, label %30, label %26

26:                                               ; preds = %18
  %27 = load i16, i16* %4, align 2
  %28 = zext i16 %27 to i32
  %29 = icmp eq i32 %28, 32
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %18
  store i32 1, i32* %2, align 4
  br label %48

31:                                               ; preds = %26
  br label %46

32:                                               ; preds = %8
  %33 = load i16, i16* %4, align 2
  %34 = zext i16 %33 to i32
  %35 = and i32 %34, 80
  %36 = trunc i32 %35 to i16
  store i16 %36, i16* %4, align 2
  %37 = load i16, i16* %4, align 2
  %38 = zext i16 %37 to i32
  %39 = icmp eq i32 %38, 64
  br i1 %39, label %44, label %40

40:                                               ; preds = %32
  %41 = load i16, i16* %4, align 2
  %42 = zext i16 %41 to i32
  %43 = icmp eq i32 %42, 16
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %32
  store i32 1, i32* %2, align 4
  br label %48

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45, %31
  br label %47

47:                                               ; preds = %46, %1
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %44, %30
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @SiS_HaveBridge(%struct.SiS_Private*) #1

declare dso_local zeroext i16 @SiS_GetReg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
