; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3501.c_apci3501_eeprom_readw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3501.c_apci3501_eeprom_readw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NVRAM_USER_DATA_START = common dso_local global i64 0, align 8
@NVCMD_LOAD_LOW = common dso_local global i16 0, align 2
@AMCC_OP_REG_MCSR_NVCMD = common dso_local global i64 0, align 8
@AMCC_OP_REG_MCSR_NVDATA = common dso_local global i64 0, align 8
@NVCMD_LOAD_HIGH = common dso_local global i16 0, align 2
@NVCMD_BEGIN_READ = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i64, i16)* @apci3501_eeprom_readw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @apci3501_eeprom_readw(i64 %0, i16 zeroext %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store i64 %0, i64* %3, align 8
  store i16 %1, i16* %4, align 2
  store i16 0, i16* %5, align 2
  %8 = load i64, i64* @NVRAM_USER_DATA_START, align 8
  %9 = load i16, i16* %4, align 2
  %10 = zext i16 %9 to i64
  %11 = add nsw i64 %10, %8
  %12 = trunc i64 %11 to i16
  store i16 %12, i16* %4, align 2
  store i8 0, i8* %7, align 1
  br label %13

13:                                               ; preds = %91, %2
  %14 = load i8, i8* %7, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %94

17:                                               ; preds = %13
  %18 = load i16, i16* @NVCMD_LOAD_LOW, align 2
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @AMCC_OP_REG_MCSR_NVCMD, align 8
  %21 = add i64 %19, %20
  %22 = call i32 @outb(i16 zeroext %18, i64 %21)
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @apci3501_eeprom_wait(i64 %23)
  %25 = load i16, i16* %4, align 2
  %26 = zext i16 %25 to i32
  %27 = load i8, i8* %7, align 1
  %28 = zext i8 %27 to i32
  %29 = add nsw i32 %26, %28
  %30 = and i32 %29, 255
  %31 = trunc i32 %30 to i16
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* @AMCC_OP_REG_MCSR_NVDATA, align 8
  %34 = add i64 %32, %33
  %35 = call i32 @outb(i16 zeroext %31, i64 %34)
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @apci3501_eeprom_wait(i64 %36)
  %38 = load i16, i16* @NVCMD_LOAD_HIGH, align 2
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* @AMCC_OP_REG_MCSR_NVCMD, align 8
  %41 = add i64 %39, %40
  %42 = call i32 @outb(i16 zeroext %38, i64 %41)
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @apci3501_eeprom_wait(i64 %43)
  %45 = load i16, i16* %4, align 2
  %46 = zext i16 %45 to i32
  %47 = load i8, i8* %7, align 1
  %48 = zext i8 %47 to i32
  %49 = add nsw i32 %46, %48
  %50 = ashr i32 %49, 8
  %51 = and i32 %50, 255
  %52 = trunc i32 %51 to i16
  %53 = load i64, i64* %3, align 8
  %54 = load i64, i64* @AMCC_OP_REG_MCSR_NVDATA, align 8
  %55 = add i64 %53, %54
  %56 = call i32 @outb(i16 zeroext %52, i64 %55)
  %57 = load i64, i64* %3, align 8
  %58 = call i32 @apci3501_eeprom_wait(i64 %57)
  %59 = load i16, i16* @NVCMD_BEGIN_READ, align 2
  %60 = load i64, i64* %3, align 8
  %61 = load i64, i64* @AMCC_OP_REG_MCSR_NVCMD, align 8
  %62 = add i64 %60, %61
  %63 = call i32 @outb(i16 zeroext %59, i64 %62)
  %64 = load i64, i64* %3, align 8
  %65 = call i32 @apci3501_eeprom_wait(i64 %64)
  %66 = load i64, i64* %3, align 8
  %67 = load i64, i64* @AMCC_OP_REG_MCSR_NVDATA, align 8
  %68 = add i64 %66, %67
  %69 = call zeroext i8 @inb(i64 %68)
  store i8 %69, i8* %6, align 1
  %70 = load i64, i64* %3, align 8
  %71 = call i32 @apci3501_eeprom_wait(i64 %70)
  %72 = load i8, i8* %7, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %17
  %76 = load i8, i8* %6, align 1
  %77 = zext i8 %76 to i32
  %78 = load i16, i16* %5, align 2
  %79 = zext i16 %78 to i32
  %80 = or i32 %79, %77
  %81 = trunc i32 %80 to i16
  store i16 %81, i16* %5, align 2
  br label %90

82:                                               ; preds = %17
  %83 = load i8, i8* %6, align 1
  %84 = zext i8 %83 to i32
  %85 = shl i32 %84, 8
  %86 = load i16, i16* %5, align 2
  %87 = zext i16 %86 to i32
  %88 = or i32 %87, %85
  %89 = trunc i32 %88 to i16
  store i16 %89, i16* %5, align 2
  br label %90

90:                                               ; preds = %82, %75
  br label %91

91:                                               ; preds = %90
  %92 = load i8, i8* %7, align 1
  %93 = add i8 %92, 1
  store i8 %93, i8* %7, align 1
  br label %13

94:                                               ; preds = %13
  %95 = load i16, i16* %5, align 2
  ret i16 %95
}

declare dso_local i32 @outb(i16 zeroext, i64) #1

declare dso_local i32 @apci3501_eeprom_wait(i64) #1

declare dso_local zeroext i8 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
