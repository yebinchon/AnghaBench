; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_if_en_static.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_if_en_static.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32 }
%struct.be_cmd_get_if_info_resp = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.be_cmd_rel_dhcp_req = type { i32, i32 }
%struct.be_dma_mem = type { %struct.be_cmd_rel_dhcp_req* }

@CMD_SUBSYSTEM_ISCSI = common dso_local global i32 0, align 4
@OPCODE_COMMON_ISCSI_NTWK_REL_STATELESS_IP_ADDR = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"BG_%d : failed to release existing DHCP: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_if_en_static(%struct.beiscsi_hba* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.beiscsi_hba*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.be_cmd_get_if_info_resp*, align 8
  %11 = alloca %struct.be_cmd_rel_dhcp_req*, align 8
  %12 = alloca %struct.be_dma_mem, align 8
  %13 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @beiscsi_if_get_info(%struct.beiscsi_hba* %14, i32 %15, %struct.be_cmd_get_if_info_resp** %10)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %13, align 4
  store i32 %20, i32* %5, align 4
  br label %86

21:                                               ; preds = %4
  %22 = load %struct.be_cmd_get_if_info_resp*, %struct.be_cmd_get_if_info_resp** %10, align 8
  %23 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, %struct.be_cmd_get_if_info_resp* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %21
  %27 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %28 = load i32, i32* @CMD_SUBSYSTEM_ISCSI, align 4
  %29 = load i32, i32* @OPCODE_COMMON_ISCSI_NTWK_REL_STATELESS_IP_ADDR, align 4
  %30 = call i32 @beiscsi_prep_nemb_cmd(%struct.beiscsi_hba* %27, %struct.be_dma_mem* %12, i32 %28, i32 %29, i32 8)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %82

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 0
  %36 = load %struct.be_cmd_rel_dhcp_req*, %struct.be_cmd_rel_dhcp_req** %35, align 8
  store %struct.be_cmd_rel_dhcp_req* %36, %struct.be_cmd_rel_dhcp_req** %11, align 8
  %37 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %38 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.be_cmd_rel_dhcp_req*, %struct.be_cmd_rel_dhcp_req** %11, align 8
  %41 = getelementptr inbounds %struct.be_cmd_rel_dhcp_req, %struct.be_cmd_rel_dhcp_req* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.be_cmd_rel_dhcp_req*, %struct.be_cmd_rel_dhcp_req** %11, align 8
  %44 = getelementptr inbounds %struct.be_cmd_rel_dhcp_req, %struct.be_cmd_rel_dhcp_req* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %46 = call i32 @beiscsi_exec_nemb_cmd(%struct.beiscsi_hba* %45, %struct.be_dma_mem* %12, i32* null, i32* null, i32 0)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %34
  %50 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %51 = load i32, i32* @KERN_WARNING, align 4
  %52 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @beiscsi_log(%struct.beiscsi_hba* %50, i32 %51, i32 %52, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %82

55:                                               ; preds = %34
  br label %56

56:                                               ; preds = %55, %21
  %57 = load %struct.be_cmd_get_if_info_resp*, %struct.be_cmd_get_if_info_resp** %10, align 8
  %58 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, %struct.be_cmd_get_if_info_resp* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @beiscsi_if_zero_ip(i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %56
  %65 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %66 = load %struct.be_cmd_get_if_info_resp*, %struct.be_cmd_get_if_info_resp** %10, align 8
  %67 = call i32 @beiscsi_if_clr_ip(%struct.beiscsi_hba* %65, %struct.be_cmd_get_if_info_resp* %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %82

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %56
  %73 = load i32*, i32** %8, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @beiscsi_if_set_ip(%struct.beiscsi_hba* %76, i32* %77, i32* %78, i32 %79)
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %75, %72
  br label %82

82:                                               ; preds = %81, %70, %49, %33
  %83 = load %struct.be_cmd_get_if_info_resp*, %struct.be_cmd_get_if_info_resp** %10, align 8
  %84 = call i32 @kfree(%struct.be_cmd_get_if_info_resp* %83)
  %85 = load i32, i32* %13, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %82, %19
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @beiscsi_if_get_info(%struct.beiscsi_hba*, i32, %struct.be_cmd_get_if_info_resp**) #1

declare dso_local i32 @beiscsi_prep_nemb_cmd(%struct.beiscsi_hba*, %struct.be_dma_mem*, i32, i32, i32) #1

declare dso_local i32 @beiscsi_exec_nemb_cmd(%struct.beiscsi_hba*, %struct.be_dma_mem*, i32*, i32*, i32) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i32) #1

declare dso_local i32 @beiscsi_if_zero_ip(i32, i32) #1

declare dso_local i32 @beiscsi_if_clr_ip(%struct.beiscsi_hba*, %struct.be_cmd_get_if_info_resp*) #1

declare dso_local i32 @beiscsi_if_set_ip(%struct.beiscsi_hba*, i32*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.be_cmd_get_if_info_resp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
