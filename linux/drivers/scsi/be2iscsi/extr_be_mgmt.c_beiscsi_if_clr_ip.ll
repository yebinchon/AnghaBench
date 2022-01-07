; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_if_clr_ip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_if_clr_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32 }
%struct.be_cmd_get_if_info_resp = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.be_cmd_set_ip_addr_req = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.be_dma_mem = type { %struct.be_cmd_set_ip_addr_req* }

@CMD_SUBSYSTEM_ISCSI = common dso_local global i32 0, align 4
@OPCODE_COMMON_ISCSI_NTWK_MODIFY_IP_ADDR = common dso_local global i32 0, align 4
@IP_ACTION_DEL = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"BG_%d : failed to clear IP: rc %d status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*, %struct.be_cmd_get_if_info_resp*)* @beiscsi_if_clr_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_if_clr_ip(%struct.beiscsi_hba* %0, %struct.be_cmd_get_if_info_resp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.beiscsi_hba*, align 8
  %5 = alloca %struct.be_cmd_get_if_info_resp*, align 8
  %6 = alloca %struct.be_cmd_set_ip_addr_req*, align 8
  %7 = alloca %struct.be_dma_mem, align 8
  %8 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %4, align 8
  store %struct.be_cmd_get_if_info_resp* %1, %struct.be_cmd_get_if_info_resp** %5, align 8
  %9 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %10 = load i32, i32* @CMD_SUBSYSTEM_ISCSI, align 4
  %11 = load i32, i32* @OPCODE_COMMON_ISCSI_NTWK_MODIFY_IP_ADDR, align 4
  %12 = call i32 @beiscsi_prep_nemb_cmd(%struct.beiscsi_hba* %9, %struct.be_dma_mem* %7, i32 %10, i32 %11, i32 40)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %95

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %7, i32 0, i32 0
  %19 = load %struct.be_cmd_set_ip_addr_req*, %struct.be_cmd_set_ip_addr_req** %18, align 8
  store %struct.be_cmd_set_ip_addr_req* %19, %struct.be_cmd_set_ip_addr_req** %6, align 8
  %20 = load %struct.be_cmd_set_ip_addr_req*, %struct.be_cmd_set_ip_addr_req** %6, align 8
  %21 = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, %struct.be_cmd_set_ip_addr_req* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load i32, i32* @IP_ACTION_DEL, align 4
  %24 = load %struct.be_cmd_set_ip_addr_req*, %struct.be_cmd_set_ip_addr_req** %6, align 8
  %25 = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, %struct.be_cmd_set_ip_addr_req* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  store i32 %23, i32* %27, align 4
  %28 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %29 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.be_cmd_set_ip_addr_req*, %struct.be_cmd_set_ip_addr_req** %6, align 8
  %32 = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, %struct.be_cmd_set_ip_addr_req* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  store i32 %30, i32* %34, align 8
  %35 = load %struct.be_cmd_set_ip_addr_req*, %struct.be_cmd_set_ip_addr_req** %6, align 8
  %36 = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, %struct.be_cmd_set_ip_addr_req* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32 4, i32* %39, align 8
  %40 = load %struct.be_cmd_get_if_info_resp*, %struct.be_cmd_get_if_info_resp** %5, align 8
  %41 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, %struct.be_cmd_get_if_info_resp* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.be_cmd_set_ip_addr_req*, %struct.be_cmd_set_ip_addr_req** %6, align 8
  %45 = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, %struct.be_cmd_set_ip_addr_req* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  store i32 %43, i32* %48, align 4
  %49 = load %struct.be_cmd_set_ip_addr_req*, %struct.be_cmd_set_ip_addr_req** %6, align 8
  %50 = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, %struct.be_cmd_set_ip_addr_req* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.be_cmd_get_if_info_resp*, %struct.be_cmd_get_if_info_resp** %5, align 8
  %56 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, %struct.be_cmd_get_if_info_resp* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @memcpy(i32 %54, i32 %58, i32 4)
  %60 = load %struct.be_cmd_set_ip_addr_req*, %struct.be_cmd_set_ip_addr_req** %6, align 8
  %61 = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, %struct.be_cmd_set_ip_addr_req* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.be_cmd_get_if_info_resp*, %struct.be_cmd_get_if_info_resp** %5, align 8
  %67 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, %struct.be_cmd_get_if_info_resp* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @memcpy(i32 %65, i32 %69, i32 4)
  %71 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %72 = call i32 @beiscsi_exec_nemb_cmd(%struct.beiscsi_hba* %71, %struct.be_dma_mem* %7, i32* null, i32* null, i32 0)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %17
  %76 = load %struct.be_cmd_set_ip_addr_req*, %struct.be_cmd_set_ip_addr_req** %6, align 8
  %77 = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, %struct.be_cmd_set_ip_addr_req* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %75, %17
  %83 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %84 = load i32, i32* @KERN_INFO, align 4
  %85 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.be_cmd_set_ip_addr_req*, %struct.be_cmd_set_ip_addr_req** %6, align 8
  %88 = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, %struct.be_cmd_set_ip_addr_req* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @beiscsi_log(%struct.beiscsi_hba* %83, i32 %84, i32 %85, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %86, i64 %91)
  br label %93

93:                                               ; preds = %82, %75
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %15
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @beiscsi_prep_nemb_cmd(%struct.beiscsi_hba*, %struct.be_dma_mem*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @beiscsi_exec_nemb_cmd(%struct.beiscsi_hba*, %struct.be_dma_mem*, i32*, i32*, i32) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
