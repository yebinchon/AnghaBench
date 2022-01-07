; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_debug_cmd_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_debug_cmd_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }

@CSIO_MB_MAX_REGS = common dso_local global i32 0, align 4
@CIM_PF_MAILBOX_CTRL_A = common dso_local global i32 0, align 4
@CIM_PF_MAILBOX_DATA_A = common dso_local global i32 0, align 4
@MBMSGVALID_F = common dso_local global i32 0, align 4
@MBINTREQ_F = common dso_local global i32 0, align 4
@CSIO_MBOWNER_FW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*)* @csio_mb_debug_cmd_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_mb_debug_cmd_handler(%struct.csio_hw* %0) #0 {
  %2 = alloca %struct.csio_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %2, align 8
  %9 = load i32, i32* @CSIO_MB_MAX_REGS, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %14 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CIM_PF_MAILBOX_CTRL_A, align 4
  %17 = call i64 @PF_REG(i32 %15, i32 %16)
  store i64 %17, i64* %6, align 8
  %18 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %19 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CIM_PF_MAILBOX_DATA_A, align 4
  %22 = call i64 @PF_REG(i32 %20, i32 %21)
  store i64 %22, i64* %7, align 8
  store i32 4, i32* %8, align 4
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %39, %1
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = call i32 @csio_rd_reg64(%struct.csio_hw* %28, i64 %32)
  %34 = call i32 @cpu_to_be64(i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = sdiv i32 %35, 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %12, i64 %37
  store i32 %34, i32* %38, align 4
  br label %39

39:                                               ; preds = %27
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 8
  store i32 %41, i32* %3, align 4
  br label %23

42:                                               ; preds = %23
  %43 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %44 = call i32 @csio_mb_dump_fw_dbg(%struct.csio_hw* %43, i32* %12)
  %45 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %46 = load i32, i32* @MBMSGVALID_F, align 4
  %47 = load i32, i32* @MBINTREQ_F, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @CSIO_MBOWNER_FW, align 4
  %50 = call i32 @MBOWNER_V(i32 %49)
  %51 = or i32 %48, %50
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @csio_wr_reg32(%struct.csio_hw* %45, i32 %51, i64 %52)
  %54 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @csio_rd_reg32(%struct.csio_hw* %54, i64 %55)
  %57 = call i32 (...) @wmb()
  %58 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %58)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @PF_REG(i32, i32) #2

declare dso_local i32 @cpu_to_be64(i32) #2

declare dso_local i32 @csio_rd_reg64(%struct.csio_hw*, i64) #2

declare dso_local i32 @csio_mb_dump_fw_dbg(%struct.csio_hw*, i32*) #2

declare dso_local i32 @csio_wr_reg32(%struct.csio_hw*, i32, i64) #2

declare dso_local i32 @MBOWNER_V(i32) #2

declare dso_local i32 @csio_rd_reg32(%struct.csio_hw*, i64) #2

declare dso_local i32 @wmb(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
