; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_trms1040_write_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_trms1040_write_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NvRamType = type { i32 }

@TRM_S1040_GEN_CONTROL = common dso_local global i64 0, align 8
@EN_EEPROM = common dso_local global i32 0, align 4
@TRM_S1040_GEN_NVRAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.NvRamType*, i64)* @trms1040_write_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trms1040_write_all(%struct.NvRamType* %0, i64 %1) #0 {
  %3 = alloca %struct.NvRamType*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.NvRamType* %0, %struct.NvRamType** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.NvRamType*, %struct.NvRamType** %3, align 8
  %8 = bitcast %struct.NvRamType* %7 to i32*
  store i32* %8, i32** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @TRM_S1040_GEN_CONTROL, align 8
  %11 = add i64 %9, %10
  %12 = call i32 @inb(i64 %11)
  %13 = load i32, i32* @EN_EEPROM, align 4
  %14 = or i32 %12, %13
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @TRM_S1040_GEN_CONTROL, align 8
  %17 = add i64 %15, %16
  %18 = call i32 @outb(i32 %14, i64 %17)
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @trms1040_write_cmd(i64 %19, i32 4, i32 255)
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @TRM_S1040_GEN_NVRAM, align 8
  %23 = add i64 %21, %22
  %24 = call i32 @outb(i32 0, i64 %23)
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @trms1040_wait_30us(i64 %25)
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %36, %2
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 128
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load i64, i64* %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @trms1040_set_data(i64 %31, i32 %32, i32 %34)
  br label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %5, align 8
  br label %27

41:                                               ; preds = %27
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @trms1040_write_cmd(i64 %42, i32 4, i32 0)
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @TRM_S1040_GEN_NVRAM, align 8
  %46 = add i64 %44, %45
  %47 = call i32 @outb(i32 0, i64 %46)
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @trms1040_wait_30us(i64 %48)
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @TRM_S1040_GEN_CONTROL, align 8
  %52 = add i64 %50, %51
  %53 = call i32 @inb(i64 %52)
  %54 = load i32, i32* @EN_EEPROM, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* @TRM_S1040_GEN_CONTROL, align 8
  %59 = add i64 %57, %58
  %60 = call i32 @outb(i32 %56, i64 %59)
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @trms1040_write_cmd(i64, i32, i32) #1

declare dso_local i32 @trms1040_wait_30us(i64) #1

declare dso_local i32 @trms1040_set_data(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
