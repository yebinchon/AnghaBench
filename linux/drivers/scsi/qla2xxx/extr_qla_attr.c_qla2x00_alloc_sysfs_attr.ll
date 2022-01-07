; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_attr.c_qla2x00_alloc_sysfs_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_attr.c_qla2x00_alloc_sysfs_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysfs_entry = type { i32, i64, i32 }
%struct.TYPE_7__ = type { i32, %struct.Scsi_Host* }
%struct.Scsi_Host = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@bin_file_entries = common dso_local global %struct.sysfs_entry* null, align 8
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Unable to create sysfs %s binary attribute (%d).\0A\00", align 1
@ql_dbg_init = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Successfully created sysfs %s binary attribute.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla2x00_alloc_sysfs_attr(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.sysfs_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  store %struct.Scsi_Host* %8, %struct.Scsi_Host** %3, align 8
  %9 = load %struct.sysfs_entry*, %struct.sysfs_entry** @bin_file_entries, align 8
  store %struct.sysfs_entry* %9, %struct.sysfs_entry** %4, align 8
  br label %10

10:                                               ; preds = %77, %1
  %11 = load %struct.sysfs_entry*, %struct.sysfs_entry** %4, align 8
  %12 = getelementptr inbounds %struct.sysfs_entry, %struct.sysfs_entry* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %80

15:                                               ; preds = %10
  %16 = load %struct.sysfs_entry*, %struct.sysfs_entry** %4, align 8
  %17 = getelementptr inbounds %struct.sysfs_entry, %struct.sysfs_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @IS_FWI2_CAPABLE(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %77

27:                                               ; preds = %20, %15
  %28 = load %struct.sysfs_entry*, %struct.sysfs_entry** %4, align 8
  %29 = getelementptr inbounds %struct.sysfs_entry, %struct.sysfs_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @IS_QLA25XX(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  br label %77

39:                                               ; preds = %32, %27
  %40 = load %struct.sysfs_entry*, %struct.sysfs_entry** %4, align 8
  %41 = getelementptr inbounds %struct.sysfs_entry, %struct.sysfs_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @IS_CNA_CAPABLE(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  br label %77

51:                                               ; preds = %44, %39
  %52 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %53 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.sysfs_entry*, %struct.sysfs_entry** %4, align 8
  %56 = getelementptr inbounds %struct.sysfs_entry, %struct.sysfs_entry* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @sysfs_create_bin_file(i32* %54, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %51
  %62 = load i32, i32* @ql_log_warn, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %64 = load %struct.sysfs_entry*, %struct.sysfs_entry** %4, align 8
  %65 = getelementptr inbounds %struct.sysfs_entry, %struct.sysfs_entry* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @ql_log(i32 %62, %struct.TYPE_7__* %63, i32 243, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %66, i32 %67)
  br label %76

69:                                               ; preds = %51
  %70 = load i32, i32* @ql_dbg_init, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %72 = load %struct.sysfs_entry*, %struct.sysfs_entry** %4, align 8
  %73 = getelementptr inbounds %struct.sysfs_entry, %struct.sysfs_entry* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @ql_dbg(i32 %70, %struct.TYPE_7__* %71, i32 244, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %74)
  br label %76

76:                                               ; preds = %69, %61
  br label %77

77:                                               ; preds = %76, %50, %38, %26
  %78 = load %struct.sysfs_entry*, %struct.sysfs_entry** %4, align 8
  %79 = getelementptr inbounds %struct.sysfs_entry, %struct.sysfs_entry* %78, i32 1
  store %struct.sysfs_entry* %79, %struct.sysfs_entry** %4, align 8
  br label %10

80:                                               ; preds = %10
  ret void
}

declare dso_local i32 @IS_FWI2_CAPABLE(i32) #1

declare dso_local i32 @IS_QLA25XX(i32) #1

declare dso_local i32 @IS_CNA_CAPABLE(i32) #1

declare dso_local i32 @sysfs_create_bin_file(i32*, i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_7__*, i32, i8*, i64, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_7__*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
