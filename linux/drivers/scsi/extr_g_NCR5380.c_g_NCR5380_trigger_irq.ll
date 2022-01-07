; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_g_NCR5380.c_g_NCR5380_trigger_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_g_NCR5380.c_g_NCR5380_trigger_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.NCR5380_hostdata = type { i32 }

@TARGET_COMMAND_REG = common dso_local global i32 0, align 4
@STATUS_REG = common dso_local global i32 0, align 4
@PHASE_MASK = common dso_local global i32 0, align 4
@SELECT_ENABLE_REG = common dso_local global i32 0, align 4
@OUTPUT_DATA_REG = common dso_local global i32 0, align 4
@INITIATOR_COMMAND_REG = common dso_local global i32 0, align 4
@ICR_BASE = common dso_local global i32 0, align 4
@ICR_ASSERT_DATA = common dso_local global i32 0, align 4
@ICR_ASSERT_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @g_NCR5380_trigger_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_NCR5380_trigger_irq(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.NCR5380_hostdata*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %4 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %5 = call %struct.NCR5380_hostdata* @shost_priv(%struct.Scsi_Host* %4)
  store %struct.NCR5380_hostdata* %5, %struct.NCR5380_hostdata** %3, align 8
  %6 = load i32, i32* @TARGET_COMMAND_REG, align 4
  %7 = load i32, i32* @STATUS_REG, align 4
  %8 = call i32 @NCR5380_read(i32 %7)
  %9 = load i32, i32* @PHASE_MASK, align 4
  %10 = and i32 %8, %9
  %11 = call i32 @PHASE_SR_TO_TCR(i32 %10)
  %12 = call i32 @NCR5380_write(i32 %6, i32 %11)
  %13 = load i32, i32* @SELECT_ENABLE_REG, align 4
  %14 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %3, align 8
  %15 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @NCR5380_write(i32 %13, i32 %16)
  %18 = load i32, i32* @OUTPUT_DATA_REG, align 4
  %19 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %3, align 8
  %20 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @NCR5380_write(i32 %18, i32 %21)
  %23 = load i32, i32* @INITIATOR_COMMAND_REG, align 4
  %24 = load i32, i32* @ICR_BASE, align 4
  %25 = load i32, i32* @ICR_ASSERT_DATA, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @ICR_ASSERT_SEL, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @NCR5380_write(i32 %23, i32 %28)
  %30 = call i32 @msleep(i32 1)
  %31 = load i32, i32* @INITIATOR_COMMAND_REG, align 4
  %32 = load i32, i32* @ICR_BASE, align 4
  %33 = call i32 @NCR5380_write(i32 %31, i32 %32)
  %34 = load i32, i32* @SELECT_ENABLE_REG, align 4
  %35 = call i32 @NCR5380_write(i32 %34, i32 0)
  %36 = load i32, i32* @TARGET_COMMAND_REG, align 4
  %37 = call i32 @NCR5380_write(i32 %36, i32 0)
  ret void
}

declare dso_local %struct.NCR5380_hostdata* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @NCR5380_write(i32, i32) #1

declare dso_local i32 @PHASE_SR_TO_TCR(i32) #1

declare dso_local i32 @NCR5380_read(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
