; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_SetRegANDOR.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_SetRegANDOR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i64, i16, i16, i16)* @SiS_SetRegANDOR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetRegANDOR(%struct.SiS_Private* %0, i64 %1, i16 zeroext %2, i16 zeroext %3, i16 zeroext %4) #0 {
  %6 = alloca %struct.SiS_Private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %6, align 8
  store i64 %1, i64* %7, align 8
  store i16 %2, i16* %8, align 2
  store i16 %3, i16* %9, align 2
  store i16 %4, i16* %10, align 2
  %11 = load %struct.SiS_Private*, %struct.SiS_Private** %6, align 8
  %12 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* %7, align 8
  %15 = load i16, i16* %8, align 2
  %16 = load i16, i16* %9, align 2
  %17 = load i16, i16* %10, align 2
  %18 = call i32 @sisusb_setidxregandor(i32 %13, i64 %14, i16 zeroext %15, i16 zeroext %16, i16 zeroext %17)
  ret void
}

declare dso_local i32 @sisusb_setidxregandor(i32, i64, i16 zeroext, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
