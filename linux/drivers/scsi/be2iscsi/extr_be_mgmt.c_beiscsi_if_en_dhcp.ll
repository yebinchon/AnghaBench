; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_if_en_dhcp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_if_en_dhcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32 }
%struct.be_cmd_get_def_gateway_resp = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.be_cmd_get_if_info_resp = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.be_cmd_set_dhcp_req = type { i32, i32, i32, i32 }
%struct.be_dma_mem = type { %struct.be_cmd_set_dhcp_req* }

@KERN_WARNING = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"BG_%d : DHCP Already Enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"BG_%d : Failed to Get Gateway Addr\0A\00", align 1
@IP_ACTION_DEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"BG_%d : Failed to clear Gateway Addr Set\0A\00", align 1
@CMD_SUBSYSTEM_ISCSI = common dso_local global i32 0, align 4
@OPCODE_COMMON_ISCSI_NTWK_CONFIG_STATELESS_IP_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_if_en_dhcp(%struct.beiscsi_hba* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.beiscsi_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_cmd_get_def_gateway_resp, align 4
  %7 = alloca %struct.be_cmd_get_if_info_resp*, align 8
  %8 = alloca %struct.be_cmd_set_dhcp_req*, align 8
  %9 = alloca %struct.be_dma_mem, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @beiscsi_if_get_info(%struct.beiscsi_hba* %12, i32 %13, %struct.be_cmd_get_if_info_resp** %7)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %3, align 4
  br label %116

19:                                               ; preds = %2
  %20 = load %struct.be_cmd_get_if_info_resp*, %struct.be_cmd_get_if_info_resp** %7, align 8
  %21 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, %struct.be_cmd_get_if_info_resp* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %26 = load i32, i32* @KERN_WARNING, align 4
  %27 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %28 = call i32 @beiscsi_log(%struct.beiscsi_hba* %25, i32 %26, i32 %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %112

29:                                               ; preds = %19
  %30 = load %struct.be_cmd_get_if_info_resp*, %struct.be_cmd_get_if_info_resp** %7, align 8
  %31 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, %struct.be_cmd_get_if_info_resp* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @beiscsi_if_zero_ip(i32* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %29
  %38 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %39 = load %struct.be_cmd_get_if_info_resp*, %struct.be_cmd_get_if_info_resp** %7, align 8
  %40 = call i32 @beiscsi_if_clr_ip(%struct.beiscsi_hba* %38, %struct.be_cmd_get_if_info_resp* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %112

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %29
  %46 = call i32 @memset(%struct.be_cmd_get_def_gateway_resp* %6, i32 0, i32 4)
  %47 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %48 = load %struct.be_cmd_get_if_info_resp*, %struct.be_cmd_get_if_info_resp** %7, align 8
  %49 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, %struct.be_cmd_get_if_info_resp* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @beiscsi_if_get_gw(%struct.beiscsi_hba* %47, i32 %51, %struct.be_cmd_get_def_gateway_resp* %6)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %45
  %56 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %57 = load i32, i32* @KERN_WARNING, align 4
  %58 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %59 = call i32 @beiscsi_log(%struct.beiscsi_hba* %56, i32 %57, i32 %58, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %112

60:                                               ; preds = %45
  %61 = getelementptr inbounds %struct.be_cmd_get_def_gateway_resp, %struct.be_cmd_get_def_gateway_resp* %6, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32* %62, i32** %10, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = load %struct.be_cmd_get_if_info_resp*, %struct.be_cmd_get_if_info_resp** %7, align 8
  %65 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, %struct.be_cmd_get_if_info_resp* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @beiscsi_if_zero_ip(i32* %63, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %87, label %70

70:                                               ; preds = %60
  %71 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %72 = load i32, i32* @IP_ACTION_DEL, align 4
  %73 = load %struct.be_cmd_get_if_info_resp*, %struct.be_cmd_get_if_info_resp** %7, align 8
  %74 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, %struct.be_cmd_get_if_info_resp* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @beiscsi_if_mod_gw(%struct.beiscsi_hba* %71, i32 %72, i32 %76, i32* %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %70
  %82 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %83 = load i32, i32* @KERN_WARNING, align 4
  %84 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %85 = call i32 @beiscsi_log(%struct.beiscsi_hba* %82, i32 %83, i32 %84, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %112

86:                                               ; preds = %70
  br label %87

87:                                               ; preds = %86, %60
  %88 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %89 = load i32, i32* @CMD_SUBSYSTEM_ISCSI, align 4
  %90 = load i32, i32* @OPCODE_COMMON_ISCSI_NTWK_CONFIG_STATELESS_IP_ADDR, align 4
  %91 = call i32 @beiscsi_prep_nemb_cmd(%struct.beiscsi_hba* %88, %struct.be_dma_mem* %9, i32 %89, i32 %90, i32 16)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %112

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 0
  %97 = load %struct.be_cmd_set_dhcp_req*, %struct.be_cmd_set_dhcp_req** %96, align 8
  store %struct.be_cmd_set_dhcp_req* %97, %struct.be_cmd_set_dhcp_req** %8, align 8
  %98 = load %struct.be_cmd_set_dhcp_req*, %struct.be_cmd_set_dhcp_req** %8, align 8
  %99 = getelementptr inbounds %struct.be_cmd_set_dhcp_req, %struct.be_cmd_set_dhcp_req* %98, i32 0, i32 0
  store i32 1, i32* %99, align 4
  %100 = load %struct.be_cmd_set_dhcp_req*, %struct.be_cmd_set_dhcp_req** %8, align 8
  %101 = getelementptr inbounds %struct.be_cmd_set_dhcp_req, %struct.be_cmd_set_dhcp_req* %100, i32 0, i32 1
  store i32 1, i32* %101, align 4
  %102 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %103 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.be_cmd_set_dhcp_req*, %struct.be_cmd_set_dhcp_req** %8, align 8
  %106 = getelementptr inbounds %struct.be_cmd_set_dhcp_req, %struct.be_cmd_set_dhcp_req* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %5, align 4
  %108 = load %struct.be_cmd_set_dhcp_req*, %struct.be_cmd_set_dhcp_req** %8, align 8
  %109 = getelementptr inbounds %struct.be_cmd_set_dhcp_req, %struct.be_cmd_set_dhcp_req* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %111 = call i32 @beiscsi_exec_nemb_cmd(%struct.beiscsi_hba* %110, %struct.be_dma_mem* %9, i32* null, i32* null, i32 0)
  store i32 %111, i32* %11, align 4
  br label %112

112:                                              ; preds = %95, %94, %81, %55, %43, %24
  %113 = load %struct.be_cmd_get_if_info_resp*, %struct.be_cmd_get_if_info_resp** %7, align 8
  %114 = call i32 @kfree(%struct.be_cmd_get_if_info_resp* %113)
  %115 = load i32, i32* %11, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %112, %17
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @beiscsi_if_get_info(%struct.beiscsi_hba*, i32, %struct.be_cmd_get_if_info_resp**) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @beiscsi_if_zero_ip(i32*, i32) #1

declare dso_local i32 @beiscsi_if_clr_ip(%struct.beiscsi_hba*, %struct.be_cmd_get_if_info_resp*) #1

declare dso_local i32 @memset(%struct.be_cmd_get_def_gateway_resp*, i32, i32) #1

declare dso_local i32 @beiscsi_if_get_gw(%struct.beiscsi_hba*, i32, %struct.be_cmd_get_def_gateway_resp*) #1

declare dso_local i32 @beiscsi_if_mod_gw(%struct.beiscsi_hba*, i32, i32, i32*) #1

declare dso_local i32 @beiscsi_prep_nemb_cmd(%struct.beiscsi_hba*, %struct.be_dma_mem*, i32, i32, i32) #1

declare dso_local i32 @beiscsi_exec_nemb_cmd(%struct.beiscsi_hba*, %struct.be_dma_mem*, i32*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.be_cmd_get_if_info_resp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
