; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_device_reset_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_device_reset_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_vport = type { i32 }
%struct.lpfc_rport_data = type { %struct.lpfc_nodelist* }
%struct.lpfc_nodelist = type { i32, i32 }
%struct.lpfc_scsi_event_header = type { i32, i32, i32, i32, i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@LOG_FCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"0798 Device Reset rdata failure: rdata x%px\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"0721 Device Reset rport failure: rdata x%px\0A\00", align 1
@FC_REG_SCSI_EVENT = common dso_local global i32 0, align 4
@LPFC_EVENT_LUNRESET = common dso_local global i32 0, align 4
@LPFC_NL_VENDOR_ID = common dso_local global i32 0, align 4
@FCP_LUN_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"0713 SCSI layer issued Device Reset (%d, %llu) return x%x\0A\00", align 1
@LPFC_CTX_LUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @lpfc_device_reset_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_device_reset_handler(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_rport_data*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lpfc_scsi_event_header, align 4
  %11 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %15, align 8
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %4, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %20, %struct.lpfc_vport** %5, align 8
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %22 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %27 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %32 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = call %struct.lpfc_rport_data* @lpfc_rport_data_from_scsi_device(%struct.TYPE_2__* %33)
  store %struct.lpfc_rport_data* %34, %struct.lpfc_rport_data** %6, align 8
  %35 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %6, align 8
  %36 = icmp ne %struct.lpfc_rport_data* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %1
  %38 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %6, align 8
  %39 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %38, i32 0, i32 0
  %40 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %39, align 8
  %41 = icmp ne %struct.lpfc_nodelist* %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %37, %1
  %43 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %44 = load i32, i32* @KERN_ERR, align 4
  %45 = load i32, i32* @LOG_FCP, align 4
  %46 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %6, align 8
  %47 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %43, i32 %44, i32 %45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.lpfc_rport_data* %46)
  %48 = load i32, i32* @FAILED, align 4
  store i32 %48, i32* %2, align 4
  br label %123

49:                                               ; preds = %37
  %50 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %6, align 8
  %51 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %50, i32 0, i32 0
  %52 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %51, align 8
  store %struct.lpfc_nodelist* %52, %struct.lpfc_nodelist** %7, align 8
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %54 = call i32 @fc_block_scsi_eh(%struct.scsi_cmnd* %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @SUCCESS, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %2, align 4
  br label %123

63:                                               ; preds = %57, %49
  %64 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %65 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %66 = call i32 @lpfc_chk_tgt_mapped(%struct.lpfc_vport* %64, %struct.scsi_cmnd* %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @FAILED, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %72 = load i32, i32* @KERN_ERR, align 4
  %73 = load i32, i32* @LOG_FCP, align 4
  %74 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %6, align 8
  %75 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %71, i32 %72, i32 %73, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), %struct.lpfc_rport_data* %74)
  %76 = load i32, i32* @FAILED, align 4
  store i32 %76, i32* %2, align 4
  br label %123

77:                                               ; preds = %63
  %78 = load i32, i32* @FC_REG_SCSI_EVENT, align 4
  %79 = getelementptr inbounds %struct.lpfc_scsi_event_header, %struct.lpfc_scsi_event_header* %10, i32 0, i32 4
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* @LPFC_EVENT_LUNRESET, align 4
  %81 = getelementptr inbounds %struct.lpfc_scsi_event_header, %struct.lpfc_scsi_event_header* %10, i32 0, i32 3
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* %9, align 4
  %83 = getelementptr inbounds %struct.lpfc_scsi_event_header, %struct.lpfc_scsi_event_header* %10, i32 0, i32 2
  store i32 %82, i32* %83, align 4
  %84 = getelementptr inbounds %struct.lpfc_scsi_event_header, %struct.lpfc_scsi_event_header* %10, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %87 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %86, i32 0, i32 1
  %88 = call i32 @memcpy(i32 %85, i32* %87, i32 4)
  %89 = getelementptr inbounds %struct.lpfc_scsi_event_header, %struct.lpfc_scsi_event_header* %10, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %92 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %91, i32 0, i32 0
  %93 = call i32 @memcpy(i32 %90, i32* %92, i32 4)
  %94 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %95 = call i32 (...) @fc_get_event_number()
  %96 = bitcast %struct.lpfc_scsi_event_header* %10 to i8*
  %97 = load i32, i32* @LPFC_NL_VENDOR_ID, align 4
  %98 = call i32 @fc_host_post_vendor_event(%struct.Scsi_Host* %94, i32 %95, i32 20, i8* %96, i32 %97)
  %99 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %100 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @FCP_LUN_RESET, align 4
  %104 = call i32 @lpfc_send_taskmgmt(%struct.lpfc_vport* %99, %struct.scsi_cmnd* %100, i32 %101, i32 %102, i32 %103)
  store i32 %104, i32* %11, align 4
  %105 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %106 = load i32, i32* @KERN_ERR, align 4
  %107 = load i32, i32* @LOG_FCP, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %11, align 4
  %111 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %105, i32 %106, i32 %107, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %108, i32 %109, i32 %110)
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @SUCCESS, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %77
  %116 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @LPFC_CTX_LUN, align 4
  %120 = call i32 @lpfc_reset_flush_io_context(%struct.lpfc_vport* %116, i32 %117, i32 %118, i32 %119)
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %115, %77
  %122 = load i32, i32* %11, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %121, %70, %61, %42
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.lpfc_rport_data* @lpfc_rport_data_from_scsi_device(%struct.TYPE_2__*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, ...) #1

declare dso_local i32 @fc_block_scsi_eh(%struct.scsi_cmnd*) #1

declare dso_local i32 @lpfc_chk_tgt_mapped(%struct.lpfc_vport*, %struct.scsi_cmnd*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @fc_host_post_vendor_event(%struct.Scsi_Host*, i32, i32, i8*, i32) #1

declare dso_local i32 @fc_get_event_number(...) #1

declare dso_local i32 @lpfc_send_taskmgmt(%struct.lpfc_vport*, %struct.scsi_cmnd*, i32, i32, i32) #1

declare dso_local i32 @lpfc_reset_flush_io_context(%struct.lpfc_vport*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
