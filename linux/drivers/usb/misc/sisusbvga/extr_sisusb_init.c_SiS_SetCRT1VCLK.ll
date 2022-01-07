; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_SetCRT1VCLK.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_SetCRT1VCLK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i16, i16 }
%struct.TYPE_3__ = type { i16 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16, i16)* @SiS_SetCRT1VCLK to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetCRT1VCLK(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.SiS_Private*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %10 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %11 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = load i16, i16* %6, align 2
  %14 = zext i16 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i16, i16* %16, align 2
  store i16 %17, i16* %7, align 2
  %18 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %19 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i16, i16* %7, align 2
  %22 = zext i16 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i16, i16* %24, align 2
  store i16 %25, i16* %8, align 2
  %26 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %27 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i16, i16* %7, align 2
  %30 = zext i16 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i16, i16* %32, align 2
  store i16 %33, i16* %9, align 2
  %34 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %35 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %36 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @SiS_SetRegAND(%struct.SiS_Private* %34, i32 %37, i32 49, i32 207)
  %39 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %40 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %41 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i16, i16* %8, align 2
  %44 = zext i16 %43 to i32
  %45 = call i32 @SiS_SetReg(%struct.SiS_Private* %39, i32 %42, i32 43, i32 %44)
  %46 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %47 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %48 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i16, i16* %9, align 2
  %51 = zext i16 %50 to i32
  %52 = call i32 @SiS_SetReg(%struct.SiS_Private* %46, i32 %49, i32 44, i32 %51)
  %53 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %54 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %55 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @SiS_SetReg(%struct.SiS_Private* %53, i32 %56, i32 45, i32 1)
  ret void
}

declare dso_local i32 @SiS_SetRegAND(%struct.SiS_Private*, i32, i32, i32) #1

declare dso_local i32 @SiS_SetReg(%struct.SiS_Private*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
