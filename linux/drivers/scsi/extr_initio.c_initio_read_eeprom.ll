; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i91unvram = common dso_local global i32 0, align 4
@i91unvramp = common dso_local global i32* null, align 8
@TUL_GCTRL = common dso_local global i64 0, align 8
@TUL_GCTRL_EEPROM_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @initio_read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initio_read_eeprom(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32* @i91unvram, i32** @i91unvramp, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @TUL_GCTRL, align 8
  %6 = add i64 %4, %5
  %7 = call i32 @inb(i64 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @TUL_GCTRL_EEPROM_BIT, align 4
  %10 = or i32 %8, %9
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* @TUL_GCTRL, align 8
  %13 = add i64 %11, %12
  %14 = call i32 @outb(i32 %10, i64 %13)
  %15 = load i64, i64* %2, align 8
  %16 = call i32 @initio_se2_rd_all(i64 %15)
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load i64, i64* %2, align 8
  %20 = call i32 @initio_se2_update_all(i64 %19)
  %21 = load i64, i64* %2, align 8
  %22 = call i32 @initio_se2_rd_all(i64 %21)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load i64, i64* %2, align 8
  %25 = load i64, i64* @TUL_GCTRL, align 8
  %26 = add i64 %24, %25
  %27 = call i32 @inb(i64 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @TUL_GCTRL_EEPROM_BIT, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = load i64, i64* %2, align 8
  %33 = load i64, i64* @TUL_GCTRL, align 8
  %34 = add i64 %32, %33
  %35 = call i32 @outb(i32 %31, i64 %34)
  ret void
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @initio_se2_rd_all(i64) #1

declare dso_local i32 @initio_se2_update_all(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
