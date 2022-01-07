; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscGetChipVersion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscGetChipVersion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASC_IS_EISA = common dso_local global i16 0, align 2
@ASC_EISA_REV_IOP_MASK = common dso_local global i64 0, align 8
@ASC_CHIP_MIN_VER_EISA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i32, i16)* @AscGetChipVersion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @AscGetChipVersion(i32 %0, i16 zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  %8 = load i16, i16* %5, align 2
  %9 = zext i16 %8 to i32
  %10 = load i16, i16* @ASC_IS_EISA, align 2
  %11 = zext i16 %10 to i32
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @ASC_GET_EISA_SLOT(i32 %15)
  %17 = trunc i64 %16 to i32
  %18 = load i64, i64* @ASC_EISA_REV_IOP_MASK, align 8
  %19 = trunc i64 %18 to i32
  %20 = or i32 %17, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call zeroext i8 @inp(i32 %21)
  store i8 %22, i8* %7, align 1
  %23 = load i32, i32* @ASC_CHIP_MIN_VER_EISA, align 4
  %24 = sub nsw i32 %23, 1
  %25 = load i8, i8* %7, align 1
  %26 = zext i8 %25 to i32
  %27 = add nsw i32 %24, %26
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %3, align 1
  br label %32

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = call zeroext i8 @AscGetChipVerNo(i32 %30)
  store i8 %31, i8* %3, align 1
  br label %32

32:                                               ; preds = %29, %14
  %33 = load i8, i8* %3, align 1
  ret i8 %33
}

declare dso_local i64 @ASC_GET_EISA_SLOT(i32) #1

declare dso_local zeroext i8 @inp(i32) #1

declare dso_local zeroext i8 @AscGetChipVerNo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
