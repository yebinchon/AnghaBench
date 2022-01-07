; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_write_fcoe_link_cond_init_mb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_write_fcoe_link_cond_init_mb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_lnode = type { i32 }
%struct.csio_mb = type { i64 }
%struct.csio_hw = type opaque
%struct.fw_fcoe_link_cmd = type { i32, i8*, i8*, i8* }
%struct.csio_hw.0 = type opaque

@FW_FCOE_LINK_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_WRITE_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csio_write_fcoe_link_cond_init_mb(%struct.csio_lnode* %0, %struct.csio_mb* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, void (%struct.csio_hw*, %struct.csio_mb*)* %8) #0 {
  %10 = alloca %struct.csio_lnode*, align 8
  %11 = alloca %struct.csio_mb*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca void (%struct.csio_hw*, %struct.csio_mb*)*, align 8
  %19 = alloca %struct.fw_fcoe_link_cmd*, align 8
  store %struct.csio_lnode* %0, %struct.csio_lnode** %10, align 8
  store %struct.csio_mb* %1, %struct.csio_mb** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store void (%struct.csio_hw*, %struct.csio_mb*)* %8, void (%struct.csio_hw*, %struct.csio_mb*)** %18, align 8
  %20 = load %struct.csio_mb*, %struct.csio_mb** %11, align 8
  %21 = getelementptr inbounds %struct.csio_mb, %struct.csio_mb* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.fw_fcoe_link_cmd*
  store %struct.fw_fcoe_link_cmd* %23, %struct.fw_fcoe_link_cmd** %19, align 8
  %24 = load %struct.csio_mb*, %struct.csio_mb** %11, align 8
  %25 = load %struct.fw_fcoe_link_cmd*, %struct.fw_fcoe_link_cmd** %19, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.csio_lnode*, %struct.csio_lnode** %10, align 8
  %28 = load void (%struct.csio_hw*, %struct.csio_mb*)*, void (%struct.csio_hw*, %struct.csio_mb*)** %18, align 8
  %29 = bitcast void (%struct.csio_hw*, %struct.csio_mb*)* %28 to void (%struct.csio_hw.0*, %struct.csio_mb*)*
  %30 = call i32 @CSIO_INIT_MBP(%struct.csio_mb* %24, %struct.fw_fcoe_link_cmd* %25, i32 %26, %struct.csio_lnode* %27, void (%struct.csio_hw.0*, %struct.csio_mb*)* %29, i32 1)
  %31 = load i32, i32* @FW_FCOE_LINK_CMD, align 4
  %32 = call i32 @FW_CMD_OP_V(i32 %31)
  %33 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @FW_CMD_WRITE_F, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @FW_FCOE_LINK_CMD_PORTID(i32 %37)
  %39 = or i32 %36, %38
  %40 = call i8* @htonl(i32 %39)
  %41 = load %struct.fw_fcoe_link_cmd*, %struct.fw_fcoe_link_cmd** %19, align 8
  %42 = getelementptr inbounds %struct.fw_fcoe_link_cmd, %struct.fw_fcoe_link_cmd* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @FW_FCOE_LINK_CMD_SUB_OPCODE(i32 %43)
  %45 = load i32, i32* %17, align 4
  %46 = call i32 @FW_FCOE_LINK_CMD_FCFI(i32 %45)
  %47 = or i32 %44, %46
  %48 = call i8* @htonl(i32 %47)
  %49 = load %struct.fw_fcoe_link_cmd*, %struct.fw_fcoe_link_cmd** %19, align 8
  %50 = getelementptr inbounds %struct.fw_fcoe_link_cmd, %struct.fw_fcoe_link_cmd* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %16, align 4
  %52 = load %struct.fw_fcoe_link_cmd*, %struct.fw_fcoe_link_cmd** %19, align 8
  %53 = getelementptr inbounds %struct.fw_fcoe_link_cmd, %struct.fw_fcoe_link_cmd* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = call i32 @FW_CMD_LEN16_V(i32 2)
  %55 = call i8* @htonl(i32 %54)
  %56 = load %struct.fw_fcoe_link_cmd*, %struct.fw_fcoe_link_cmd** %19, align 8
  %57 = getelementptr inbounds %struct.fw_fcoe_link_cmd, %struct.fw_fcoe_link_cmd* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  ret void
}

declare dso_local i32 @CSIO_INIT_MBP(%struct.csio_mb*, %struct.fw_fcoe_link_cmd*, i32, %struct.csio_lnode*, void (%struct.csio_hw.0*, %struct.csio_mb*)*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_FCOE_LINK_CMD_PORTID(i32) #1

declare dso_local i32 @FW_FCOE_LINK_CMD_SUB_OPCODE(i32) #1

declare dso_local i32 @FW_FCOE_LINK_CMD_FCFI(i32) #1

declare dso_local i32 @FW_CMD_LEN16_V(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
