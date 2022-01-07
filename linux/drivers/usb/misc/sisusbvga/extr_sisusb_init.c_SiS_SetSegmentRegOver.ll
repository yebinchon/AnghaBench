; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_SetSegmentRegOver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_SetSegmentRegOver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16)* @SiS_SetSegmentRegOver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetSegmentRegOver(%struct.SiS_Private* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.SiS_Private*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %3, align 8
  store i16 %1, i16* %4, align 2
  %6 = load i16, i16* %4, align 2
  %7 = zext i16 %6 to i32
  %8 = ashr i32 %7, 8
  %9 = trunc i32 %8 to i16
  store i16 %9, i16* %5, align 2
  %10 = load i16, i16* %5, align 2
  %11 = zext i16 %10 to i32
  %12 = and i32 %11, 7
  %13 = trunc i32 %12 to i16
  store i16 %13, i16* %5, align 2
  %14 = load i16, i16* %5, align 2
  %15 = zext i16 %14 to i32
  %16 = shl i32 %15, 4
  %17 = load i16, i16* %5, align 2
  %18 = zext i16 %17 to i32
  %19 = or i32 %18, %16
  %20 = trunc i32 %19 to i16
  store i16 %20, i16* %5, align 2
  %21 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %22 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %23 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i16, i16* %5, align 2
  %26 = call i32 @SiS_SetReg(%struct.SiS_Private* %21, i32 %24, i32 29, i16 zeroext %25)
  %27 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %28 = load i16, i16* %4, align 2
  %29 = call i32 @SiS_SetSegmentReg(%struct.SiS_Private* %27, i16 zeroext %28)
  ret void
}

declare dso_local i32 @SiS_SetReg(%struct.SiS_Private*, i32, i32, i16 zeroext) #1

declare dso_local i32 @SiS_SetSegmentReg(%struct.SiS_Private*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
