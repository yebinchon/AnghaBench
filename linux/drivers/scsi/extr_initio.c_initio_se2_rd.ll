; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_se2_rd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_se2_rd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SE2CS = common dso_local global i32 0, align 4
@SE2CLK = common dso_local global i32 0, align 4
@TUL_NVRAM = common dso_local global i64 0, align 8
@SE2DI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @initio_se2_rd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initio_se2_rd(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = or i32 %9, 128
  store i32 %10, i32* %5, align 4
  %11 = load i64, i64* %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @initio_se2_instr(i64 %11, i32 %12)
  store i32 15, i32* %8, align 4
  br label %14

14:                                               ; preds = %44, %2
  %15 = load i32, i32* %8, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %14
  %18 = load i32, i32* @SE2CS, align 4
  %19 = load i32, i32* @SE2CLK, align 4
  %20 = or i32 %18, %19
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @TUL_NVRAM, align 8
  %23 = add i64 %21, %22
  %24 = call i32 @outb(i32 %20, i64 %23)
  %25 = call i32 @udelay(i32 30)
  %26 = load i32, i32* @SE2CS, align 4
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @TUL_NVRAM, align 8
  %29 = add i64 %27, %28
  %30 = call i32 @outb(i32 %26, i64 %29)
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @TUL_NVRAM, align 8
  %33 = add i64 %31, %32
  %34 = call i32 @inb(i64 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @SE2DI, align 4
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %8, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = call i32 @udelay(i32 30)
  br label %44

44:                                               ; preds = %17
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %8, align 4
  br label %14

47:                                               ; preds = %14
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* @TUL_NVRAM, align 8
  %50 = add i64 %48, %49
  %51 = call i32 @outb(i32 0, i64 %50)
  %52 = call i32 @udelay(i32 30)
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @initio_se2_instr(i64, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
