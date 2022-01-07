; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_82xx_do_rom_fast_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_82xx_do_rom_fast_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }

@QLA82XX_ROMUSB_ROM_ADDRESS = common dso_local global i32 0, align 4
@QLA82XX_ROMUSB_ROM_DUMMY_BYTE_CNT = common dso_local global i32 0, align 4
@QLA82XX_ROMUSB_ROM_ABYTE_CNT = common dso_local global i32 0, align 4
@QLA82XX_ROMUSB_ROM_INSTR_OPCODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s: Error waiting for rom done\0A\00", align 1
@DRIVER_NAME = common dso_local global i32 0, align 4
@QLA82XX_ROMUSB_ROM_RDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, i32, i32*)* @qla4_82xx_do_rom_fast_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4_82xx_do_rom_fast_read(%struct.scsi_qla_host* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %9 = load i32, i32* @QLA82XX_ROMUSB_ROM_ADDRESS, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @qla4_82xx_wr_32(%struct.scsi_qla_host* %8, i32 %9, i32 %10)
  %12 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %13 = load i32, i32* @QLA82XX_ROMUSB_ROM_DUMMY_BYTE_CNT, align 4
  %14 = call i32 @qla4_82xx_wr_32(%struct.scsi_qla_host* %12, i32 %13, i32 0)
  %15 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %16 = load i32, i32* @QLA82XX_ROMUSB_ROM_ABYTE_CNT, align 4
  %17 = call i32 @qla4_82xx_wr_32(%struct.scsi_qla_host* %15, i32 %16, i32 3)
  %18 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %19 = load i32, i32* @QLA82XX_ROMUSB_ROM_INSTR_OPCODE, align 4
  %20 = call i32 @qla4_82xx_wr_32(%struct.scsi_qla_host* %18, i32 %19, i32 11)
  %21 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %22 = call i64 @qla4_82xx_wait_rom_done(%struct.scsi_qla_host* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @DRIVER_NAME, align 4
  %26 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 -1, i32* %4, align 4
  br label %39

27:                                               ; preds = %3
  %28 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %29 = load i32, i32* @QLA82XX_ROMUSB_ROM_DUMMY_BYTE_CNT, align 4
  %30 = call i32 @qla4_82xx_wr_32(%struct.scsi_qla_host* %28, i32 %29, i32 0)
  %31 = call i32 @udelay(i32 10)
  %32 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %33 = load i32, i32* @QLA82XX_ROMUSB_ROM_ABYTE_CNT, align 4
  %34 = call i32 @qla4_82xx_wr_32(%struct.scsi_qla_host* %32, i32 %33, i32 0)
  %35 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %36 = load i32, i32* @QLA82XX_ROMUSB_ROM_RDATA, align 4
  %37 = call i32 @qla4_82xx_rd_32(%struct.scsi_qla_host* %35, i32 %36)
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %27, %24
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @qla4_82xx_wr_32(%struct.scsi_qla_host*, i32, i32) #1

declare dso_local i64 @qla4_82xx_wait_rom_done(%struct.scsi_qla_host*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @qla4_82xx_rd_32(%struct.scsi_qla_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
