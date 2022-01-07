; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_advansys_wide_enable_wdtr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_advansys_wide_enable_wdtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASC_MC_WDTR_ABLE = common dso_local global i32 0, align 4
@ASC_MC_SDTR_DONE = common dso_local global i32 0, align 4
@ASC_MC_WDTR_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16)* @advansys_wide_enable_wdtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @advansys_wide_enable_wdtr(i32 %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store i32 %0, i32* %3, align 4
  store i16 %1, i16* %4, align 2
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @ASC_MC_WDTR_ABLE, align 4
  %8 = load i16, i16* %5, align 2
  %9 = call i32 @AdvReadWordLram(i32 %6, i32 %7, i16 zeroext %8)
  %10 = load i16, i16* %5, align 2
  %11 = zext i16 %10 to i32
  %12 = load i16, i16* %4, align 2
  %13 = zext i16 %12 to i32
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %58

17:                                               ; preds = %2
  %18 = load i16, i16* %4, align 2
  %19 = zext i16 %18 to i32
  %20 = load i16, i16* %5, align 2
  %21 = zext i16 %20 to i32
  %22 = or i32 %21, %19
  %23 = trunc i32 %22 to i16
  store i16 %23, i16* %5, align 2
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @ASC_MC_WDTR_ABLE, align 4
  %26 = load i16, i16* %5, align 2
  %27 = call i32 @AdvWriteWordLram(i32 %24, i32 %25, i16 zeroext %26)
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @ASC_MC_SDTR_DONE, align 4
  %30 = load i16, i16* %5, align 2
  %31 = call i32 @AdvReadWordLram(i32 %28, i32 %29, i16 zeroext %30)
  %32 = load i16, i16* %4, align 2
  %33 = zext i16 %32 to i32
  %34 = xor i32 %33, -1
  %35 = load i16, i16* %5, align 2
  %36 = zext i16 %35 to i32
  %37 = and i32 %36, %34
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %5, align 2
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @ASC_MC_SDTR_DONE, align 4
  %41 = load i16, i16* %5, align 2
  %42 = call i32 @AdvWriteWordLram(i32 %39, i32 %40, i16 zeroext %41)
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @ASC_MC_WDTR_DONE, align 4
  %45 = load i16, i16* %5, align 2
  %46 = call i32 @AdvReadWordLram(i32 %43, i32 %44, i16 zeroext %45)
  %47 = load i16, i16* %4, align 2
  %48 = zext i16 %47 to i32
  %49 = xor i32 %48, -1
  %50 = load i16, i16* %5, align 2
  %51 = zext i16 %50 to i32
  %52 = and i32 %51, %49
  %53 = trunc i32 %52 to i16
  store i16 %53, i16* %5, align 2
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @ASC_MC_WDTR_DONE, align 4
  %56 = load i16, i16* %5, align 2
  %57 = call i32 @AdvWriteWordLram(i32 %54, i32 %55, i16 zeroext %56)
  br label %58

58:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @AdvReadWordLram(i32, i32, i16 zeroext) #1

declare dso_local i32 @AdvWriteWordLram(i32, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
