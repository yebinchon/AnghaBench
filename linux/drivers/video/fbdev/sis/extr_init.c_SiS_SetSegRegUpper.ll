; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_SetSegRegUpper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_SetSegRegUpper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16)* @SiS_SetSegRegUpper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetSegRegUpper(%struct.SiS_Private* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.SiS_Private*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %3, align 8
  store i16 %1, i16* %4, align 2
  %6 = load i16, i16* %4, align 2
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 255
  %9 = trunc i32 %8 to i16
  store i16 %9, i16* %4, align 2
  %10 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %11 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @SiS_GetRegByte(i32 %12)
  %14 = and i32 %13, 15
  %15 = trunc i32 %14 to i16
  store i16 %15, i16* %5, align 2
  %16 = load i16, i16* %4, align 2
  %17 = zext i16 %16 to i32
  %18 = and i32 %17, 240
  %19 = load i16, i16* %5, align 2
  %20 = zext i16 %19 to i32
  %21 = or i32 %20, %18
  %22 = trunc i32 %21 to i16
  store i16 %22, i16* %5, align 2
  %23 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %24 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i16, i16* %5, align 2
  %27 = call i32 @SiS_SetRegByte(i32 %25, i16 zeroext %26)
  %28 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %29 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @SiS_GetRegByte(i32 %30)
  %32 = and i32 %31, 15
  %33 = trunc i32 %32 to i16
  store i16 %33, i16* %5, align 2
  %34 = load i16, i16* %4, align 2
  %35 = zext i16 %34 to i32
  %36 = shl i32 %35, 4
  %37 = load i16, i16* %5, align 2
  %38 = zext i16 %37 to i32
  %39 = or i32 %38, %36
  %40 = trunc i32 %39 to i16
  store i16 %40, i16* %5, align 2
  %41 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %42 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i16, i16* %5, align 2
  %45 = call i32 @SiS_SetRegByte(i32 %43, i16 zeroext %44)
  ret void
}

declare dso_local i32 @SiS_GetRegByte(i32) #1

declare dso_local i32 @SiS_SetRegByte(i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
