; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i64, i32 }
%struct.lpfc_io_buf = type { %struct.lpfc_rport_data*, i64, %struct.scsi_cmnd* }
%struct.lpfc_rport_data = type { %struct.lpfc_nodelist* }
%struct.lpfc_nodelist = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.scsi_cmnd = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32, i64 }
%struct.lpfc_vport = type { i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@LPFC_NO_BUCKET = common dso_local global i64 0, align 8
@LPFC_LINEAR_BUCKET = common dso_local global i64 0, align 8
@LPFC_MAX_BUCKET_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_io_buf*)* @lpfc_update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_update_stats(%struct.lpfc_hba* %0, %struct.lpfc_io_buf* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_io_buf*, align 8
  %5 = alloca %struct.lpfc_rport_data*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca %struct.lpfc_vport*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_io_buf* %1, %struct.lpfc_io_buf** %4, align 8
  %13 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %4, align 8
  %14 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %13, i32 0, i32 2
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  store %struct.scsi_cmnd* %15, %struct.scsi_cmnd** %7, align 8
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %17 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %19, align 8
  store %struct.Scsi_Host* %20, %struct.Scsi_Host** %9, align 8
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %22 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %24, %struct.lpfc_vport** %10, align 8
  %25 = load %struct.lpfc_vport*, %struct.lpfc_vport** %10, align 8
  %26 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %2
  %30 = load %struct.lpfc_vport*, %struct.lpfc_vport** %10, align 8
  %31 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %29, %2
  br label %154

40:                                               ; preds = %34
  %41 = load i64, i64* @jiffies, align 8
  %42 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %4, align 8
  %43 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  %46 = call i64 @jiffies_to_msecs(i64 %45)
  store i64 %46, i64* %11, align 8
  %47 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %4, align 8
  %48 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %47, i32 0, i32 0
  %49 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %48, align 8
  store %struct.lpfc_rport_data* %49, %struct.lpfc_rport_data** %5, align 8
  %50 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %5, align 8
  %51 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %50, i32 0, i32 0
  %52 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %51, align 8
  store %struct.lpfc_nodelist* %52, %struct.lpfc_nodelist** %6, align 8
  %53 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %54 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @spin_lock_irqsave(i32 %55, i64 %56)
  %58 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %59 = icmp ne %struct.lpfc_nodelist* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %40
  %61 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %62 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = icmp ne %struct.TYPE_4__* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %67 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @LPFC_NO_BUCKET, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %65, %60, %40
  %72 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %73 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32 %74, i64 %75)
  br label %154

77:                                               ; preds = %65
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %79 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @LPFC_LINEAR_BUCKET, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %112

83:                                               ; preds = %77
  %84 = load i64, i64* %11, align 8
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %86 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %84, %87
  %89 = sub i64 %88, 1
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %91 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = sub i64 %89, %93
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %96 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = udiv i64 %94, %97
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %83
  store i32 0, i32* %12, align 4
  br label %111

103:                                              ; preds = %83
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @LPFC_MAX_BUCKET_COUNT, align 4
  %106 = icmp sge i32 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32, i32* @LPFC_MAX_BUCKET_COUNT, align 4
  %109 = sub nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  br label %110

110:                                              ; preds = %107, %103
  br label %111

111:                                              ; preds = %110, %102
  br label %139

112:                                              ; preds = %77
  store i32 0, i32* %12, align 4
  br label %113

113:                                              ; preds = %135, %112
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* @LPFC_MAX_BUCKET_COUNT, align 4
  %116 = sub nsw i32 %115, 1
  %117 = icmp slt i32 %114, %116
  br i1 %117, label %118, label %138

118:                                              ; preds = %113
  %119 = load i64, i64* %11, align 8
  %120 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %121 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = load i32, i32* %12, align 4
  %125 = shl i32 1, %124
  %126 = sext i32 %125 to i64
  %127 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %128 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = mul i64 %126, %129
  %131 = add i64 %123, %130
  %132 = icmp ule i64 %119, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %118
  br label %138

134:                                              ; preds = %118
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %12, align 4
  br label %113

138:                                              ; preds = %133, %113
  br label %139

139:                                              ; preds = %138, %111
  %140 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %141 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %140, i32 0, i32 0
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 4
  %149 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %150 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i64, i64* %8, align 8
  %153 = call i32 @spin_unlock_irqrestore(i32 %151, i64 %152)
  br label %154

154:                                              ; preds = %139, %71, %39
  ret void
}

declare dso_local i64 @jiffies_to_msecs(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
