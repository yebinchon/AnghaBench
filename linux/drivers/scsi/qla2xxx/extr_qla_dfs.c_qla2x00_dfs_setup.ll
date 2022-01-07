; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_dfs.c_qla2x00_dfs_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_dfs.c_qla2x00_dfs_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i8*, %struct.TYPE_5__, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_5__ = type { i8*, i8*, i8* }

@qla2x00_dfs_root = common dso_local global i32* null, align 8
@qla2x00_dfs_root_count = common dso_local global i32 0, align 4
@QLA2XXX_DRIVER_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"fw_resource_count\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@dfs_fw_resource_cnt_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"tgt_counters\00", align 1
@dfs_tgt_counters_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"tgt_port_database\00", align 1
@dfs_tgt_port_database_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"fce\00", align 1
@dfs_fce_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"tgt_sess\00", align 1
@dfs_tgt_sess_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"naqp\00", align 1
@dfs_naqp_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_dfs_setup(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %6 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  store %struct.qla_hw_data* %6, %struct.qla_hw_data** %3, align 8
  %7 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %8 = call i32 @IS_QLA25XX(%struct.qla_hw_data* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %1
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %12 = call i32 @IS_QLA81XX(%struct.qla_hw_data* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %10
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %16 = call i64 @IS_QLA83XX(%struct.qla_hw_data* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %20 = call i64 @IS_QLA27XX(%struct.qla_hw_data* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %24 = call i64 @IS_QLA28XX(%struct.qla_hw_data* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  br label %124

27:                                               ; preds = %22, %18, %14, %10, %1
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %29 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %124

33:                                               ; preds = %27
  %34 = load i32*, i32** @qla2x00_dfs_root, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %42

37:                                               ; preds = %33
  %38 = call i32 @atomic_set(i32* @qla2x00_dfs_root_count, i32 0)
  %39 = load i32, i32* @QLA2XXX_DRIVER_NAME, align 4
  %40 = call i8* @debugfs_create_dir(i32 %39, i32* null)
  %41 = bitcast i8* %40 to i32*
  store i32* %41, i32** @qla2x00_dfs_root, align 8
  br label %42

42:                                               ; preds = %37, %36
  %43 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %44 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %60

48:                                               ; preds = %42
  %49 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %50 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %49, i32 0, i32 5
  %51 = call i32 @mutex_init(i32* %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** @qla2x00_dfs_root, align 8
  %56 = call i8* @debugfs_create_dir(i32 %54, i32* %55)
  %57 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %58 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = call i32 @atomic_inc(i32* @qla2x00_dfs_root_count)
  br label %60

60:                                               ; preds = %48, %47
  %61 = load i32, i32* @S_IRUSR, align 4
  %62 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %63 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %66 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %61, i8* %64, %struct.TYPE_6__* %65, i32* @dfs_fw_resource_cnt_ops)
  %67 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %68 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* @S_IRUSR, align 4
  %70 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %71 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %74 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %69, i8* %72, %struct.TYPE_6__* %73, i32* @dfs_tgt_counters_ops)
  %75 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %76 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %75, i32 0, i32 3
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* @S_IRUSR, align 4
  %78 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %79 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %82 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %77, i8* %80, %struct.TYPE_6__* %81, i32* @dfs_tgt_port_database_ops)
  %83 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %84 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  store i8* %82, i8** %85, align 8
  %86 = load i32, i32* @S_IRUSR, align 4
  %87 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %88 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %91 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %86, i8* %89, %struct.TYPE_6__* %90, i32* @dfs_fce_ops)
  %92 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %93 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* @S_IRUSR, align 4
  %95 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %96 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %99 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %94, i8* %97, %struct.TYPE_6__* %98, i32* @dfs_tgt_sess_ops)
  %100 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %101 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  store i8* %99, i8** %102, align 8
  %103 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %104 = call i64 @IS_QLA27XX(%struct.qla_hw_data* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %60
  %107 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %108 = call i64 @IS_QLA83XX(%struct.qla_hw_data* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %112 = call i64 @IS_QLA28XX(%struct.qla_hw_data* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %110, %106, %60
  %115 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %116 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %119 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 256, i8* %117, %struct.TYPE_6__* %118, i32* @dfs_naqp_ops)
  %120 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %121 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  store i8* %119, i8** %122, align 8
  br label %123

123:                                              ; preds = %114, %110
  br label %124

124:                                              ; preds = %123, %32, %26
  ret i32 0
}

declare dso_local i32 @IS_QLA25XX(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA81XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA83XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA27XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA28XX(%struct.qla_hw_data*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i8* @debugfs_create_dir(i32, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i8* @debugfs_create_file(i8*, i32, i8*, %struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
