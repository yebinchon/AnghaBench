; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_trms1040_set_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_trms1040_set_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NVR_SELECT = common dso_local global i32 0, align 4
@NVR_BITOUT = common dso_local global i32 0, align 4
@TRM_S1040_GEN_NVRAM = common dso_local global i64 0, align 8
@NVR_CLOCK = common dso_local global i32 0, align 4
@NVR_BITIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32)* @trms1040_set_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trms1040_set_data(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @trms1040_write_cmd(i64 %9, i32 5, i32 %10)
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %41, %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 8
  br i1 %14, label %15, label %46

15:                                               ; preds = %12
  %16 = load i32, i32* @NVR_SELECT, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 128
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @NVR_BITOUT, align 4
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %20, %15
  %25 = load i32, i32* %8, align 4
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @TRM_S1040_GEN_NVRAM, align 8
  %28 = add i64 %26, %27
  %29 = call i32 @outb(i32 %25, i64 %28)
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @trms1040_wait_30us(i64 %30)
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @NVR_CLOCK, align 4
  %34 = or i32 %32, %33
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @TRM_S1040_GEN_NVRAM, align 8
  %37 = add i64 %35, %36
  %38 = call i32 @outb(i32 %34, i64 %37)
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @trms1040_wait_30us(i64 %39)
  br label %41

41:                                               ; preds = %24
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = shl i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %12

46:                                               ; preds = %12
  %47 = load i32, i32* @NVR_SELECT, align 4
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @TRM_S1040_GEN_NVRAM, align 8
  %50 = add i64 %48, %49
  %51 = call i32 @outb(i32 %47, i64 %50)
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @trms1040_wait_30us(i64 %52)
  %54 = load i64, i64* %4, align 8
  %55 = load i64, i64* @TRM_S1040_GEN_NVRAM, align 8
  %56 = add i64 %54, %55
  %57 = call i32 @outb(i32 0, i64 %56)
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @trms1040_wait_30us(i64 %58)
  %60 = load i32, i32* @NVR_SELECT, align 4
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* @TRM_S1040_GEN_NVRAM, align 8
  %63 = add i64 %61, %62
  %64 = call i32 @outb(i32 %60, i64 %63)
  %65 = load i64, i64* %4, align 8
  %66 = call i32 @trms1040_wait_30us(i64 %65)
  br label %67

67:                                               ; preds = %46, %92
  %68 = load i32, i32* @NVR_SELECT, align 4
  %69 = load i32, i32* @NVR_CLOCK, align 4
  %70 = or i32 %68, %69
  %71 = load i64, i64* %4, align 8
  %72 = load i64, i64* @TRM_S1040_GEN_NVRAM, align 8
  %73 = add i64 %71, %72
  %74 = call i32 @outb(i32 %70, i64 %73)
  %75 = load i64, i64* %4, align 8
  %76 = call i32 @trms1040_wait_30us(i64 %75)
  %77 = load i32, i32* @NVR_SELECT, align 4
  %78 = load i64, i64* %4, align 8
  %79 = load i64, i64* @TRM_S1040_GEN_NVRAM, align 8
  %80 = add i64 %78, %79
  %81 = call i32 @outb(i32 %77, i64 %80)
  %82 = load i64, i64* %4, align 8
  %83 = call i32 @trms1040_wait_30us(i64 %82)
  %84 = load i64, i64* %4, align 8
  %85 = load i64, i64* @TRM_S1040_GEN_NVRAM, align 8
  %86 = add i64 %84, %85
  %87 = call i32 @inb(i64 %86)
  %88 = load i32, i32* @NVR_BITIN, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %67
  br label %93

92:                                               ; preds = %67
  br label %67

93:                                               ; preds = %91
  %94 = load i64, i64* %4, align 8
  %95 = load i64, i64* @TRM_S1040_GEN_NVRAM, align 8
  %96 = add i64 %94, %95
  %97 = call i32 @outb(i32 0, i64 %96)
  ret void
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
