; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_SetSegRegUpper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_SetSegRegUpper.c"
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
  %11 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %12 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @SiS_GetRegByte(%struct.SiS_Private* %10, i32 %13)
  %15 = and i32 %14, 15
  %16 = trunc i32 %15 to i16
  store i16 %16, i16* %5, align 2
  %17 = load i16, i16* %4, align 2
  %18 = zext i16 %17 to i32
  %19 = and i32 %18, 240
  %20 = load i16, i16* %5, align 2
  %21 = zext i16 %20 to i32
  %22 = or i32 %21, %19
  %23 = trunc i32 %22 to i16
  store i16 %23, i16* %5, align 2
  %24 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %25 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %26 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i16, i16* %5, align 2
  %29 = call i32 @SiS_SetRegByte(%struct.SiS_Private* %24, i32 %27, i16 zeroext %28)
  %30 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %31 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %32 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @SiS_GetRegByte(%struct.SiS_Private* %30, i32 %33)
  %35 = and i32 %34, 15
  %36 = trunc i32 %35 to i16
  store i16 %36, i16* %5, align 2
  %37 = load i16, i16* %4, align 2
  %38 = zext i16 %37 to i32
  %39 = shl i32 %38, 4
  %40 = load i16, i16* %5, align 2
  %41 = zext i16 %40 to i32
  %42 = or i32 %41, %39
  %43 = trunc i32 %42 to i16
  store i16 %43, i16* %5, align 2
  %44 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %45 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %46 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i16, i16* %5, align 2
  %49 = call i32 @SiS_SetRegByte(%struct.SiS_Private* %44, i32 %47, i16 zeroext %48)
  ret void
}

declare dso_local i32 @SiS_GetRegByte(%struct.SiS_Private*, i32) #1

declare dso_local i32 @SiS_SetRegByte(%struct.SiS_Private*, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
