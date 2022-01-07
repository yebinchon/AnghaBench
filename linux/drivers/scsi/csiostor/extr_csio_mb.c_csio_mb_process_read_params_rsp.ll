; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_process_read_params_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_process_read_params_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_mb = type { i64 }
%struct.fw_params_cmd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FW_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csio_mb_process_read_params_rsp(%struct.csio_hw* %0, %struct.csio_mb* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.csio_hw*, align 8
  %7 = alloca %struct.csio_mb*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.fw_params_cmd*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %6, align 8
  store %struct.csio_mb* %1, %struct.csio_mb** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %14 = load %struct.csio_mb*, %struct.csio_mb** %7, align 8
  %15 = getelementptr inbounds %struct.csio_mb, %struct.csio_mb* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.fw_params_cmd*
  store %struct.fw_params_cmd* %17, %struct.fw_params_cmd** %11, align 8
  %18 = load %struct.fw_params_cmd*, %struct.fw_params_cmd** %11, align 8
  %19 = getelementptr inbounds %struct.fw_params_cmd, %struct.fw_params_cmd* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32* %22, i32** %13, align 8
  %23 = load %struct.fw_params_cmd*, %struct.fw_params_cmd** %11, align 8
  %24 = getelementptr inbounds %struct.fw_params_cmd, %struct.fw_params_cmd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ntohl(i32 %25)
  %27 = call i32 @FW_CMD_RETVAL_G(i32 %26)
  %28 = load i32*, i32** %8, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @FW_SUCCESS, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %44, %33
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load i32*, i32** %13, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ntohl(i32 %40)
  %42 = load i32*, i32** %10, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %10, align 8
  store i32 %41, i32* %42, align 4
  br label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %12, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %12, align 4
  %47 = load i32*, i32** %13, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  store i32* %48, i32** %13, align 8
  br label %34

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49, %5
  ret void
}

declare dso_local i32 @FW_CMD_RETVAL_G(i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
