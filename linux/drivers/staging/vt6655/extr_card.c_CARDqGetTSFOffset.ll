; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_card.c_CARDqGetTSFOffset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_card.c_CARDqGetTSFOffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cwRXBCNTSFOff = common dso_local global i16* null, align 8
@MAX_RATE = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CARDqGetTSFOffset(i8 zeroext %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i16, align 2
  store i8 %0, i8* %4, align 1
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i16*, i16** @cwRXBCNTSFOff, align 8
  %9 = load i8, i8* %4, align 1
  %10 = zext i8 %9 to i32
  %11 = load i8, i8* @MAX_RATE, align 1
  %12 = zext i8 %11 to i32
  %13 = srem i32 %10, %12
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i16, i16* %8, i64 %14
  %16 = load i16, i16* %15, align 2
  store i16 %16, i16* %7, align 2
  %17 = load i16, i16* %7, align 2
  %18 = zext i16 %17 to i64
  %19 = load i64, i64* %6, align 8
  %20 = add nsw i64 %19, %18
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = sub nsw i64 %21, %22
  ret i64 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
