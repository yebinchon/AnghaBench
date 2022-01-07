; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_trms1040_write_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_trms1040_write_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NVR_SELECT = common dso_local global i32 0, align 4
@NVR_BITOUT = common dso_local global i32 0, align 4
@TRM_S1040_GEN_NVRAM = common dso_local global i64 0, align 8
@NVR_CLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32)* @trms1040_write_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trms1040_write_cmd(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %38, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %12, label %43

12:                                               ; preds = %9
  %13 = load i32, i32* @NVR_SELECT, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @NVR_BITOUT, align 4
  %19 = load i32, i32* %8, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %17, %12
  %22 = load i32, i32* %8, align 4
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @TRM_S1040_GEN_NVRAM, align 8
  %25 = add i64 %23, %24
  %26 = call i32 @outb(i32 %22, i64 %25)
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @trms1040_wait_30us(i64 %27)
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @NVR_CLOCK, align 4
  %31 = or i32 %29, %30
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @TRM_S1040_GEN_NVRAM, align 8
  %34 = add i64 %32, %33
  %35 = call i32 @outb(i32 %31, i64 %34)
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @trms1040_wait_30us(i64 %36)
  br label %38

38:                                               ; preds = %21
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %5, align 4
  %42 = shl i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %9

43:                                               ; preds = %9
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %73, %43
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 7
  br i1 %46, label %47, label %78

47:                                               ; preds = %44
  %48 = load i32, i32* @NVR_SELECT, align 4
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, 64
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @NVR_BITOUT, align 4
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i32, i32* %8, align 4
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* @TRM_S1040_GEN_NVRAM, align 8
  %60 = add i64 %58, %59
  %61 = call i32 @outb(i32 %57, i64 %60)
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @trms1040_wait_30us(i64 %62)
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @NVR_CLOCK, align 4
  %66 = or i32 %64, %65
  %67 = load i64, i64* %4, align 8
  %68 = load i64, i64* @TRM_S1040_GEN_NVRAM, align 8
  %69 = add i64 %67, %68
  %70 = call i32 @outb(i32 %66, i64 %69)
  %71 = load i64, i64* %4, align 8
  %72 = call i32 @trms1040_wait_30us(i64 %71)
  br label %73

73:                                               ; preds = %56
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %6, align 4
  %77 = shl i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %44

78:                                               ; preds = %44
  %79 = load i32, i32* @NVR_SELECT, align 4
  %80 = load i64, i64* %4, align 8
  %81 = load i64, i64* @TRM_S1040_GEN_NVRAM, align 8
  %82 = add i64 %80, %81
  %83 = call i32 @outb(i32 %79, i64 %82)
  %84 = load i64, i64* %4, align 8
  %85 = call i32 @trms1040_wait_30us(i64 %84)
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @trms1040_wait_30us(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
