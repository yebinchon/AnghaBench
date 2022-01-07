; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_attr.c_qla2x00_free_sysfs_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_attr.c_qla2x00_free_sysfs_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysfs_entry = type { i32, i32, i64 }
%struct.TYPE_8__ = type { %struct.qla_hw_data*, %struct.Scsi_Host* }
%struct.qla_hw_data = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*)* }
%struct.Scsi_Host = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@bin_file_entries = common dso_local global %struct.sysfs_entry* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla2x00_free_sysfs_attr(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.sysfs_entry*, align 8
  %7 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %5, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  store %struct.qla_hw_data* %13, %struct.qla_hw_data** %7, align 8
  %14 = load %struct.sysfs_entry*, %struct.sysfs_entry** @bin_file_entries, align 8
  store %struct.sysfs_entry* %14, %struct.sysfs_entry** %6, align 8
  br label %15

15:                                               ; preds = %72, %2
  %16 = load %struct.sysfs_entry*, %struct.sysfs_entry** %6, align 8
  %17 = getelementptr inbounds %struct.sysfs_entry, %struct.sysfs_entry* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %75

20:                                               ; preds = %15
  %21 = load %struct.sysfs_entry*, %struct.sysfs_entry** %6, align 8
  %22 = getelementptr inbounds %struct.sysfs_entry, %struct.sysfs_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %27 = call i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  br label %72

30:                                               ; preds = %25, %20
  %31 = load %struct.sysfs_entry*, %struct.sysfs_entry** %6, align 8
  %32 = getelementptr inbounds %struct.sysfs_entry, %struct.sysfs_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %37 = call i32 @IS_QLA25XX(%struct.qla_hw_data* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  br label %72

40:                                               ; preds = %35, %30
  %41 = load %struct.sysfs_entry*, %struct.sysfs_entry** %6, align 8
  %42 = getelementptr inbounds %struct.sysfs_entry, %struct.sysfs_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %47 = call i32 @IS_CNA_CAPABLE(%struct.qla_hw_data* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  br label %72

50:                                               ; preds = %45, %40
  %51 = load %struct.sysfs_entry*, %struct.sysfs_entry** %6, align 8
  %52 = getelementptr inbounds %struct.sysfs_entry, %struct.sysfs_entry* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 39
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %57 = call i32 @IS_QLA27XX(%struct.qla_hw_data* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %61 = call i32 @IS_QLA28XX(%struct.qla_hw_data* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59, %55
  br label %72

64:                                               ; preds = %59, %50
  %65 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %66 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load %struct.sysfs_entry*, %struct.sysfs_entry** %6, align 8
  %69 = getelementptr inbounds %struct.sysfs_entry, %struct.sysfs_entry* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @sysfs_remove_bin_file(i32* %67, i32 %70)
  br label %72

72:                                               ; preds = %64, %63, %49, %39, %29
  %73 = load %struct.sysfs_entry*, %struct.sysfs_entry** %6, align 8
  %74 = getelementptr inbounds %struct.sysfs_entry, %struct.sysfs_entry* %73, i32 1
  store %struct.sysfs_entry* %74, %struct.sysfs_entry** %6, align 8
  br label %15

75:                                               ; preds = %15
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %80 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %85 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %84, i32 0, i32 1
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %87, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %90 = call i32 %88(%struct.TYPE_8__* %89)
  br label %91

91:                                               ; preds = %83, %78, %75
  ret void
}

declare dso_local i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA25XX(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_CNA_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA27XX(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA28XX(%struct.qla_hw_data*) #1

declare dso_local i32 @sysfs_remove_bin_file(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
