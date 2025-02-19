; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_trms1040_read_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_trms1040_read_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NvRamType = type { i32 }

@TRM_S1040_GEN_CONTROL = common dso_local global i64 0, align 8
@EN_EEPROM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.NvRamType*, i64)* @trms1040_read_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trms1040_read_all(%struct.NvRamType* %0, i64 %1) #0 {
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
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %27, %2
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 128
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i64, i64* %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @trms1040_get_data(i64 %23, i32 %24)
  %26 = load i32*, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %5, align 8
  br label %19

32:                                               ; preds = %19
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @TRM_S1040_GEN_CONTROL, align 8
  %35 = add i64 %33, %34
  %36 = call i32 @inb(i64 %35)
  %37 = load i32, i32* @EN_EEPROM, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* @TRM_S1040_GEN_CONTROL, align 8
  %42 = add i64 %40, %41
  %43 = call i32 @outb(i32 %39, i64 %42)
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @trms1040_get_data(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
