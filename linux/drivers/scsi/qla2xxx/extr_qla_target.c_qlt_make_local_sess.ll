; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_make_local_sess.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_make_local_sess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_port = type { i32 }
%struct.scsi_qla_host = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@ql_dbg_tgt_mgt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Unable to find initiator with S_ID %x:%x:%x\00", align 1
@ql_log_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"qla_target(%d): Unable to find initiator with S_ID %x:%x:%x\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [89 x i8] c"qla_target(%d): global reset during session discovery (counter was %d, new %d), retrying\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fc_port* (%struct.scsi_qla_host*, i64, i32)* @qlt_make_local_sess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fc_port* @qlt_make_local_sess(%struct.scsi_qla_host* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.fc_port*, align 8
  %5 = alloca %struct.TYPE_12__, align 4
  %6 = alloca { i64, i32 }, align 4
  %7 = alloca %struct.scsi_qla_host*, align 8
  %8 = alloca %struct.fc_port*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca { i64, i32 }, align 4
  %14 = alloca %struct.TYPE_11__, align 4
  %15 = alloca { i64, i32 }, align 4
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  store i64 %1, i64* %16, align 4
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  store i32 %2, i32* %17, align 4
  %18 = bitcast %struct.TYPE_12__* %5 to i8*
  %19 = bitcast { i64, i32 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 12, i1 false)
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %7, align 8
  store %struct.fc_port* null, %struct.fc_port** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %12, align 4
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 255
  br i1 %22, label %23, label %37

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 252
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %29 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ql_dbg(i32 %28, %struct.scsi_qla_host* %29, i32 61506, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %33, i32 %35)
  store %struct.fc_port* null, %struct.fc_port** %4, align 8
  br label %136

37:                                               ; preds = %23, %3
  %38 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %39 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  br label %42

42:                                               ; preds = %113, %37
  %43 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %44 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = call i32 @atomic_read(i32* %47)
  store i32 %48, i32* %11, align 4
  %49 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %50 = bitcast { i64, i32 }* %13 to i8*
  %51 = bitcast %struct.TYPE_12__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 12, i1 false)
  %52 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  %53 = load i64, i64* %52, align 4
  %54 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @qla24xx_get_loop_id(%struct.scsi_qla_host* %49, i64 %53, i32 %55, i32* %12)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %93

59:                                               ; preds = %42
  %60 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %61 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* @ql_log_info, align 4
  %65 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %66 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %67 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ql_log(i32 %64, %struct.scsi_qla_host* %65, i32 61553, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %70, i32 %72, i32 %74)
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @ENOENT, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %59
  %81 = bitcast { i64, i32 }* %15 to i8*
  %82 = bitcast %struct.TYPE_12__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %81, i8* align 4 %82, i64 12, i1 false)
  %83 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %84 = load i64, i64* %83, align 4
  %85 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @be_to_port_id(i64 %84, i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  store i32 %87, i32* %88, align 4
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  store i32 1, i32* %89, align 4
  %90 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %91 = call i32 @qlt_send_first_logo(%struct.scsi_qla_host* %90, %struct.TYPE_11__* %14)
  br label %92

92:                                               ; preds = %80, %59
  store %struct.fc_port* null, %struct.fc_port** %4, align 8
  br label %136

93:                                               ; preds = %42
  %94 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call i32* @qlt_get_port_database(%struct.scsi_qla_host* %94, i32 %95)
  store i32* %96, i32** %9, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %93
  %100 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %101 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  store %struct.fc_port* null, %struct.fc_port** %4, align 8
  br label %136

104:                                              ; preds = %93
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %107 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = call i32 @atomic_read(i32* %110)
  %112 = icmp ne i32 %105, %111
  br i1 %112, label %113, label %127

113:                                              ; preds = %104
  %114 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %115 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %116 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %117 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %11, align 4
  %120 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %121 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = call i32 @atomic_read(i32* %124)
  %126 = call i32 @ql_dbg(i32 %114, %struct.scsi_qla_host* %115, i32 61507, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0), i32 %118, i32 %119, i32 %125)
  br label %42

127:                                              ; preds = %104
  %128 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %129 = load i32*, i32** %9, align 8
  %130 = call %struct.fc_port* @qlt_create_sess(%struct.scsi_qla_host* %128, i32* %129, i32 1)
  store %struct.fc_port* %130, %struct.fc_port** %8, align 8
  %131 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %132 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = call i32 @mutex_unlock(i32* %133)
  %135 = load %struct.fc_port*, %struct.fc_port** %8, align 8
  store %struct.fc_port* %135, %struct.fc_port** %4, align 8
  br label %136

136:                                              ; preds = %127, %99, %92, %27
  %137 = load %struct.fc_port*, %struct.fc_port** %4, align 8
  ret %struct.fc_port* %137
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @atomic_read(i32*) #2

declare dso_local i32 @qla24xx_get_loop_id(%struct.scsi_qla_host*, i64, i32, i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @ql_log(i32, %struct.scsi_qla_host*, i32, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @be_to_port_id(i64, i32) #2

declare dso_local i32 @qlt_send_first_logo(%struct.scsi_qla_host*, %struct.TYPE_11__*) #2

declare dso_local i32* @qlt_get_port_database(%struct.scsi_qla_host*, i32) #2

declare dso_local %struct.fc_port* @qlt_create_sess(%struct.scsi_qla_host*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
