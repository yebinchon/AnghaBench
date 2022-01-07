; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_erase_sector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_erase_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32 }

@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ROM Lock failed.\0A\00", align 1
@QLA82XX_ROMUSB_ROM_ADDRESS = common dso_local global i32 0, align 4
@QLA82XX_ROMUSB_ROM_ABYTE_CNT = common dso_local global i32 0, align 4
@QLA82XX_ROMUSB_ROM_INSTR_OPCODE = common dso_local global i32 0, align 4
@M25P_INSTR_SE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Error waiting for rom done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qla_hw_data*, i32)* @qla82xx_erase_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla82xx_erase_sector(%struct.qla_hw_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %9 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32* @pci_get_drvdata(i32 %10)
  store i32* %11, i32** %7, align 8
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %13 = call i32 @ql82xx_rom_lock_d(%struct.qla_hw_data* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @ql_log_warn, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @ql_log(i32 %17, i32* %18, i32 45081, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %49

21:                                               ; preds = %2
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %23 = call i32 @qla82xx_flash_set_write_enable(%struct.qla_hw_data* %22)
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %25 = load i32, i32* @QLA82XX_ROMUSB_ROM_ADDRESS, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %24, i32 %25, i32 %26)
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %29 = load i32, i32* @QLA82XX_ROMUSB_ROM_ABYTE_CNT, align 4
  %30 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %28, i32 %29, i32 3)
  %31 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %32 = load i32, i32* @QLA82XX_ROMUSB_ROM_INSTR_OPCODE, align 4
  %33 = load i32, i32* @M25P_INSTR_SE, align 4
  %34 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %31, i32 %32, i32 %33)
  %35 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %36 = call i64 @qla82xx_wait_rom_done(%struct.qla_hw_data* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %21
  %39 = load i32, i32* @ql_log_warn, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @ql_log(i32 %39, i32* %40, i32 45082, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %45

42:                                               ; preds = %21
  %43 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %44 = call i32 @qla82xx_flash_wait_write_finish(%struct.qla_hw_data* %43)
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %42, %38
  %46 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %47 = call i32 @qla82xx_rom_unlock(%struct.qla_hw_data* %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %16
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32* @pci_get_drvdata(i32) #1

declare dso_local i32 @ql82xx_rom_lock_d(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_log(i32, i32*, i32, i8*) #1

declare dso_local i32 @qla82xx_flash_set_write_enable(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_wr_32(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i64 @qla82xx_wait_rom_done(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_flash_wait_write_finish(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_rom_unlock(%struct.qla_hw_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
