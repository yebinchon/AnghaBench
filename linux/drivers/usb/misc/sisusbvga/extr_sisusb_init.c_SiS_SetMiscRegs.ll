; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_SetMiscRegs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_SetMiscRegs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16)* @SiS_SetMiscRegs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetMiscRegs(%struct.SiS_Private* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.SiS_Private*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  store %struct.SiS_Private* %0, %struct.SiS_Private** %3, align 8
  store i16 %1, i16* %4, align 2
  %6 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %7 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load i16, i16* %4, align 2
  %10 = zext i16 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %5, align 1
  %14 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %15 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %16 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i8, i8* %5, align 1
  %19 = call i32 @SiS_SetRegByte(%struct.SiS_Private* %14, i32 %17, i8 zeroext %18)
  ret void
}

declare dso_local i32 @SiS_SetRegByte(%struct.SiS_Private*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
