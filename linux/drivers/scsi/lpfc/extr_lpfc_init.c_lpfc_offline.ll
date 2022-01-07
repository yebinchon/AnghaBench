; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_offline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i64, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.Scsi_Host = type { i32* }
%struct.lpfc_vport = type { i32, i64 }

@FC_OFFLINE_MODE = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"0460 Bring Adapter offline\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_offline(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.lpfc_vport**, align 8
  %5 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @FC_OFFLINE_MODE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %138

15:                                               ; preds = %1
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %17 = call i32 @lpfc_stop_port(%struct.lpfc_hba* %16)
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %19 = call i32 @lpfc_nvmet_destroy_targetport(%struct.lpfc_hba* %18)
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call i32 @lpfc_nvme_destroy_localport(%struct.TYPE_2__* %22)
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %25 = call %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba* %24)
  store %struct.lpfc_vport** %25, %struct.lpfc_vport*** %4, align 8
  %26 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %4, align 8
  %27 = icmp ne %struct.lpfc_vport** %26, null
  br i1 %27, label %28, label %55

28:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %51, %28
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %32 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sle i32 %30, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %36, i64 %38
  %40 = load %struct.lpfc_vport*, %struct.lpfc_vport** %39, align 8
  %41 = icmp ne %struct.lpfc_vport* %40, null
  br label %42

42:                                               ; preds = %35, %29
  %43 = phi i1 [ false, %29 ], [ %41, %35 ]
  br i1 %43, label %44, label %54

44:                                               ; preds = %42
  %45 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %45, i64 %47
  %49 = load %struct.lpfc_vport*, %struct.lpfc_vport** %48, align 8
  %50 = call i32 @lpfc_stop_vport_timers(%struct.lpfc_vport* %49)
  br label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %29

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54, %15
  %56 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %57 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %4, align 8
  %58 = call i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba* %56, %struct.lpfc_vport** %57)
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %60 = load i32, i32* @KERN_WARNING, align 4
  %61 = load i32, i32* @LOG_INIT, align 4
  %62 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %59, i32 %60, i32 %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %64 = call i32 @lpfc_sli_hba_down(%struct.lpfc_hba* %63)
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %66 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %65, i32 0, i32 2
  %67 = call i32 @spin_lock_irq(i32* %66)
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %69 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %68, i32 0, i32 3
  store i64 0, i64* %69, align 8
  %70 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %71 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %70, i32 0, i32 2
  %72 = call i32 @spin_unlock_irq(i32* %71)
  %73 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %74 = call %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba* %73)
  store %struct.lpfc_vport** %74, %struct.lpfc_vport*** %4, align 8
  %75 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %4, align 8
  %76 = icmp ne %struct.lpfc_vport** %75, null
  br i1 %76, label %77, label %127

77:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %123, %77
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %81 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp sle i32 %79, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %85, i64 %87
  %89 = load %struct.lpfc_vport*, %struct.lpfc_vport** %88, align 8
  %90 = icmp ne %struct.lpfc_vport* %89, null
  br label %91

91:                                               ; preds = %84, %78
  %92 = phi i1 [ false, %78 ], [ %90, %84 ]
  br i1 %92, label %93, label %126

93:                                               ; preds = %91
  %94 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %4, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %94, i64 %96
  %98 = load %struct.lpfc_vport*, %struct.lpfc_vport** %97, align 8
  %99 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %98)
  store %struct.Scsi_Host* %99, %struct.Scsi_Host** %3, align 8
  %100 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %101 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @spin_lock_irq(i32* %102)
  %104 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %4, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %104, i64 %106
  %108 = load %struct.lpfc_vport*, %struct.lpfc_vport** %107, align 8
  %109 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %108, i32 0, i32 1
  store i64 0, i64* %109, align 8
  %110 = load i32, i32* @FC_OFFLINE_MODE, align 4
  %111 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %4, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %111, i64 %113
  %115 = load %struct.lpfc_vport*, %struct.lpfc_vport** %114, align 8
  %116 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %110
  store i32 %118, i32* %116, align 8
  %119 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %120 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @spin_unlock_irq(i32* %121)
  br label %123

123:                                              ; preds = %93
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %5, align 4
  br label %78

126:                                              ; preds = %91
  br label %127

127:                                              ; preds = %126, %55
  %128 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %129 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %4, align 8
  %130 = call i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba* %128, %struct.lpfc_vport** %129)
  %131 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %132 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %127
  %136 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %137 = call i32 @lpfc_destroy_multixri_pools(%struct.lpfc_hba* %136)
  br label %138

138:                                              ; preds = %14, %135, %127
  ret void
}

declare dso_local i32 @lpfc_stop_port(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_nvmet_destroy_targetport(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_nvme_destroy_localport(%struct.TYPE_2__*) #1

declare dso_local %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_stop_vport_timers(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba*, %struct.lpfc_vport**) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local i32 @lpfc_sli_hba_down(%struct.lpfc_hba*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_destroy_multixri_pools(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
