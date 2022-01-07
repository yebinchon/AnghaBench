; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_attr.c_qla24xx_vport_delete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_attr.c_qla24xx_vport_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_vport = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i32, %struct.TYPE_22__*, %struct.TYPE_20__, %struct.TYPE_19__, i64, %struct.TYPE_17__, i32, %struct.qla_hw_data* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32*, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.qla_hw_data = type { %struct.TYPE_18__*, i32, i32, i32 }
%struct.TYPE_18__ = type { i32 }

@VPORT_DELETE = common dso_local global i32 0, align 4
@LOOP_RESYNC_ACTIVE = common dso_local global i32 0, align 4
@FCPORT_UPDATE_NEEDED = common dso_local global i32 0, align 4
@ql_dbg_user = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Timer for the VP[%d] has stopped\0A\00", align 1
@QLA_SUCCESS = common dso_local global i64 0, align 8
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Queue Pair delete failed.\0A\00", align 1
@ql_log_info = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"VP[%d] deleted.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_vport*)* @qla24xx_vport_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla24xx_vport_delete(%struct.fc_vport* %0) #0 {
  %2 = alloca %struct.fc_vport*, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca i64, align 8
  store %struct.fc_vport* %0, %struct.fc_vport** %2, align 8
  %6 = load %struct.fc_vport*, %struct.fc_vport** %2, align 8
  %7 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %6, i32 0, i32 0
  %8 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_21__* %8, %struct.TYPE_21__** %3, align 8
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 8
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  store %struct.qla_hw_data* %11, %struct.qla_hw_data** %4, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load i32, i32* @VPORT_DELETE, align 4
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 7
  %18 = call i32 @set_bit(i32 %15, i32* %17)
  br label %19

19:                                               ; preds = %33, %1
  %20 = load i32, i32* @LOOP_RESYNC_ACTIVE, align 4
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 7
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @FCPORT_UPDATE_NEEDED, align 4
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 7
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %25, %19
  %32 = phi i1 [ true, %19 ], [ %30, %25 ]
  br i1 %32, label %33, label %35

33:                                               ; preds = %31
  %34 = call i32 @msleep(i32 1000)
  br label %19

35:                                               ; preds = %31
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %37 = call i32 @qla_nvme_delete(%struct.TYPE_21__* %36)
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %39 = call i32 @qla24xx_disable_vp(%struct.TYPE_21__* %38)
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %41 = call i32 @qla2x00_wait_for_sess_deletion(%struct.TYPE_21__* %40)
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %47 = call i32 @qlt_remove_target(%struct.qla_hw_data* %45, %struct.TYPE_21__* %46)
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @fc_remove_host(i32 %50)
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @scsi_remove_host(i32 %54)
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %57 = call i32 @qla24xx_deallocate_vp_id(%struct.TYPE_21__* %56)
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %35
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %64 = call i32 @qla2x00_vp_stop_timer(%struct.TYPE_21__* %63)
  %65 = load i32, i32* @ql_dbg_user, align 4
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @ql_dbg(i32 %65, %struct.TYPE_21__* %66, i32 28806, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %69)
  br label %71

71:                                               ; preds = %62, %35
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %73 = call i32 @qla2x00_free_fcports(%struct.TYPE_21__* %72)
  %74 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %75 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %74, i32 0, i32 1
  %76 = call i32 @mutex_lock(i32* %75)
  %77 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %78 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %78, align 8
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %85 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @clear_bit(i64 %83, i32 %86)
  %88 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %89 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %88, i32 0, i32 1
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %92 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %91, i32 0, i32 0
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @dma_free_coherent(i32* %94, i32 %98, i32* %102, i32 %106)
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  store i32* null, i32** %110, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @vfree(i32 %114)
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %117, align 8
  %119 = icmp ne %struct.TYPE_22__* %118, null
  br i1 %119, label %120, label %143

120:                                              ; preds = %71
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %125, %128
  br i1 %129, label %130, label %143

130:                                              ; preds = %120
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %133, align 8
  %135 = call i64 @qla2xxx_delete_qpair(%struct.TYPE_21__* %131, %struct.TYPE_22__* %134)
  %136 = load i64, i64* @QLA_SUCCESS, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %130
  %139 = load i32, i32* @ql_log_warn, align 4
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %141 = call i32 (i32, %struct.TYPE_21__*, i32, i8*, ...) @ql_log(i32 %139, %struct.TYPE_21__* %140, i32 28807, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %142

142:                                              ; preds = %138, %130
  br label %143

143:                                              ; preds = %142, %120, %71
  %144 = load i32, i32* @ql_log_info, align 4
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %146 = load i64, i64* %5, align 8
  %147 = call i32 (i32, %struct.TYPE_21__*, i32, i8*, ...) @ql_log(i32 %144, %struct.TYPE_21__* %145, i32 28808, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %146)
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @scsi_host_put(i32 %150)
  ret i32 0
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qla_nvme_delete(%struct.TYPE_21__*) #1

declare dso_local i32 @qla24xx_disable_vp(%struct.TYPE_21__*) #1

declare dso_local i32 @qla2x00_wait_for_sess_deletion(%struct.TYPE_21__*) #1

declare dso_local i32 @qlt_remove_target(%struct.qla_hw_data*, %struct.TYPE_21__*) #1

declare dso_local i32 @fc_remove_host(i32) #1

declare dso_local i32 @scsi_remove_host(i32) #1

declare dso_local i32 @qla24xx_deallocate_vp_id(%struct.TYPE_21__*) #1

declare dso_local i32 @qla2x00_vp_stop_timer(%struct.TYPE_21__*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_21__*, i32, i8*, i64) #1

declare dso_local i32 @qla2x00_free_fcports(%struct.TYPE_21__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i64 @qla2xxx_delete_qpair(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_21__*, i32, i8*, ...) #1

declare dso_local i32 @scsi_host_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
