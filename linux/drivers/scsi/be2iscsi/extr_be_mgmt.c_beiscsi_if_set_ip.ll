; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_if_set_ip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_if_set_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32 }
%struct.be_cmd_set_ip_addr_req = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }
%struct.be_dma_mem = type { %struct.be_cmd_set_ip_addr_req* }

@CMD_SUBSYSTEM_ISCSI = common dso_local global i32 0, align 4
@OPCODE_COMMON_ISCSI_NTWK_MODIFY_IP_ADDR = common dso_local global i32 0, align 4
@IP_ACTION_ADD = common dso_local global i32 0, align 4
@BEISCSI_IP_TYPE_V6 = common dso_local global i64 0, align 8
@IP_V4_LEN = common dso_local global i32 0, align 4
@IP_V6_LEN = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"BG_%d : failed to set IP: rc %d status %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*, i32*, i32*, i64)* @beiscsi_if_set_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_if_set_ip(%struct.beiscsi_hba* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.beiscsi_hba*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.be_cmd_set_ip_addr_req*, align 8
  %11 = alloca %struct.be_dma_mem, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %15 = load i32, i32* @CMD_SUBSYSTEM_ISCSI, align 4
  %16 = load i32, i32* @OPCODE_COMMON_ISCSI_NTWK_MODIFY_IP_ADDR, align 4
  %17 = call i32 @beiscsi_prep_nemb_cmd(%struct.beiscsi_hba* %14, %struct.be_dma_mem* %11, i32 %15, i32 %16, i32 48)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %13, align 4
  store i32 %21, i32* %5, align 4
  br label %115

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %11, i32 0, i32 0
  %24 = load %struct.be_cmd_set_ip_addr_req*, %struct.be_cmd_set_ip_addr_req** %23, align 8
  store %struct.be_cmd_set_ip_addr_req* %24, %struct.be_cmd_set_ip_addr_req** %10, align 8
  %25 = load %struct.be_cmd_set_ip_addr_req*, %struct.be_cmd_set_ip_addr_req** %10, align 8
  %26 = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, %struct.be_cmd_set_ip_addr_req* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i32, i32* @IP_ACTION_ADD, align 4
  %29 = load %struct.be_cmd_set_ip_addr_req*, %struct.be_cmd_set_ip_addr_req** %10, align 8
  %30 = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, %struct.be_cmd_set_ip_addr_req* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  store i32 %28, i32* %32, align 4
  %33 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %34 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.be_cmd_set_ip_addr_req*, %struct.be_cmd_set_ip_addr_req** %10, align 8
  %37 = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, %struct.be_cmd_set_ip_addr_req* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  store i32 %35, i32* %39, align 8
  %40 = load %struct.be_cmd_set_ip_addr_req*, %struct.be_cmd_set_ip_addr_req** %10, align 8
  %41 = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, %struct.be_cmd_set_ip_addr_req* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 4, i32* %44, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.be_cmd_set_ip_addr_req*, %struct.be_cmd_set_ip_addr_req** %10, align 8
  %47 = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, %struct.be_cmd_set_ip_addr_req* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  store i64 %45, i64* %50, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @BEISCSI_IP_TYPE_V6, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %22
  %55 = load i32, i32* @IP_V4_LEN, align 4
  br label %58

56:                                               ; preds = %22
  %57 = load i32, i32* @IP_V6_LEN, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  store i32 %59, i32* %12, align 4
  %60 = load %struct.be_cmd_set_ip_addr_req*, %struct.be_cmd_set_ip_addr_req** %10, align 8
  %61 = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, %struct.be_cmd_set_ip_addr_req* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @memcpy(i32 %65, i32* %66, i32 %67)
  %69 = load i32*, i32** %8, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %58
  %72 = load %struct.be_cmd_set_ip_addr_req*, %struct.be_cmd_set_ip_addr_req** %10, align 8
  %73 = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, %struct.be_cmd_set_ip_addr_req* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @memcpy(i32 %77, i32* %78, i32 %79)
  br label %81

81:                                               ; preds = %71, %58
  %82 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %83 = call i32 @beiscsi_exec_nemb_cmd(%struct.beiscsi_hba* %82, %struct.be_dma_mem* %11, i32* null, i32* null, i32 0)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %81
  %87 = load %struct.be_cmd_set_ip_addr_req*, %struct.be_cmd_set_ip_addr_req** %10, align 8
  %88 = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, %struct.be_cmd_set_ip_addr_req* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %113

93:                                               ; preds = %86, %81
  %94 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %95 = load i32, i32* @KERN_ERR, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load %struct.be_cmd_set_ip_addr_req*, %struct.be_cmd_set_ip_addr_req** %10, align 8
  %98 = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, %struct.be_cmd_set_ip_addr_req* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @__beiscsi_log(%struct.beiscsi_hba* %94, i32 %95, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %96, i64 %101)
  %103 = load %struct.be_cmd_set_ip_addr_req*, %struct.be_cmd_set_ip_addr_req** %10, align 8
  %104 = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, %struct.be_cmd_set_ip_addr_req* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %93
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %109, %93
  br label %113

113:                                              ; preds = %112, %86
  %114 = load i32, i32* %13, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %113, %20
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @beiscsi_prep_nemb_cmd(%struct.beiscsi_hba*, %struct.be_dma_mem*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @beiscsi_exec_nemb_cmd(%struct.beiscsi_hba*, %struct.be_dma_mem*, i32*, i32*, i32) #1

declare dso_local i32 @__beiscsi_log(%struct.beiscsi_hba*, i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
