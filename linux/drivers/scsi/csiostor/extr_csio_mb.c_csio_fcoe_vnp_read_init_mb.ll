; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_fcoe_vnp_read_init_mb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_fcoe_vnp_read_init_mb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_lnode = type { i32 }
%struct.csio_mb = type { i64 }
%struct.csio_hw = type opaque
%struct.fw_fcoe_vnp_cmd = type { i8*, i8*, i8* }
%struct.csio_hw.0 = type opaque

@FW_FCOE_VNP_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_READ_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csio_fcoe_vnp_read_init_mb(%struct.csio_lnode* %0, %struct.csio_mb* %1, i32 %2, i32 %3, i32 %4, void (%struct.csio_hw*, %struct.csio_mb*)* %5) #0 {
  %7 = alloca %struct.csio_lnode*, align 8
  %8 = alloca %struct.csio_mb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca void (%struct.csio_hw*, %struct.csio_mb*)*, align 8
  %13 = alloca %struct.fw_fcoe_vnp_cmd*, align 8
  store %struct.csio_lnode* %0, %struct.csio_lnode** %7, align 8
  store %struct.csio_mb* %1, %struct.csio_mb** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store void (%struct.csio_hw*, %struct.csio_mb*)* %5, void (%struct.csio_hw*, %struct.csio_mb*)** %12, align 8
  %14 = load %struct.csio_mb*, %struct.csio_mb** %8, align 8
  %15 = getelementptr inbounds %struct.csio_mb, %struct.csio_mb* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.fw_fcoe_vnp_cmd*
  store %struct.fw_fcoe_vnp_cmd* %17, %struct.fw_fcoe_vnp_cmd** %13, align 8
  %18 = load %struct.csio_mb*, %struct.csio_mb** %8, align 8
  %19 = load %struct.fw_fcoe_vnp_cmd*, %struct.fw_fcoe_vnp_cmd** %13, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.csio_lnode*, %struct.csio_lnode** %7, align 8
  %22 = load void (%struct.csio_hw*, %struct.csio_mb*)*, void (%struct.csio_hw*, %struct.csio_mb*)** %12, align 8
  %23 = bitcast void (%struct.csio_hw*, %struct.csio_mb*)* %22 to void (%struct.csio_hw.0*, %struct.csio_mb*)*
  %24 = call i32 @CSIO_INIT_MBP(%struct.csio_mb* %18, %struct.fw_fcoe_vnp_cmd* %19, i32 %20, %struct.csio_lnode* %21, void (%struct.csio_hw.0*, %struct.csio_mb*)* %23, i32 1)
  %25 = load i32, i32* @FW_FCOE_VNP_CMD, align 4
  %26 = call i32 @FW_CMD_OP_V(i32 %25)
  %27 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @FW_CMD_READ_F, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @FW_FCOE_VNP_CMD_FCFI(i32 %31)
  %33 = or i32 %30, %32
  %34 = call i8* @htonl(i32 %33)
  %35 = load %struct.fw_fcoe_vnp_cmd*, %struct.fw_fcoe_vnp_cmd** %13, align 8
  %36 = getelementptr inbounds %struct.fw_fcoe_vnp_cmd, %struct.fw_fcoe_vnp_cmd* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = call i32 @FW_CMD_LEN16_V(i32 1)
  %38 = call i8* @htonl(i32 %37)
  %39 = load %struct.fw_fcoe_vnp_cmd*, %struct.fw_fcoe_vnp_cmd** %13, align 8
  %40 = getelementptr inbounds %struct.fw_fcoe_vnp_cmd, %struct.fw_fcoe_vnp_cmd* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @FW_FCOE_VNP_CMD_VNPI(i32 %41)
  %43 = call i8* @htonl(i32 %42)
  %44 = load %struct.fw_fcoe_vnp_cmd*, %struct.fw_fcoe_vnp_cmd** %13, align 8
  %45 = getelementptr inbounds %struct.fw_fcoe_vnp_cmd, %struct.fw_fcoe_vnp_cmd* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  ret void
}

declare dso_local i32 @CSIO_INIT_MBP(%struct.csio_mb*, %struct.fw_fcoe_vnp_cmd*, i32, %struct.csio_lnode*, void (%struct.csio_hw.0*, %struct.csio_mb*)*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_FCOE_VNP_CMD_FCFI(i32) #1

declare dso_local i32 @FW_CMD_LEN16_V(i32) #1

declare dso_local i32 @FW_FCOE_VNP_CMD_VNPI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
