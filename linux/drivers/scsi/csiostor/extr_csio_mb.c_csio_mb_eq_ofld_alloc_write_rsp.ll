; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_eq_ofld_alloc_write_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_eq_ofld_alloc_write_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_mb = type { i64 }
%struct.csio_eq_params = type { i32, i32 }
%struct.fw_eq_ofld_cmd = type { i32, i32, i32 }

@FW_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csio_mb_eq_ofld_alloc_write_rsp(%struct.csio_hw* %0, %struct.csio_mb* %1, i32* %2, %struct.csio_eq_params* %3) #0 {
  %5 = alloca %struct.csio_hw*, align 8
  %6 = alloca %struct.csio_mb*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.csio_eq_params*, align 8
  %9 = alloca %struct.fw_eq_ofld_cmd*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %5, align 8
  store %struct.csio_mb* %1, %struct.csio_mb** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.csio_eq_params* %3, %struct.csio_eq_params** %8, align 8
  %10 = load %struct.csio_mb*, %struct.csio_mb** %6, align 8
  %11 = getelementptr inbounds %struct.csio_mb, %struct.csio_mb* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.fw_eq_ofld_cmd*
  store %struct.fw_eq_ofld_cmd* %13, %struct.fw_eq_ofld_cmd** %9, align 8
  %14 = load %struct.fw_eq_ofld_cmd*, %struct.fw_eq_ofld_cmd** %9, align 8
  %15 = getelementptr inbounds %struct.fw_eq_ofld_cmd, %struct.fw_eq_ofld_cmd* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ntohl(i32 %16)
  %18 = call i32 @FW_CMD_RETVAL_G(i32 %17)
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @FW_SUCCESS, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %4
  %25 = load %struct.fw_eq_ofld_cmd*, %struct.fw_eq_ofld_cmd** %9, align 8
  %26 = getelementptr inbounds %struct.fw_eq_ofld_cmd, %struct.fw_eq_ofld_cmd* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ntohl(i32 %27)
  %29 = call i32 @FW_EQ_OFLD_CMD_EQID_G(i32 %28)
  %30 = load %struct.csio_eq_params*, %struct.csio_eq_params** %8, align 8
  %31 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.fw_eq_ofld_cmd*, %struct.fw_eq_ofld_cmd** %9, align 8
  %33 = getelementptr inbounds %struct.fw_eq_ofld_cmd, %struct.fw_eq_ofld_cmd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ntohl(i32 %34)
  %36 = call i32 @FW_EQ_OFLD_CMD_PHYSEQID_G(i32 %35)
  %37 = load %struct.csio_eq_params*, %struct.csio_eq_params** %8, align 8
  %38 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %42

39:                                               ; preds = %4
  %40 = load %struct.csio_eq_params*, %struct.csio_eq_params** %8, align 8
  %41 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %24
  ret void
}

declare dso_local i32 @FW_CMD_RETVAL_G(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @FW_EQ_OFLD_CMD_EQID_G(i32) #1

declare dso_local i32 @FW_EQ_OFLD_CMD_PHYSEQID_G(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
