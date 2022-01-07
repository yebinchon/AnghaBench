; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_process_hello_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_process_hello_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i8* }
%struct.csio_mb = type { i64 }
%struct.fw_hello_cmd = type { i32, i32, i32 }

@FW_SUCCESS = common dso_local global i32 0, align 4
@FW_HELLO_CMD_INIT_F = common dso_local global i32 0, align 4
@CSIO_DEV_STATE_INIT = common dso_local global i32 0, align 4
@FW_HELLO_CMD_ERR_F = common dso_local global i32 0, align 4
@CSIO_DEV_STATE_ERR = common dso_local global i32 0, align 4
@CSIO_DEV_STATE_UNINIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csio_mb_process_hello_rsp(%struct.csio_hw* %0, %struct.csio_mb* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.csio_hw*, align 8
  %7 = alloca %struct.csio_mb*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.fw_hello_cmd*, align 8
  %12 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %6, align 8
  store %struct.csio_mb* %1, %struct.csio_mb** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load %struct.csio_mb*, %struct.csio_mb** %7, align 8
  %14 = getelementptr inbounds %struct.csio_mb, %struct.csio_mb* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.fw_hello_cmd*
  store %struct.fw_hello_cmd* %16, %struct.fw_hello_cmd** %11, align 8
  %17 = load %struct.fw_hello_cmd*, %struct.fw_hello_cmd** %11, align 8
  %18 = getelementptr inbounds %struct.fw_hello_cmd, %struct.fw_hello_cmd* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @ntohl(i32 %19)
  %21 = call i32 @FW_CMD_RETVAL_G(i8* %20)
  %22 = load i32*, i32** %8, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @FW_SUCCESS, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %62

27:                                               ; preds = %5
  %28 = load %struct.fw_hello_cmd*, %struct.fw_hello_cmd** %11, align 8
  %29 = getelementptr inbounds %struct.fw_hello_cmd, %struct.fw_hello_cmd* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @ntohl(i32 %30)
  %32 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %33 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.fw_hello_cmd*, %struct.fw_hello_cmd** %11, align 8
  %35 = getelementptr inbounds %struct.fw_hello_cmd, %struct.fw_hello_cmd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @ntohl(i32 %36)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @FW_HELLO_CMD_MBMASTER_G(i32 %39)
  %41 = load i32*, i32** %10, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @FW_HELLO_CMD_INIT_F, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %27
  %47 = load i32, i32* @CSIO_DEV_STATE_INIT, align 4
  %48 = load i32*, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  br label %61

49:                                               ; preds = %27
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @FW_HELLO_CMD_ERR_F, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @CSIO_DEV_STATE_ERR, align 4
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  br label %60

57:                                               ; preds = %49
  %58 = load i32, i32* @CSIO_DEV_STATE_UNINIT, align 4
  %59 = load i32*, i32** %9, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %54
  br label %61

61:                                               ; preds = %60, %46
  br label %62

62:                                               ; preds = %61, %5
  ret void
}

declare dso_local i32 @FW_CMD_RETVAL_G(i8*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @FW_HELLO_CMD_MBMASTER_G(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
