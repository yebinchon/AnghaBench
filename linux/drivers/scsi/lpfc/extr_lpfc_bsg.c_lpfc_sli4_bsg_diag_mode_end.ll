; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_sli4_bsg_diag_mode_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_sli4_bsg_diag_mode_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { %struct.fc_bsg_reply*, %struct.fc_bsg_request* }
%struct.fc_bsg_reply = type { i32, i32 }
%struct.fc_bsg_request = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i64, %struct.TYPE_8__*, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.diag_mode_set = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@lpfc_sli_intf_if_type = common dso_local global i32 0, align 4
@LPFC_SLI_INTF_IF_TYPE_2 = common dso_local global i64 0, align 8
@LS_LOOPBACK_MODE = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"3139 Failed to bring link to diagnostic state, rc:x%x\0A\00", align 1
@LPFC_LINK_DOWN = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"3140 Timeout waiting for link to diagnostic mode_end, timeout:%d ms\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @lpfc_sli4_bsg_diag_mode_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_bsg_diag_mode_end(%struct.bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsg_job*, align 8
  %4 = alloca %struct.fc_bsg_request*, align 8
  %5 = alloca %struct.fc_bsg_reply*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca %struct.lpfc_hba*, align 8
  %9 = alloca %struct.diag_mode_set*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bsg_job* %0, %struct.bsg_job** %3, align 8
  %13 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %14 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %13, i32 0, i32 1
  %15 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %14, align 8
  store %struct.fc_bsg_request* %15, %struct.fc_bsg_request** %4, align 8
  %16 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %17 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %16, i32 0, i32 0
  %18 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %17, align 8
  store %struct.fc_bsg_reply* %18, %struct.fc_bsg_reply** %5, align 8
  %19 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %20 = call %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job* %19)
  store %struct.Scsi_Host* %20, %struct.Scsi_Host** %6, align 8
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %22 = icmp ne %struct.Scsi_Host* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %141

26:                                               ; preds = %1
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %28 = call %struct.lpfc_vport* @shost_priv(%struct.Scsi_Host* %27)
  store %struct.lpfc_vport* %28, %struct.lpfc_vport** %7, align 8
  %29 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %30 = icmp ne %struct.lpfc_vport* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %141

34:                                               ; preds = %26
  %35 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %36 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %35, i32 0, i32 0
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %36, align 8
  store %struct.lpfc_hba* %37, %struct.lpfc_hba** %8, align 8
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %39 = icmp ne %struct.lpfc_hba* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %141

43:                                               ; preds = %34
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %45 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @LPFC_SLI_REV4, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %141

52:                                               ; preds = %43
  %53 = load i32, i32* @lpfc_sli_intf_if_type, align 4
  %54 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %55 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = call i64 @bf_get(i32 %53, i32* %56)
  %58 = load i64, i64* @LPFC_SLI_INTF_IF_TYPE_2, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %141

63:                                               ; preds = %52
  %64 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %65 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %64, i32 0, i32 3
  %66 = call i32 @spin_lock_irq(i32* %65)
  %67 = load i32, i32* @LS_LOOPBACK_MODE, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %70 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %74 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %73, i32 0, i32 3
  %75 = call i32 @spin_unlock_irq(i32* %74)
  %76 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %4, align 8
  %77 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to %struct.diag_mode_set*
  store %struct.diag_mode_set* %81, %struct.diag_mode_set** %9, align 8
  %82 = load %struct.diag_mode_set*, %struct.diag_mode_set** %9, align 8
  %83 = getelementptr inbounds %struct.diag_mode_set, %struct.diag_mode_set* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %84, 100
  store i32 %85, i32* %10, align 4
  %86 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %87 = call i32 @lpfc_sli4_bsg_set_link_diag_state(%struct.lpfc_hba* %86, i32 0)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %63
  %91 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %92 = load i32, i32* @KERN_WARNING, align 4
  %93 = load i32, i32* @LOG_LIBDFC, align 4
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %91, i32 %92, i32 %93, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %94)
  br label %124

96:                                               ; preds = %63
  store i32 0, i32* %12, align 4
  br label %97

97:                                               ; preds = %115, %96
  %98 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %99 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @LPFC_LINK_DOWN, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %97
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp sgt i32 %104, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %110 = load i32, i32* @KERN_INFO, align 4
  %111 = load i32, i32* @LOG_LIBDFC, align 4
  %112 = load i32, i32* %10, align 4
  %113 = mul nsw i32 %112, 10
  %114 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %109, i32 %110, i32 %111, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  br label %117

115:                                              ; preds = %103
  %116 = call i32 @msleep(i32 10)
  br label %97

117:                                              ; preds = %108, %97
  %118 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %119 = call i32 @lpfc_selective_reset(%struct.lpfc_hba* %118)
  store i32 %119, i32* %11, align 4
  %120 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %121 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %120, i32 0, i32 2
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  store i64 0, i64* %123, align 8
  br label %124

124:                                              ; preds = %117, %90
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %127 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %124
  %131 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %132 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %133 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %136 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @bsg_job_done(%struct.bsg_job* %131, i32 %134, i32 %137)
  br label %139

139:                                              ; preds = %130, %124
  %140 = load i32, i32* %11, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %139, %60, %49, %40, %31, %23
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local %struct.lpfc_vport* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i64 @bf_get(i32, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_sli4_bsg_set_link_diag_state(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @lpfc_selective_reset(%struct.lpfc_hba*) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
