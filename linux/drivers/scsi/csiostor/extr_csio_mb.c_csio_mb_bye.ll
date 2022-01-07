; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_bye.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_bye.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_mb = type { i64 }
%struct.fw_bye_cmd = type { i8*, i8* }

@FW_BYE_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_WRITE_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csio_mb_bye(%struct.csio_hw* %0, %struct.csio_mb* %1, i32 %2, void (%struct.csio_hw*, %struct.csio_mb*)* %3) #0 {
  %5 = alloca %struct.csio_hw*, align 8
  %6 = alloca %struct.csio_mb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (%struct.csio_hw*, %struct.csio_mb*)*, align 8
  %9 = alloca %struct.fw_bye_cmd*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %5, align 8
  store %struct.csio_mb* %1, %struct.csio_mb** %6, align 8
  store i32 %2, i32* %7, align 4
  store void (%struct.csio_hw*, %struct.csio_mb*)* %3, void (%struct.csio_hw*, %struct.csio_mb*)** %8, align 8
  %10 = load %struct.csio_mb*, %struct.csio_mb** %6, align 8
  %11 = getelementptr inbounds %struct.csio_mb, %struct.csio_mb* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.fw_bye_cmd*
  store %struct.fw_bye_cmd* %13, %struct.fw_bye_cmd** %9, align 8
  %14 = load %struct.csio_mb*, %struct.csio_mb** %6, align 8
  %15 = load %struct.fw_bye_cmd*, %struct.fw_bye_cmd** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %18 = load void (%struct.csio_hw*, %struct.csio_mb*)*, void (%struct.csio_hw*, %struct.csio_mb*)** %8, align 8
  %19 = call i32 @CSIO_INIT_MBP(%struct.csio_mb* %14, %struct.fw_bye_cmd* %15, i32 %16, %struct.csio_hw* %17, void (%struct.csio_hw*, %struct.csio_mb*)* %18, i32 1)
  %20 = load i32, i32* @FW_BYE_CMD, align 4
  %21 = call i32 @FW_CMD_OP_V(i32 %20)
  %22 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @FW_CMD_WRITE_F, align 4
  %25 = or i32 %23, %24
  %26 = call i8* @htonl(i32 %25)
  %27 = load %struct.fw_bye_cmd*, %struct.fw_bye_cmd** %9, align 8
  %28 = getelementptr inbounds %struct.fw_bye_cmd, %struct.fw_bye_cmd* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = call i32 @FW_CMD_LEN16_V(i32 1)
  %30 = call i8* @htonl(i32 %29)
  %31 = load %struct.fw_bye_cmd*, %struct.fw_bye_cmd** %9, align 8
  %32 = getelementptr inbounds %struct.fw_bye_cmd, %struct.fw_bye_cmd* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  ret void
}

declare dso_local i32 @CSIO_INIT_MBP(%struct.csio_mb*, %struct.fw_bye_cmd*, i32, %struct.csio_hw*, void (%struct.csio_hw*, %struct.csio_mb*)*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_CMD_LEN16_V(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
