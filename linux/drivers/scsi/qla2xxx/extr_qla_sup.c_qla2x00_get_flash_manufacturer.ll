; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2x00_get_flash_manufacturer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2x00_get_flash_manufacturer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qla_hw_data*, i32*, i32*)* @qla2x00_get_flash_manufacturer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_get_flash_manufacturer(%struct.qla_hw_data* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %8 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %7, i32 21845, i32 170)
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %10 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %9, i32 10922, i32 85)
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %12 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %11, i32 21845, i32 144)
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %14 = call i32 @qla2x00_read_flash_byte(%struct.qla_hw_data* %13, i32 0)
  %15 = load i32*, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %17 = call i32 @qla2x00_read_flash_byte(%struct.qla_hw_data* %16, i32 1)
  %18 = load i32*, i32** %6, align 8
  store i32 %17, i32* %18, align 4
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %20 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %19, i32 21845, i32 170)
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %22 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %21, i32 10922, i32 85)
  %23 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %24 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %23, i32 21845, i32 240)
  ret void
}

declare dso_local i32 @qla2x00_write_flash_byte(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i32 @qla2x00_read_flash_byte(%struct.qla_hw_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
