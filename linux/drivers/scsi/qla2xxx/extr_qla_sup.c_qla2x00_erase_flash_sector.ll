; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2x00_erase_flash_sector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2x00_erase_flash_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qla_hw_data*, i32, i32, i32, i32)* @qla2x00_erase_flash_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_erase_flash_sector(%struct.qla_hw_data* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.qla_hw_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %12 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %11, i32 21845, i32 170)
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %14 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %13, i32 10922, i32 85)
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %16 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %15, i32 21845, i32 128)
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %18 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %17, i32 21845, i32 170)
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %20 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %19, i32 10922, i32 85)
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 31
  br i1 %22, label %23, label %32

23:                                               ; preds = %5
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, 19
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %28, %29
  %31 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %27, i32 %30, i32 16)
  br label %38

32:                                               ; preds = %23, %5
  %33 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %34, %35
  %37 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %33, i32 %36, i32 48)
  br label %38

38:                                               ; preds = %32, %26
  %39 = call i32 @udelay(i32 150)
  %40 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @qla2x00_poll_flash(%struct.qla_hw_data* %40, i32 %41, i32 128, i32 %42, i32 %43)
  ret i32 %44
}

declare dso_local i32 @qla2x00_write_flash_byte(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @qla2x00_poll_flash(%struct.qla_hw_data*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
