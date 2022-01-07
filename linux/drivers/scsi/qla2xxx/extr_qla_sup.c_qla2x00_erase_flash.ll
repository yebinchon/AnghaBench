; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2x00_erase_flash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2x00_erase_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qla_hw_data*, i32, i32)* @qla2x00_erase_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_erase_flash(%struct.qla_hw_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %8 = call i64 @IS_OEM_001(%struct.qla_hw_data* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %12 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %11, i32 2730, i32 170)
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %14 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %13, i32 1365, i32 85)
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %16 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %15, i32 2730, i32 128)
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %18 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %17, i32 2730, i32 170)
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %20 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %19, i32 1365, i32 85)
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %22 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %21, i32 2730, i32 16)
  br label %36

23:                                               ; preds = %3
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %25 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %24, i32 21845, i32 170)
  %26 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %27 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %26, i32 10922, i32 85)
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %29 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %28, i32 21845, i32 128)
  %30 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %31 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %30, i32 21845, i32 170)
  %32 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %33 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %32, i32 10922, i32 85)
  %34 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %35 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %34, i32 21845, i32 16)
  br label %36

36:                                               ; preds = %23, %10
  %37 = call i32 @udelay(i32 150)
  %38 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @qla2x00_poll_flash(%struct.qla_hw_data* %38, i32 0, i32 128, i32 %39, i32 %40)
  ret i32 %41
}

declare dso_local i64 @IS_OEM_001(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2x00_write_flash_byte(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @qla2x00_poll_flash(%struct.qla_hw_data*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
