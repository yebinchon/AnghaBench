; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_rom_lock_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_rom_lock_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32 }

@QLA82XX_ROM_LOCK_ID = common dso_local global i32 0, align 4
@ql_log_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Resetting rom_lock, Lock Owner %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qla_hw_data*)* @qla82xx_rom_lock_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla82xx_rom_lock_recovery(%struct.qla_hw_data* %0) #0 {
  %2 = alloca %struct.qla_hw_data*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %2, align 8
  %5 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %6 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32* @pci_get_drvdata(i32 %7)
  store i32* %8, i32** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %10 = call i64 @qla82xx_rom_lock(%struct.qla_hw_data* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %14 = load i32, i32* @QLA82XX_ROM_LOCK_ID, align 4
  %15 = call i32 @qla82xx_rd_32(%struct.qla_hw_data* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @ql_log_info, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @ql_log(i32 %16, i32* %17, i32 45090, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %12, %1
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %22 = call i32 @qla82xx_rom_unlock(%struct.qla_hw_data* %21)
  ret void
}

declare dso_local i32* @pci_get_drvdata(i32) #1

declare dso_local i64 @qla82xx_rom_lock(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_rd_32(%struct.qla_hw_data*, i32) #1

declare dso_local i32 @ql_log(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @qla82xx_rom_unlock(%struct.qla_hw_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
