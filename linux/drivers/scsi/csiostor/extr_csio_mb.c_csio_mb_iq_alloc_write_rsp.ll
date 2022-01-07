; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_iq_alloc_write_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_iq_alloc_write_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_mb = type { i64 }
%struct.csio_iq_params = type { i8*, i8*, i8*, i8* }
%struct.fw_iq_cmd = type { i32, i32, i32, i32, i32 }

@FW_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csio_mb_iq_alloc_write_rsp(%struct.csio_hw* %0, %struct.csio_mb* %1, i32* %2, %struct.csio_iq_params* %3) #0 {
  %5 = alloca %struct.csio_hw*, align 8
  %6 = alloca %struct.csio_mb*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.csio_iq_params*, align 8
  %9 = alloca %struct.fw_iq_cmd*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %5, align 8
  store %struct.csio_mb* %1, %struct.csio_mb** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.csio_iq_params* %3, %struct.csio_iq_params** %8, align 8
  %10 = load %struct.csio_mb*, %struct.csio_mb** %6, align 8
  %11 = getelementptr inbounds %struct.csio_mb, %struct.csio_mb* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.fw_iq_cmd*
  store %struct.fw_iq_cmd* %13, %struct.fw_iq_cmd** %9, align 8
  %14 = load %struct.fw_iq_cmd*, %struct.fw_iq_cmd** %9, align 8
  %15 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ntohl(i32 %16)
  %18 = call i32 @FW_CMD_RETVAL_G(i32 %17)
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @FW_SUCCESS, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %49

24:                                               ; preds = %4
  %25 = load %struct.fw_iq_cmd*, %struct.fw_iq_cmd** %9, align 8
  %26 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @ntohs(i32 %27)
  %29 = load %struct.csio_iq_params*, %struct.csio_iq_params** %8, align 8
  %30 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load %struct.fw_iq_cmd*, %struct.fw_iq_cmd** %9, align 8
  %32 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @ntohs(i32 %33)
  %35 = load %struct.csio_iq_params*, %struct.csio_iq_params** %8, align 8
  %36 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load %struct.fw_iq_cmd*, %struct.fw_iq_cmd** %9, align 8
  %38 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @ntohs(i32 %39)
  %41 = load %struct.csio_iq_params*, %struct.csio_iq_params** %8, align 8
  %42 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.fw_iq_cmd*, %struct.fw_iq_cmd** %9, align 8
  %44 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @ntohs(i32 %45)
  %47 = load %struct.csio_iq_params*, %struct.csio_iq_params** %8, align 8
  %48 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  br label %58

49:                                               ; preds = %4
  %50 = load %struct.csio_iq_params*, %struct.csio_iq_params** %8, align 8
  %51 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %50, i32 0, i32 0
  store i8* null, i8** %51, align 8
  %52 = load %struct.csio_iq_params*, %struct.csio_iq_params** %8, align 8
  %53 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %52, i32 0, i32 1
  store i8* null, i8** %53, align 8
  %54 = load %struct.csio_iq_params*, %struct.csio_iq_params** %8, align 8
  %55 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %54, i32 0, i32 2
  store i8* null, i8** %55, align 8
  %56 = load %struct.csio_iq_params*, %struct.csio_iq_params** %8, align 8
  %57 = getelementptr inbounds %struct.csio_iq_params, %struct.csio_iq_params* %56, i32 0, i32 3
  store i8* null, i8** %57, align 8
  br label %58

58:                                               ; preds = %49, %24
  ret void
}

declare dso_local i32 @FW_CMD_RETVAL_G(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i8* @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
