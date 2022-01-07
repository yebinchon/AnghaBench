; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_if_mod_gw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_if_mod_gw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32 }
%struct.be_cmd_set_def_gateway_req = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.be_dma_mem = type { %struct.be_cmd_set_def_gateway_req* }

@CMD_SUBSYSTEM_ISCSI = common dso_local global i32 0, align 4
@OPCODE_COMMON_ISCSI_NTWK_MODIFY_DEFAULT_GATEWAY = common dso_local global i32 0, align 4
@BEISCSI_IP_TYPE_V6 = common dso_local global i64 0, align 8
@IP_V4_LEN = common dso_local global i32 0, align 4
@IP_V6_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*, i64, i64, i32*)* @beiscsi_if_mod_gw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_if_mod_gw(%struct.beiscsi_hba* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.beiscsi_hba*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.be_cmd_set_def_gateway_req*, align 8
  %11 = alloca %struct.be_dma_mem, align 8
  %12 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %14 = load i32, i32* @CMD_SUBSYSTEM_ISCSI, align 4
  %15 = load i32, i32* @OPCODE_COMMON_ISCSI_NTWK_MODIFY_DEFAULT_GATEWAY, align 4
  %16 = call i32 @beiscsi_prep_nemb_cmd(%struct.beiscsi_hba* %13, %struct.be_dma_mem* %11, i32 %14, i32 %15, i32 24)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %48

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %11, i32 0, i32 0
  %23 = load %struct.be_cmd_set_def_gateway_req*, %struct.be_cmd_set_def_gateway_req** %22, align 8
  store %struct.be_cmd_set_def_gateway_req* %23, %struct.be_cmd_set_def_gateway_req** %10, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.be_cmd_set_def_gateway_req*, %struct.be_cmd_set_def_gateway_req** %10, align 8
  %26 = getelementptr inbounds %struct.be_cmd_set_def_gateway_req, %struct.be_cmd_set_def_gateway_req* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.be_cmd_set_def_gateway_req*, %struct.be_cmd_set_def_gateway_req** %10, align 8
  %29 = getelementptr inbounds %struct.be_cmd_set_def_gateway_req, %struct.be_cmd_set_def_gateway_req* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i64 %27, i64* %30, align 8
  %31 = load %struct.be_cmd_set_def_gateway_req*, %struct.be_cmd_set_def_gateway_req** %10, align 8
  %32 = getelementptr inbounds %struct.be_cmd_set_def_gateway_req, %struct.be_cmd_set_def_gateway_req* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @BEISCSI_IP_TYPE_V6, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %21
  %40 = load i32, i32* @IP_V4_LEN, align 4
  br label %43

41:                                               ; preds = %21
  %42 = load i32, i32* @IP_V6_LEN, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = call i32 @memcpy(i32 %34, i32* %35, i32 %44)
  %46 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %47 = call i32 @beiscsi_exec_nemb_cmd(%struct.beiscsi_hba* %46, %struct.be_dma_mem* %11, i32* null, i32* null, i32 0)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %43, %19
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @beiscsi_prep_nemb_cmd(%struct.beiscsi_hba*, %struct.be_dma_mem*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @beiscsi_exec_nemb_cmd(%struct.beiscsi_hba*, %struct.be_dma_mem*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
