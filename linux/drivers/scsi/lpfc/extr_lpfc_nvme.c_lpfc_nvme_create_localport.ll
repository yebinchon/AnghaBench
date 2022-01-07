; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_nvme_create_localport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_nvme_create_localport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32 }
%struct.lpfc_vport = type { i32, %struct.nvme_fc_local_port*, %struct.lpfc_hba*, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.nvme_fc_local_port = type { i64, i32 }
%struct.lpfc_hba = type { i64, %struct.TYPE_14__*, %struct.TYPE_13__, i32, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.nvme_fc_port_info = type { i8*, i8*, i32 }
%struct.lpfc_nvme_lport = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.lpfc_vport* }

@FC_PORT_ROLE_NVME_INITIATOR = common dso_local global i32 0, align 4
@lpfc_nvme_template = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@LPFC_FCP_SCHED_BY_HDWQ = common dso_local global i64 0, align 8
@CONFIG_NVME_FC = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_NVME = common dso_local global i32 0, align 4
@LOG_NVME_DISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [91 x i8] c"6005 Successfully registered local NVME port num %d, localP x%px, private x%px, sg_seg %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_nvme_create_localport(%struct.lpfc_vport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.nvme_fc_port_info, align 8
  %7 = alloca %struct.nvme_fc_local_port*, align 8
  %8 = alloca %struct.lpfc_nvme_lport*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %10 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %9, i32 0, i32 2
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  store %struct.lpfc_hba* %11, %struct.lpfc_hba** %5, align 8
  %12 = call i32 @memset(%struct.nvme_fc_port_info* %6, i32 0, i32 24)
  %13 = load i32, i32* @FC_PORT_ROLE_NVME_INITIATOR, align 4
  %14 = getelementptr inbounds %struct.nvme_fc_port_info, %struct.nvme_fc_port_info* %6, i32 0, i32 2
  store i32 %13, i32* %14, align 8
  %15 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %16 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @wwn_to_u64(i32 %19)
  %21 = getelementptr inbounds %struct.nvme_fc_port_info, %struct.nvme_fc_port_info* %6, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %23 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @wwn_to_u64(i32 %26)
  %28 = getelementptr inbounds %struct.nvme_fc_port_info, %struct.nvme_fc_port_info* %6, i32 0, i32 0
  store i8* %27, i8** %28, align 8
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %30 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @lpfc_nvme_template, i32 0, i32 0), align 8
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %34 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @LPFC_FCP_SCHED_BY_HDWQ, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %1
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %40 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @lpfc_nvme_template, i32 0, i32 1), align 8
  br label %47

42:                                               ; preds = %1
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %44 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @lpfc_nvme_template, i32 0, i32 1), align 8
  br label %47

47:                                               ; preds = %42, %38
  %48 = load i32, i32* @CONFIG_NVME_FC, align 4
  %49 = call i32 @IS_ENABLED(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %134

53:                                               ; preds = %47
  %54 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %55 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %54, i32 0, i32 2
  %56 = load %struct.lpfc_hba*, %struct.lpfc_hba** %55, align 8
  %57 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %56, i32 0, i32 1
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = call i32 @nvme_fc_register_localport(%struct.nvme_fc_port_info* %6, %struct.TYPE_15__* @lpfc_nvme_template, i32* %59, %struct.nvme_fc_local_port** %7)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %132, label %63

63:                                               ; preds = %53
  %64 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %65 = load i32, i32* @KERN_INFO, align 4
  %66 = load i32, i32* @LOG_NVME, align 4
  %67 = load i32, i32* @LOG_NVME_DISC, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.nvme_fc_local_port*, %struct.nvme_fc_local_port** %7, align 8
  %70 = getelementptr inbounds %struct.nvme_fc_local_port, %struct.nvme_fc_local_port* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.nvme_fc_local_port*, %struct.nvme_fc_local_port** %7, align 8
  %73 = load %struct.nvme_fc_local_port*, %struct.nvme_fc_local_port** %7, align 8
  %74 = getelementptr inbounds %struct.nvme_fc_local_port, %struct.nvme_fc_local_port* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @lpfc_nvme_template, i32 0, i32 0), align 8
  %77 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %64, i32 %65, i32 %68, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i32 %71, %struct.nvme_fc_local_port* %72, i64 %75, i64 %76)
  %78 = load %struct.nvme_fc_local_port*, %struct.nvme_fc_local_port** %7, align 8
  %79 = getelementptr inbounds %struct.nvme_fc_local_port, %struct.nvme_fc_local_port* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to %struct.lpfc_nvme_lport*
  store %struct.lpfc_nvme_lport* %81, %struct.lpfc_nvme_lport** %8, align 8
  %82 = load %struct.nvme_fc_local_port*, %struct.nvme_fc_local_port** %7, align 8
  %83 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %84 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %83, i32 0, i32 1
  store %struct.nvme_fc_local_port* %82, %struct.nvme_fc_local_port** %84, align 8
  %85 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %86 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %8, align 8
  %87 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %86, i32 0, i32 14
  store %struct.lpfc_vport* %85, %struct.lpfc_vport** %87, align 8
  %88 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %89 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %8, align 8
  %91 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %90, i32 0, i32 13
  %92 = call i32 @atomic_set(i32* %91, i32 0)
  %93 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %8, align 8
  %94 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %93, i32 0, i32 12
  %95 = call i32 @atomic_set(i32* %94, i32 0)
  %96 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %8, align 8
  %97 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %96, i32 0, i32 11
  %98 = call i32 @atomic_set(i32* %97, i32 0)
  %99 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %8, align 8
  %100 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %99, i32 0, i32 10
  %101 = call i32 @atomic_set(i32* %100, i32 0)
  %102 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %8, align 8
  %103 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %102, i32 0, i32 9
  %104 = call i32 @atomic_set(i32* %103, i32 0)
  %105 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %8, align 8
  %106 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %105, i32 0, i32 8
  %107 = call i32 @atomic_set(i32* %106, i32 0)
  %108 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %8, align 8
  %109 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %108, i32 0, i32 7
  %110 = call i32 @atomic_set(i32* %109, i32 0)
  %111 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %8, align 8
  %112 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %111, i32 0, i32 6
  %113 = call i32 @atomic_set(i32* %112, i32 0)
  %114 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %8, align 8
  %115 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %114, i32 0, i32 5
  %116 = call i32 @atomic_set(i32* %115, i32 0)
  %117 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %8, align 8
  %118 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %117, i32 0, i32 4
  %119 = call i32 @atomic_set(i32* %118, i32 0)
  %120 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %8, align 8
  %121 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %120, i32 0, i32 3
  %122 = call i32 @atomic_set(i32* %121, i32 0)
  %123 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %8, align 8
  %124 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %123, i32 0, i32 2
  %125 = call i32 @atomic_set(i32* %124, i32 0)
  %126 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %8, align 8
  %127 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %126, i32 0, i32 1
  %128 = call i32 @atomic_set(i32* %127, i32 0)
  %129 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %8, align 8
  %130 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %129, i32 0, i32 0
  %131 = call i32 @atomic_set(i32* %130, i32 0)
  br label %132

132:                                              ; preds = %63, %53
  %133 = load i32, i32* %4, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %132, %51
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @memset(%struct.nvme_fc_port_info*, i32, i32) #1

declare dso_local i8* @wwn_to_u64(i32) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @nvme_fc_register_localport(%struct.nvme_fc_port_info*, %struct.TYPE_15__*, i32*, %struct.nvme_fc_local_port**) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, %struct.nvme_fc_local_port*, i64, i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
