; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_hello.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_mb = type { i64 }
%struct.fw_hello_cmd = type { i8*, i8*, i8* }

@FW_HELLO_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_WRITE_F = common dso_local global i32 0, align 4
@CSIO_MASTER_CANT = common dso_local global i32 0, align 4
@CSIO_MASTER_MUST = common dso_local global i32 0, align 4
@FW_HELLO_CMD_MBMASTER_M = common dso_local global i32 0, align 4
@fw_hello_cmd_stage_os = common dso_local global i32 0, align 4
@FW_HELLO_CMD_CLEARINIT_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csio_mb_hello(%struct.csio_hw* %0, %struct.csio_mb* %1, i32 %2, i32 %3, i32 %4, i32 %5, void (%struct.csio_hw*, %struct.csio_mb*)* %6) #0 {
  %8 = alloca %struct.csio_hw*, align 8
  %9 = alloca %struct.csio_mb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca void (%struct.csio_hw*, %struct.csio_mb*)*, align 8
  %15 = alloca %struct.fw_hello_cmd*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %8, align 8
  store %struct.csio_mb* %1, %struct.csio_mb** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store void (%struct.csio_hw*, %struct.csio_mb*)* %6, void (%struct.csio_hw*, %struct.csio_mb*)** %14, align 8
  %16 = load %struct.csio_mb*, %struct.csio_mb** %9, align 8
  %17 = getelementptr inbounds %struct.csio_mb, %struct.csio_mb* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.fw_hello_cmd*
  store %struct.fw_hello_cmd* %19, %struct.fw_hello_cmd** %15, align 8
  %20 = load %struct.csio_mb*, %struct.csio_mb** %9, align 8
  %21 = load %struct.fw_hello_cmd*, %struct.fw_hello_cmd** %15, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.csio_hw*, %struct.csio_hw** %8, align 8
  %24 = load void (%struct.csio_hw*, %struct.csio_mb*)*, void (%struct.csio_hw*, %struct.csio_mb*)** %14, align 8
  %25 = call i32 @CSIO_INIT_MBP(%struct.csio_mb* %20, %struct.fw_hello_cmd* %21, i32 %22, %struct.csio_hw* %23, void (%struct.csio_hw*, %struct.csio_mb*)* %24, i32 1)
  %26 = load i32, i32* @FW_HELLO_CMD, align 4
  %27 = call i32 @FW_CMD_OP_V(i32 %26)
  %28 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @FW_CMD_WRITE_F, align 4
  %31 = or i32 %29, %30
  %32 = call i8* @htonl(i32 %31)
  %33 = load %struct.fw_hello_cmd*, %struct.fw_hello_cmd** %15, align 8
  %34 = getelementptr inbounds %struct.fw_hello_cmd, %struct.fw_hello_cmd* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = call i32 @FW_CMD_LEN16_V(i32 1)
  %36 = call i8* @htonl(i32 %35)
  %37 = load %struct.fw_hello_cmd*, %struct.fw_hello_cmd** %15, align 8
  %38 = getelementptr inbounds %struct.fw_hello_cmd, %struct.fw_hello_cmd* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @CSIO_MASTER_CANT, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @FW_HELLO_CMD_MASTERDIS_V(i32 %42)
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @CSIO_MASTER_MUST, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @FW_HELLO_CMD_MASTERFORCE_V(i32 %47)
  %49 = or i32 %43, %48
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @CSIO_MASTER_MUST, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %7
  %54 = load i32, i32* %11, align 4
  br label %57

55:                                               ; preds = %7
  %56 = load i32, i32* @FW_HELLO_CMD_MBMASTER_M, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = call i32 @FW_HELLO_CMD_MBMASTER_V(i32 %58)
  %60 = or i32 %49, %59
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @FW_HELLO_CMD_MBASYNCNOT_V(i32 %61)
  %63 = or i32 %60, %62
  %64 = load i32, i32* @fw_hello_cmd_stage_os, align 4
  %65 = call i32 @FW_HELLO_CMD_STAGE_V(i32 %64)
  %66 = or i32 %63, %65
  %67 = load i32, i32* @FW_HELLO_CMD_CLEARINIT_F, align 4
  %68 = or i32 %66, %67
  %69 = call i8* @htonl(i32 %68)
  %70 = load %struct.fw_hello_cmd*, %struct.fw_hello_cmd** %15, align 8
  %71 = getelementptr inbounds %struct.fw_hello_cmd, %struct.fw_hello_cmd* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  ret void
}

declare dso_local i32 @CSIO_INIT_MBP(%struct.csio_mb*, %struct.fw_hello_cmd*, i32, %struct.csio_hw*, void (%struct.csio_hw*, %struct.csio_mb*)*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_CMD_LEN16_V(i32) #1

declare dso_local i32 @FW_HELLO_CMD_MASTERDIS_V(i32) #1

declare dso_local i32 @FW_HELLO_CMD_MASTERFORCE_V(i32) #1

declare dso_local i32 @FW_HELLO_CMD_MBMASTER_V(i32) #1

declare dso_local i32 @FW_HELLO_CMD_MBASYNCNOT_V(i32) #1

declare dso_local i32 @FW_HELLO_CMD_STAGE_V(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
