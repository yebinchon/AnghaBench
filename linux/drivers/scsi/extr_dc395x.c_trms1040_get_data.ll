; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_trms1040_get_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_trms1040_get_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NVR_SELECT = common dso_local global i32 0, align 4
@NVR_CLOCK = common dso_local global i32 0, align 4
@TRM_S1040_GEN_NVRAM = common dso_local global i64 0, align 8
@NVR_BITIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @trms1040_get_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trms1040_get_data(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load i64, i64* %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @trms1040_write_cmd(i64 %8, i32 6, i32 %9)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %45, %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 8
  br i1 %13, label %14, label %48

14:                                               ; preds = %11
  %15 = load i32, i32* @NVR_SELECT, align 4
  %16 = load i32, i32* @NVR_CLOCK, align 4
  %17 = or i32 %15, %16
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @TRM_S1040_GEN_NVRAM, align 8
  %20 = add i64 %18, %19
  %21 = call i32 @outb(i32 %17, i64 %20)
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @trms1040_wait_30us(i64 %22)
  %24 = load i32, i32* @NVR_SELECT, align 4
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @TRM_S1040_GEN_NVRAM, align 8
  %27 = add i64 %25, %26
  %28 = call i32 @outb(i32 %24, i64 %27)
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @TRM_S1040_GEN_NVRAM, align 8
  %31 = add i64 %29, %30
  %32 = call i32 @inb(i64 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = shl i32 %33, 1
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @NVR_BITIN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %14
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %39, %14
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @trms1040_wait_30us(i64 %43)
  br label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %11

48:                                               ; preds = %11
  %49 = load i64, i64* %3, align 8
  %50 = load i64, i64* @TRM_S1040_GEN_NVRAM, align 8
  %51 = add i64 %49, %50
  %52 = call i32 @outb(i32 0, i64 %51)
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @trms1040_write_cmd(i64, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @trms1040_wait_30us(i64) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
