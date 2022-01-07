; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_fcoe_read_portparams_init_mb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_fcoe_read_portparams_init_mb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_mb = type { i32, i64 }
%struct.fw_fcoe_port_cmd_params = type { i32, i32, i32 }
%struct.fw_fcoe_stats_cmd = type { %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@FW_FCOE_STATS_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_READ_F = common dso_local global i32 0, align 4
@CSIO_MAX_MB_SIZE = common dso_local global i32 0, align 4
@FW_FCOE_STATS_CMD_PORT_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csio_fcoe_read_portparams_init_mb(%struct.csio_hw* %0, %struct.csio_mb* %1, i32 %2, %struct.fw_fcoe_port_cmd_params* %3, void (%struct.csio_hw*, %struct.csio_mb*)* %4) #0 {
  %6 = alloca %struct.csio_hw*, align 8
  %7 = alloca %struct.csio_mb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fw_fcoe_port_cmd_params*, align 8
  %10 = alloca void (%struct.csio_hw*, %struct.csio_mb*)*, align 8
  %11 = alloca %struct.fw_fcoe_stats_cmd*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %6, align 8
  store %struct.csio_mb* %1, %struct.csio_mb** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.fw_fcoe_port_cmd_params* %3, %struct.fw_fcoe_port_cmd_params** %9, align 8
  store void (%struct.csio_hw*, %struct.csio_mb*)* %4, void (%struct.csio_hw*, %struct.csio_mb*)** %10, align 8
  %12 = load %struct.csio_mb*, %struct.csio_mb** %7, align 8
  %13 = getelementptr inbounds %struct.csio_mb, %struct.csio_mb* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.fw_fcoe_stats_cmd*
  store %struct.fw_fcoe_stats_cmd* %15, %struct.fw_fcoe_stats_cmd** %11, align 8
  %16 = load %struct.csio_mb*, %struct.csio_mb** %7, align 8
  %17 = load %struct.fw_fcoe_stats_cmd*, %struct.fw_fcoe_stats_cmd** %11, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %20 = load void (%struct.csio_hw*, %struct.csio_mb*)*, void (%struct.csio_hw*, %struct.csio_mb*)** %10, align 8
  %21 = call i32 @CSIO_INIT_MBP(%struct.csio_mb* %16, %struct.fw_fcoe_stats_cmd* %17, i32 %18, %struct.csio_hw* %19, void (%struct.csio_hw*, %struct.csio_mb*)* %20, i32 1)
  %22 = load %struct.csio_mb*, %struct.csio_mb** %7, align 8
  %23 = getelementptr inbounds %struct.csio_mb, %struct.csio_mb* %22, i32 0, i32 0
  store i32 64, i32* %23, align 8
  %24 = load i32, i32* @FW_FCOE_STATS_CMD, align 4
  %25 = call i32 @FW_CMD_OP_V(i32 %24)
  %26 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @FW_CMD_READ_F, align 4
  %29 = or i32 %27, %28
  %30 = call i8* @htonl(i32 %29)
  %31 = load %struct.fw_fcoe_stats_cmd*, %struct.fw_fcoe_stats_cmd** %11, align 8
  %32 = getelementptr inbounds %struct.fw_fcoe_stats_cmd, %struct.fw_fcoe_stats_cmd* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* @CSIO_MAX_MB_SIZE, align 4
  %34 = sdiv i32 %33, 16
  %35 = call i32 @FW_CMD_LEN16_V(i32 %34)
  %36 = call i8* @htonl(i32 %35)
  %37 = load %struct.fw_fcoe_stats_cmd*, %struct.fw_fcoe_stats_cmd** %11, align 8
  %38 = getelementptr inbounds %struct.fw_fcoe_stats_cmd, %struct.fw_fcoe_stats_cmd* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.fw_fcoe_port_cmd_params*, %struct.fw_fcoe_port_cmd_params** %9, align 8
  %40 = getelementptr inbounds %struct.fw_fcoe_port_cmd_params, %struct.fw_fcoe_port_cmd_params* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @FW_FCOE_STATS_CMD_NSTATS(i32 %41)
  %43 = load %struct.fw_fcoe_port_cmd_params*, %struct.fw_fcoe_port_cmd_params** %9, align 8
  %44 = getelementptr inbounds %struct.fw_fcoe_port_cmd_params, %struct.fw_fcoe_port_cmd_params* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @FW_FCOE_STATS_CMD_PORT(i32 %45)
  %47 = or i32 %42, %46
  %48 = load %struct.fw_fcoe_stats_cmd*, %struct.fw_fcoe_stats_cmd** %11, align 8
  %49 = getelementptr inbounds %struct.fw_fcoe_stats_cmd, %struct.fw_fcoe_stats_cmd* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 8
  %52 = load %struct.fw_fcoe_port_cmd_params*, %struct.fw_fcoe_port_cmd_params** %9, align 8
  %53 = getelementptr inbounds %struct.fw_fcoe_port_cmd_params, %struct.fw_fcoe_port_cmd_params* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @FW_FCOE_STATS_CMD_IX(i32 %54)
  %56 = load i32, i32* @FW_FCOE_STATS_CMD_PORT_VALID, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.fw_fcoe_stats_cmd*, %struct.fw_fcoe_stats_cmd** %11, align 8
  %59 = getelementptr inbounds %struct.fw_fcoe_stats_cmd, %struct.fw_fcoe_stats_cmd* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i32 %57, i32* %61, align 4
  ret void
}

declare dso_local i32 @CSIO_INIT_MBP(%struct.csio_mb*, %struct.fw_fcoe_stats_cmd*, i32, %struct.csio_hw*, void (%struct.csio_hw*, %struct.csio_mb*)*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_CMD_LEN16_V(i32) #1

declare dso_local i32 @FW_FCOE_STATS_CMD_NSTATS(i32) #1

declare dso_local i32 @FW_FCOE_STATS_CMD_PORT(i32) #1

declare dso_local i32 @FW_FCOE_STATS_CMD_IX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
