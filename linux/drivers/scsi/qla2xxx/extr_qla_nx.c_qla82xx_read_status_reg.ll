; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_read_status_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_read_status_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32 }

@QLA82XX_ROMUSB_ROM_INSTR_OPCODE = common dso_local global i32 0, align 4
@M25P_INSTR_RDSR = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Error waiting for rom done.\0A\00", align 1
@QLA82XX_ROMUSB_ROM_RDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qla_hw_data*, i32*)* @qla82xx_read_status_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla82xx_read_status_reg(%struct.qla_hw_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %8 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32* @pci_get_drvdata(i32 %9)
  store i32* %10, i32** %6, align 8
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %12 = load i32, i32* @QLA82XX_ROMUSB_ROM_INSTR_OPCODE, align 4
  %13 = load i32, i32* @M25P_INSTR_RDSR, align 4
  %14 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %11, i32 %12, i32 %13)
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %16 = call i32 @qla82xx_wait_rom_busy(%struct.qla_hw_data* %15)
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %18 = call i64 @qla82xx_wait_rom_done(%struct.qla_hw_data* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @ql_log_warn, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @ql_log(i32 %21, i32* %22, i32 45068, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %29

24:                                               ; preds = %2
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %26 = load i32, i32* @QLA82XX_ROMUSB_ROM_RDATA, align 4
  %27 = call i32 @qla82xx_rd_32(%struct.qla_hw_data* %25, i32 %26)
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %24, %20
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32* @pci_get_drvdata(i32) #1

declare dso_local i32 @qla82xx_wr_32(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i32 @qla82xx_wait_rom_busy(%struct.qla_hw_data*) #1

declare dso_local i64 @qla82xx_wait_rom_done(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_log(i32, i32*, i32, i8*) #1

declare dso_local i32 @qla82xx_rd_32(%struct.qla_hw_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
