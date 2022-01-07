; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_tmo_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_tmo_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_mb = type { i64 }
%struct.csio_hw = type { i32, %struct.csio_mbm }
%struct.csio_mbm = type { %struct.csio_mb* }
%struct.fw_cmd_hdr = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Mailbox num:%x op:0x%x timed out\0A\00", align 1
@n_tmo = common dso_local global i32 0, align 4
@FW_ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.csio_mb* @csio_mb_tmo_handler(%struct.csio_hw* %0) #0 {
  %2 = alloca %struct.csio_mb*, align 8
  %3 = alloca %struct.csio_hw*, align 8
  %4 = alloca %struct.csio_mbm*, align 8
  %5 = alloca %struct.csio_mb*, align 8
  %6 = alloca %struct.fw_cmd_hdr*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %3, align 8
  %7 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %8 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %7, i32 0, i32 1
  store %struct.csio_mbm* %8, %struct.csio_mbm** %4, align 8
  %9 = load %struct.csio_mbm*, %struct.csio_mbm** %4, align 8
  %10 = getelementptr inbounds %struct.csio_mbm, %struct.csio_mbm* %9, i32 0, i32 0
  %11 = load %struct.csio_mb*, %struct.csio_mb** %10, align 8
  store %struct.csio_mb* %11, %struct.csio_mb** %5, align 8
  %12 = load %struct.csio_mb*, %struct.csio_mb** %5, align 8
  %13 = icmp eq %struct.csio_mb* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @CSIO_DB_ASSERT(i32 0)
  store %struct.csio_mb* null, %struct.csio_mb** %2, align 8
  br label %42

16:                                               ; preds = %1
  %17 = load %struct.csio_mb*, %struct.csio_mb** %5, align 8
  %18 = getelementptr inbounds %struct.csio_mb, %struct.csio_mb* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.fw_cmd_hdr*
  store %struct.fw_cmd_hdr* %20, %struct.fw_cmd_hdr** %6, align 8
  %21 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %22 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %23 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.fw_cmd_hdr*, %struct.fw_cmd_hdr** %6, align 8
  %26 = getelementptr inbounds %struct.fw_cmd_hdr, %struct.fw_cmd_hdr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ntohl(i32 %27)
  %29 = call i32 @FW_CMD_OP_G(i32 %28)
  %30 = call i32 @csio_dbg(%struct.csio_hw* %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %29)
  %31 = load %struct.csio_mbm*, %struct.csio_mbm** %4, align 8
  %32 = getelementptr inbounds %struct.csio_mbm, %struct.csio_mbm* %31, i32 0, i32 0
  store %struct.csio_mb* null, %struct.csio_mb** %32, align 8
  %33 = load %struct.csio_mbm*, %struct.csio_mbm** %4, align 8
  %34 = load i32, i32* @n_tmo, align 4
  %35 = call i32 @CSIO_INC_STATS(%struct.csio_mbm* %33, i32 %34)
  %36 = load i32, i32* @FW_ETIMEDOUT, align 4
  %37 = call i32 @FW_CMD_RETVAL_V(i32 %36)
  %38 = call i32 @htonl(i32 %37)
  %39 = load %struct.fw_cmd_hdr*, %struct.fw_cmd_hdr** %6, align 8
  %40 = getelementptr inbounds %struct.fw_cmd_hdr, %struct.fw_cmd_hdr* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.csio_mb*, %struct.csio_mb** %5, align 8
  store %struct.csio_mb* %41, %struct.csio_mb** %2, align 8
  br label %42

42:                                               ; preds = %16, %14
  %43 = load %struct.csio_mb*, %struct.csio_mb** %2, align 8
  ret %struct.csio_mb* %43
}

declare dso_local i32 @CSIO_DB_ASSERT(i32) #1

declare dso_local i32 @csio_dbg(%struct.csio_hw*, i8*, i32, i32) #1

declare dso_local i32 @FW_CMD_OP_G(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_mbm*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @FW_CMD_RETVAL_V(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
