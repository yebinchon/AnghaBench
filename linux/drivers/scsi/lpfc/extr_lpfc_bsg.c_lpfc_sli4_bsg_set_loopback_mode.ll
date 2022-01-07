; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_sli4_bsg_set_loopback_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_sli4_bsg_set_loopback_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_14__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.lpfc_mbx_set_link_diag_loopback }
%struct.lpfc_mbx_set_link_diag_loopback = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

@MBX_SUCCESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LPFC_MBOX_SUBSYSTEM_FCOE = common dso_local global i32 0, align 4
@LPFC_MBOX_OPCODE_FCOE_LINK_DIAG_LOOPBACK = common dso_local global i32 0, align 4
@LPFC_SLI4_MBX_EMBED = common dso_local global i32 0, align 4
@lpfc_mbx_set_diag_state_link_num = common dso_local global i32 0, align 4
@lpfc_mbx_set_diag_state_link_type = common dso_local global i32 0, align 4
@LPFC_LNK_FC_TRUNKED = common dso_local global i32 0, align 4
@lpfc_mbx_set_diag_lpbk_type = common dso_local global i32 0, align 4
@LPFC_MBOX_TMO = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"3127 Failed setup loopback mode mailbox command, rc:x%x, status:x%x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@MBX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i32, i32)* @lpfc_sli4_bsg_set_loopback_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_bsg_set_loopback_mode(%struct.lpfc_hba* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.lpfc_mbx_set_link_diag_loopback*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @MBX_SUCCESS, align 4
  store i32 %14, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.TYPE_20__* @mempool_alloc(i32 %17, i32 %18)
  store %struct.TYPE_20__* %19, %struct.TYPE_20__** %8, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %21 = icmp ne %struct.TYPE_20__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %131

25:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %28 = load i32, i32* @LPFC_MBOX_SUBSYSTEM_FCOE, align 4
  %29 = load i32, i32* @LPFC_MBOX_OPCODE_FCOE_LINK_DIAG_LOOPBACK, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @LPFC_SLI4_MBX_EMBED, align 4
  %32 = call i32 @lpfc_sli4_config(%struct.lpfc_hba* %26, %struct.TYPE_20__* %27, i32 %28, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %25
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @mempool_free(%struct.TYPE_20__* %37, i32 %40)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %131

44:                                               ; preds = %25
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  store %struct.lpfc_mbx_set_link_diag_loopback* %49, %struct.lpfc_mbx_set_link_diag_loopback** %11, align 8
  %50 = load i32, i32* @lpfc_mbx_set_diag_state_link_num, align 4
  %51 = load %struct.lpfc_mbx_set_link_diag_loopback*, %struct.lpfc_mbx_set_link_diag_loopback** %11, align 8
  %52 = getelementptr inbounds %struct.lpfc_mbx_set_link_diag_loopback, %struct.lpfc_mbx_set_link_diag_loopback* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @bf_set(i32 %50, i32* %53, i32 %54)
  %56 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %57 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = shl i32 1, %60
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %44
  %65 = load i32, i32* @lpfc_mbx_set_diag_state_link_type, align 4
  %66 = load %struct.lpfc_mbx_set_link_diag_loopback*, %struct.lpfc_mbx_set_link_diag_loopback** %11, align 8
  %67 = getelementptr inbounds %struct.lpfc_mbx_set_link_diag_loopback, %struct.lpfc_mbx_set_link_diag_loopback* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i32, i32* @LPFC_LNK_FC_TRUNKED, align 4
  %70 = call i32 @bf_set(i32 %65, i32* %68, i32 %69)
  br label %82

71:                                               ; preds = %44
  %72 = load i32, i32* @lpfc_mbx_set_diag_state_link_type, align 4
  %73 = load %struct.lpfc_mbx_set_link_diag_loopback*, %struct.lpfc_mbx_set_link_diag_loopback** %11, align 8
  %74 = getelementptr inbounds %struct.lpfc_mbx_set_link_diag_loopback, %struct.lpfc_mbx_set_link_diag_loopback* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %77 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @bf_set(i32 %72, i32* %75, i32 %80)
  br label %82

82:                                               ; preds = %71, %64
  %83 = load i32, i32* @lpfc_mbx_set_diag_lpbk_type, align 4
  %84 = load %struct.lpfc_mbx_set_link_diag_loopback*, %struct.lpfc_mbx_set_link_diag_loopback** %11, align 8
  %85 = getelementptr inbounds %struct.lpfc_mbx_set_link_diag_loopback, %struct.lpfc_mbx_set_link_diag_loopback* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @bf_set(i32 %83, i32* %86, i32 %87)
  %89 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %91 = load i32, i32* @LPFC_MBOX_TMO, align 4
  %92 = call i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba* %89, %struct.TYPE_20__* %90, i32 %91)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @MBX_SUCCESS, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %103, label %96

96:                                               ; preds = %82
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %96, %82
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %105 = load i32, i32* @KERN_WARNING, align 4
  %106 = load i32, i32* @LOG_LIBDFC, align 4
  %107 = load i32, i32* %12, align 4
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %104, i32 %105, i32 %106, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %107, i64 %112)
  %114 = load i32, i32* @ENODEV, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %103, %96
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %118 = icmp ne %struct.TYPE_20__* %117, null
  br i1 %118, label %119, label %129

119:                                              ; preds = %116
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* @MBX_TIMEOUT, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %125 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %126 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @mempool_free(%struct.TYPE_20__* %124, i32 %127)
  br label %129

129:                                              ; preds = %123, %119, %116
  %130 = load i32, i32* %13, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %129, %36, %22
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local %struct.TYPE_20__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_sli4_config(%struct.lpfc_hba*, %struct.TYPE_20__*, i32, i32, i32, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @bf_set(i32, i32*, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
