; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_SetCH70xxANDOR.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_SetCH70xxANDOR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiS_SetCH70xxANDOR(%struct.SiS_Private* %0, i16 zeroext %1, i8 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.SiS_Private*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %5, align 8
  store i16 %1, i16* %6, align 2
  store i8 %2, i8* %7, align 1
  store i16 %3, i16* %8, align 2
  %10 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %11 = load i16, i16* %6, align 2
  %12 = zext i16 %11 to i32
  %13 = and i32 %12, 255
  %14 = trunc i32 %13 to i16
  %15 = call zeroext i16 @SiS_GetCH70xx(%struct.SiS_Private* %10, i16 zeroext %14)
  %16 = zext i16 %15 to i32
  %17 = load i16, i16* %8, align 2
  %18 = zext i16 %17 to i32
  %19 = and i32 %16, %18
  %20 = load i8, i8* %7, align 1
  %21 = zext i8 %20 to i32
  %22 = or i32 %19, %21
  %23 = trunc i32 %22 to i16
  store i16 %23, i16* %9, align 2
  %24 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %25 = load i16, i16* %6, align 2
  %26 = load i16, i16* %9, align 2
  %27 = call i32 @SiS_SetCH70xx(%struct.SiS_Private* %24, i16 zeroext %25, i16 zeroext %26)
  ret void
}

declare dso_local zeroext i16 @SiS_GetCH70xx(%struct.SiS_Private*, i16 zeroext) #1

declare dso_local i32 @SiS_SetCH70xx(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
