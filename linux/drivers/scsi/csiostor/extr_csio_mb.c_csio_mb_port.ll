; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_mb = type { i64 }
%struct.fw_port_cmd = type { %struct.TYPE_6__, i8*, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i8* }

@FW_PORT_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_EXEC_F = common dso_local global i32 0, align 4
@FW_CMD_READ_F = common dso_local global i32 0, align 4
@FW_CAPS16 = common dso_local global i64 0, align 8
@FW_PORT_ACTION_GET_PORT_INFO = common dso_local global i32 0, align 4
@FW_PORT_ACTION_GET_PORT_INFO32 = common dso_local global i32 0, align 4
@FW_PORT_ACTION_L1_CFG = common dso_local global i32 0, align 4
@FW_PORT_ACTION_L1_CFG32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csio_mb_port(%struct.csio_hw* %0, %struct.csio_mb* %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6, void (%struct.csio_hw*, %struct.csio_mb*)* %7) #0 {
  %9 = alloca %struct.csio_hw*, align 8
  %10 = alloca %struct.csio_mb*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca void (%struct.csio_hw*, %struct.csio_mb*)*, align 8
  %17 = alloca %struct.fw_port_cmd*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %9, align 8
  store %struct.csio_mb* %1, %struct.csio_mb** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  store void (%struct.csio_hw*, %struct.csio_mb*)* %7, void (%struct.csio_hw*, %struct.csio_mb*)** %16, align 8
  %18 = load %struct.csio_mb*, %struct.csio_mb** %10, align 8
  %19 = getelementptr inbounds %struct.csio_mb, %struct.csio_mb* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.fw_port_cmd*
  store %struct.fw_port_cmd* %21, %struct.fw_port_cmd** %17, align 8
  %22 = load %struct.csio_mb*, %struct.csio_mb** %10, align 8
  %23 = load %struct.fw_port_cmd*, %struct.fw_port_cmd** %17, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %26 = load void (%struct.csio_hw*, %struct.csio_mb*)*, void (%struct.csio_hw*, %struct.csio_mb*)** %16, align 8
  %27 = call i32 @CSIO_INIT_MBP(%struct.csio_mb* %22, %struct.fw_port_cmd* %23, i32 %24, %struct.csio_hw* %25, void (%struct.csio_hw*, %struct.csio_mb*)* %26, i32 1)
  %28 = load i32, i32* @FW_PORT_CMD, align 4
  %29 = call i32 @FW_CMD_OP_V(i32 %28)
  %30 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %8
  %35 = load i32, i32* @FW_CMD_EXEC_F, align 4
  br label %38

36:                                               ; preds = %8
  %37 = load i32, i32* @FW_CMD_READ_F, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = or i32 %31, %39
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @FW_PORT_CMD_PORTID_V(i32 %41)
  %43 = or i32 %40, %42
  %44 = call i8* @htonl(i32 %43)
  %45 = load %struct.fw_port_cmd*, %struct.fw_port_cmd** %17, align 8
  %46 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %65, label %49

49:                                               ; preds = %38
  %50 = load i64, i64* %15, align 8
  %51 = load i64, i64* @FW_CAPS16, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @FW_PORT_ACTION_GET_PORT_INFO, align 4
  br label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @FW_PORT_ACTION_GET_PORT_INFO32, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = call i32 @FW_PORT_CMD_ACTION_V(i32 %58)
  %60 = call i32 @FW_CMD_LEN16_V(i32 2)
  %61 = or i32 %59, %60
  %62 = call i8* @htonl(i32 %61)
  %63 = load %struct.fw_port_cmd*, %struct.fw_port_cmd** %17, align 8
  %64 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  br label %99

65:                                               ; preds = %38
  %66 = load i64, i64* %15, align 8
  %67 = load i64, i64* @FW_CAPS16, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @FW_PORT_ACTION_L1_CFG, align 4
  br label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @FW_PORT_ACTION_L1_CFG32, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = call i32 @FW_PORT_CMD_ACTION_V(i32 %74)
  %76 = call i32 @FW_CMD_LEN16_V(i32 2)
  %77 = or i32 %75, %76
  %78 = call i8* @htonl(i32 %77)
  %79 = load %struct.fw_port_cmd*, %struct.fw_port_cmd** %17, align 8
  %80 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load i64, i64* %15, align 8
  %82 = load i64, i64* @FW_CAPS16, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %73
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @fwcaps32_to_caps16(i32 %85)
  %87 = call i8* @cpu_to_be32(i32 %86)
  %88 = load %struct.fw_port_cmd*, %struct.fw_port_cmd** %17, align 8
  %89 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store i8* %87, i8** %91, align 8
  br label %99

92:                                               ; preds = %73
  %93 = load i32, i32* %14, align 4
  %94 = call i8* @cpu_to_be32(i32 %93)
  %95 = load %struct.fw_port_cmd*, %struct.fw_port_cmd** %17, align 8
  %96 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  store i8* %94, i8** %98, align 8
  br label %99

99:                                               ; preds = %57, %92, %84
  ret void
}

declare dso_local i32 @CSIO_INIT_MBP(%struct.csio_mb*, %struct.fw_port_cmd*, i32, %struct.csio_hw*, void (%struct.csio_hw*, %struct.csio_mb*)*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_PORT_CMD_PORTID_V(i32) #1

declare dso_local i32 @FW_PORT_CMD_ACTION_V(i32) #1

declare dso_local i32 @FW_CMD_LEN16_V(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @fwcaps32_to_caps16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
