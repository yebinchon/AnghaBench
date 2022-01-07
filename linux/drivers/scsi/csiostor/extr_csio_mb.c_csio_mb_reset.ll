; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_mb = type { i64 }
%struct.fw_reset_cmd = type { i8*, i8*, i8*, i8* }

@FW_RESET_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_WRITE_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csio_mb_reset(%struct.csio_hw* %0, %struct.csio_mb* %1, i32 %2, i32 %3, i32 %4, void (%struct.csio_hw*, %struct.csio_mb*)* %5) #0 {
  %7 = alloca %struct.csio_hw*, align 8
  %8 = alloca %struct.csio_mb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca void (%struct.csio_hw*, %struct.csio_mb*)*, align 8
  %13 = alloca %struct.fw_reset_cmd*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %7, align 8
  store %struct.csio_mb* %1, %struct.csio_mb** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store void (%struct.csio_hw*, %struct.csio_mb*)* %5, void (%struct.csio_hw*, %struct.csio_mb*)** %12, align 8
  %14 = load %struct.csio_mb*, %struct.csio_mb** %8, align 8
  %15 = getelementptr inbounds %struct.csio_mb, %struct.csio_mb* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.fw_reset_cmd*
  store %struct.fw_reset_cmd* %17, %struct.fw_reset_cmd** %13, align 8
  %18 = load %struct.csio_mb*, %struct.csio_mb** %8, align 8
  %19 = load %struct.fw_reset_cmd*, %struct.fw_reset_cmd** %13, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.csio_hw*, %struct.csio_hw** %7, align 8
  %22 = load void (%struct.csio_hw*, %struct.csio_mb*)*, void (%struct.csio_hw*, %struct.csio_mb*)** %12, align 8
  %23 = call i32 @CSIO_INIT_MBP(%struct.csio_mb* %18, %struct.fw_reset_cmd* %19, i32 %20, %struct.csio_hw* %21, void (%struct.csio_hw*, %struct.csio_mb*)* %22, i32 1)
  %24 = load i32, i32* @FW_RESET_CMD, align 4
  %25 = call i32 @FW_CMD_OP_V(i32 %24)
  %26 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @FW_CMD_WRITE_F, align 4
  %29 = or i32 %27, %28
  %30 = call i8* @htonl(i32 %29)
  %31 = load %struct.fw_reset_cmd*, %struct.fw_reset_cmd** %13, align 8
  %32 = getelementptr inbounds %struct.fw_reset_cmd, %struct.fw_reset_cmd* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  %33 = call i32 @FW_CMD_LEN16_V(i32 2)
  %34 = call i8* @htonl(i32 %33)
  %35 = load %struct.fw_reset_cmd*, %struct.fw_reset_cmd** %13, align 8
  %36 = getelementptr inbounds %struct.fw_reset_cmd, %struct.fw_reset_cmd* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i8* @htonl(i32 %37)
  %39 = load %struct.fw_reset_cmd*, %struct.fw_reset_cmd** %13, align 8
  %40 = getelementptr inbounds %struct.fw_reset_cmd, %struct.fw_reset_cmd* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i8* @htonl(i32 %41)
  %43 = load %struct.fw_reset_cmd*, %struct.fw_reset_cmd** %13, align 8
  %44 = getelementptr inbounds %struct.fw_reset_cmd, %struct.fw_reset_cmd* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  ret void
}

declare dso_local i32 @CSIO_INIT_MBP(%struct.csio_mb*, %struct.fw_reset_cmd*, i32, %struct.csio_hw*, void (%struct.csio_hw*, %struct.csio_mb*)*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_CMD_LEN16_V(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
