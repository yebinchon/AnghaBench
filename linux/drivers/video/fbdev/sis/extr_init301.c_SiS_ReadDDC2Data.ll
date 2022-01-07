; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_ReadDDC2Data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_ReadDDC2Data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i16, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.SiS_Private*)* @SiS_ReadDDC2Data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @SiS_ReadDDC2Data(%struct.SiS_Private* %0) #0 {
  %2 = alloca %struct.SiS_Private*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %2, align 8
  store i16 0, i16* %5, align 2
  store i16 0, i16* %3, align 2
  br label %6

6:                                                ; preds = %53, %1
  %7 = load i16, i16* %3, align 2
  %8 = zext i16 %7 to i32
  %9 = icmp slt i32 %8, 8
  br i1 %9, label %10, label %56

10:                                               ; preds = %6
  %11 = load i16, i16* %5, align 2
  %12 = zext i16 %11 to i32
  %13 = shl i32 %12, 1
  %14 = trunc i32 %13 to i16
  store i16 %14, i16* %5, align 2
  %15 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %16 = call i32 @SiS_SetSCLKLow(%struct.SiS_Private* %15)
  %17 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %18 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %21 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %24 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %27 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %26, i32 0, i32 0
  %28 = load i16, i16* %27, align 4
  %29 = call i32 @SiS_SetRegANDOR(i32 %19, i32 %22, i32 %25, i16 zeroext %28)
  %30 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %31 = call i32 @SiS_SetSCLKHigh(%struct.SiS_Private* %30)
  %32 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %33 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %36 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call zeroext i16 @SiS_GetReg(i32 %34, i32 %37)
  store i16 %38, i16* %4, align 2
  %39 = load i16, i16* %4, align 2
  %40 = zext i16 %39 to i32
  %41 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %42 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %41, i32 0, i32 0
  %43 = load i16, i16* %42, align 4
  %44 = zext i16 %43 to i32
  %45 = and i32 %40, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %10
  %48 = load i16, i16* %5, align 2
  %49 = zext i16 %48 to i32
  %50 = or i32 %49, 1
  %51 = trunc i32 %50 to i16
  store i16 %51, i16* %5, align 2
  br label %52

52:                                               ; preds = %47, %10
  br label %53

53:                                               ; preds = %52
  %54 = load i16, i16* %3, align 2
  %55 = add i16 %54, 1
  store i16 %55, i16* %3, align 2
  br label %6

56:                                               ; preds = %6
  %57 = load i16, i16* %5, align 2
  ret i16 %57
}

declare dso_local i32 @SiS_SetSCLKLow(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_SetRegANDOR(i32, i32, i32, i16 zeroext) #1

declare dso_local i32 @SiS_SetSCLKHigh(%struct.SiS_Private*) #1

declare dso_local zeroext i16 @SiS_GetReg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
