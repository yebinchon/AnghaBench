; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_WriteDAC.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_WriteDAC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i64, i16, i16, i16, i16, i16)* @SiS_WriteDAC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_WriteDAC(%struct.SiS_Private* %0, i64 %1, i16 zeroext %2, i16 zeroext %3, i16 zeroext %4, i16 zeroext %5, i16 zeroext %6) #0 {
  %8 = alloca %struct.SiS_Private*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %8, align 8
  store i64 %1, i64* %9, align 8
  store i16 %2, i16* %10, align 2
  store i16 %3, i16* %11, align 2
  store i16 %4, i16* %12, align 2
  store i16 %5, i16* %13, align 2
  store i16 %6, i16* %14, align 2
  %18 = load i16, i16* %11, align 2
  %19 = zext i16 %18 to i32
  switch i32 %19, label %28 [
    i32 0, label %20
    i32 1, label %24
  ]

20:                                               ; preds = %7
  %21 = load i16, i16* %14, align 2
  store i16 %21, i16* %15, align 2
  %22 = load i16, i16* %12, align 2
  store i16 %22, i16* %16, align 2
  %23 = load i16, i16* %13, align 2
  store i16 %23, i16* %17, align 2
  br label %32

24:                                               ; preds = %7
  %25 = load i16, i16* %12, align 2
  store i16 %25, i16* %15, align 2
  %26 = load i16, i16* %13, align 2
  store i16 %26, i16* %16, align 2
  %27 = load i16, i16* %14, align 2
  store i16 %27, i16* %17, align 2
  br label %32

28:                                               ; preds = %7
  %29 = load i16, i16* %13, align 2
  store i16 %29, i16* %15, align 2
  %30 = load i16, i16* %14, align 2
  store i16 %30, i16* %16, align 2
  %31 = load i16, i16* %12, align 2
  store i16 %31, i16* %17, align 2
  br label %32

32:                                               ; preds = %28, %24, %20
  %33 = load %struct.SiS_Private*, %struct.SiS_Private** %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i16, i16* %15, align 2
  %36 = zext i16 %35 to i32
  %37 = load i16, i16* %10, align 2
  %38 = zext i16 %37 to i32
  %39 = shl i32 %36, %38
  %40 = trunc i32 %39 to i16
  %41 = call i32 @SiS_SetRegByte(%struct.SiS_Private* %33, i64 %34, i16 zeroext %40)
  %42 = load %struct.SiS_Private*, %struct.SiS_Private** %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i16, i16* %16, align 2
  %45 = zext i16 %44 to i32
  %46 = load i16, i16* %10, align 2
  %47 = zext i16 %46 to i32
  %48 = shl i32 %45, %47
  %49 = trunc i32 %48 to i16
  %50 = call i32 @SiS_SetRegByte(%struct.SiS_Private* %42, i64 %43, i16 zeroext %49)
  %51 = load %struct.SiS_Private*, %struct.SiS_Private** %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i16, i16* %17, align 2
  %54 = zext i16 %53 to i32
  %55 = load i16, i16* %10, align 2
  %56 = zext i16 %55 to i32
  %57 = shl i32 %54, %56
  %58 = trunc i32 %57 to i16
  %59 = call i32 @SiS_SetRegByte(%struct.SiS_Private* %51, i64 %52, i16 zeroext %58)
  ret void
}

declare dso_local i32 @SiS_SetRegByte(%struct.SiS_Private*, i64, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
