; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscGetChipBiosAddress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscGetChipBiosAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASC_IS_PCI = common dso_local global i16 0, align 2
@ASC_IS_EISA = common dso_local global i16 0, align 2
@ASC_BIOS_MIN_ADDR = common dso_local global i16 0, align 2
@ASC_BIOS_BANK_SIZE = common dso_local global i16 0, align 2
@ASC_IS_ISAPNP = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i32, i16)* @AscGetChipBiosAddress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @AscGetChipBiosAddress(i32 %0, i16 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  %8 = load i16, i16* %5, align 2
  %9 = zext i16 %8 to i32
  %10 = load i16, i16* @ASC_IS_PCI, align 2
  %11 = zext i16 %10 to i32
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i16 0, i16* %3, align 2
  br label %64

15:                                               ; preds = %2
  %16 = load i16, i16* %5, align 2
  %17 = zext i16 %16 to i32
  %18 = load i16, i16* @ASC_IS_EISA, align 2
  %19 = zext i16 %18 to i32
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = call zeroext i16 @AscGetEisaChipCfg(i32 %23)
  store i16 %24, i16* %6, align 2
  %25 = load i16, i16* %6, align 2
  %26 = zext i16 %25 to i32
  %27 = and i32 %26, 15
  %28 = trunc i32 %27 to i16
  store i16 %28, i16* %6, align 2
  %29 = load i16, i16* @ASC_BIOS_MIN_ADDR, align 2
  %30 = zext i16 %29 to i32
  %31 = load i16, i16* %6, align 2
  %32 = zext i16 %31 to i32
  %33 = load i16, i16* @ASC_BIOS_BANK_SIZE, align 2
  %34 = zext i16 %33 to i32
  %35 = mul nsw i32 %32, %34
  %36 = add nsw i32 %30, %35
  %37 = trunc i32 %36 to i16
  store i16 %37, i16* %7, align 2
  %38 = load i16, i16* %7, align 2
  store i16 %38, i16* %3, align 2
  br label %64

39:                                               ; preds = %15
  %40 = load i32, i32* %4, align 4
  %41 = call zeroext i16 @AscGetChipCfgLsw(i32 %40)
  store i16 %41, i16* %6, align 2
  %42 = load i16, i16* %5, align 2
  %43 = zext i16 %42 to i32
  %44 = load i16, i16* @ASC_IS_ISAPNP, align 2
  %45 = zext i16 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load i16, i16* %6, align 2
  %49 = zext i16 %48 to i32
  %50 = and i32 %49, 32767
  %51 = trunc i32 %50 to i16
  store i16 %51, i16* %6, align 2
  br label %52

52:                                               ; preds = %47, %39
  %53 = load i16, i16* @ASC_BIOS_MIN_ADDR, align 2
  %54 = zext i16 %53 to i32
  %55 = load i16, i16* %6, align 2
  %56 = zext i16 %55 to i32
  %57 = ashr i32 %56, 12
  %58 = load i16, i16* @ASC_BIOS_BANK_SIZE, align 2
  %59 = zext i16 %58 to i32
  %60 = mul nsw i32 %57, %59
  %61 = add nsw i32 %54, %60
  %62 = trunc i32 %61 to i16
  store i16 %62, i16* %7, align 2
  %63 = load i16, i16* %7, align 2
  store i16 %63, i16* %3, align 2
  br label %64

64:                                               ; preds = %52, %22, %14
  %65 = load i16, i16* %3, align 2
  ret i16 %65
}

declare dso_local zeroext i16 @AscGetEisaChipCfg(i32) #1

declare dso_local zeroext i16 @AscGetChipCfgLsw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
