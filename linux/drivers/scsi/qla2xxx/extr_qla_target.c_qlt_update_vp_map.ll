; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_update_vp_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_update_vp_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i64, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.scsi_qla_host* }

@ql_dbg_tgt_mgt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Save vha in host_map %p %06x\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ql_log_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Unable to insert s_id into host_map: %06x\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"replace existing vha in host_map %p %06x\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"clear vha in host_map %p %06x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlt_update_vp_map(%struct.scsi_qla_host* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 (...) @QLA_TGT_MODE_ENABLED()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %116

11:                                               ; preds = %2
  %12 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %116 [
    i32 128, label %17
    i32 129, label %30
    i32 130, label %77
    i32 131, label %89
  ]

17:                                               ; preds = %11
  %18 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %20 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %19, i32 0, i32 2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %26 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store %struct.scsi_qla_host* %18, %struct.scsi_qla_host** %29, align 8
  br label %116

30:                                               ; preds = %11
  %31 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %32 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %31, i32 0, i32 2
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %6, align 4
  %37 = call i8* @btree_lookup32(i32* %35, i32 %36)
  store i8* %37, i8** %5, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %63, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %42 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %43 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @ql_dbg(i32 %41, %struct.scsi_qla_host* %42, i32 61464, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.scsi_qla_host* %43, i32 %44)
  %46 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %47 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %46, i32 0, i32 2
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %53 = load i32, i32* @GFP_ATOMIC, align 4
  %54 = call i32 @btree_insert32(i32* %50, i32 %51, %struct.scsi_qla_host* %52, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %40
  %58 = load i32, i32* @ql_log_info, align 4
  %59 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @ql_log(i32 %58, %struct.scsi_qla_host* %59, i32 53310, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %57, %40
  br label %116

63:                                               ; preds = %30
  %64 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %65 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %66 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @ql_dbg(i32 %64, %struct.scsi_qla_host* %65, i32 61465, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), %struct.scsi_qla_host* %66, i32 %67)
  %69 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %70 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %69, i32 0, i32 2
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %76 = call i32 @btree_update32(i32* %73, i32 %74, %struct.scsi_qla_host* %75)
  br label %116

77:                                               ; preds = %11
  %78 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %79 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %78, i32 0, i32 2
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %85 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store %struct.scsi_qla_host* null, %struct.scsi_qla_host** %88, align 8
  br label %116

89:                                               ; preds = %11
  %90 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %91 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %92 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @ql_dbg(i32 %90, %struct.scsi_qla_host* %91, i32 61466, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), %struct.scsi_qla_host* %92, i32 %93)
  %95 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %96 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %95, i32 0, i32 2
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %6, align 4
  %101 = call i8* @btree_lookup32(i32* %99, i32 %100)
  store i8* %101, i8** %5, align 8
  %102 = load i8*, i8** %5, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %112

104:                                              ; preds = %89
  %105 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %106 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %105, i32 0, i32 2
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @btree_remove32(i32* %109, i32 %110)
  br label %112

112:                                              ; preds = %104, %89
  %113 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %114 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  store i32 0, i32* %115, align 8
  br label %116

116:                                              ; preds = %10, %62, %11, %112, %77, %63, %17
  ret void
}

declare dso_local i32 @QLA_TGT_MODE_ENABLED(...) #1

declare dso_local i8* @btree_lookup32(i32*, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, %struct.scsi_qla_host*, i32) #1

declare dso_local i32 @btree_insert32(i32*, i32, %struct.scsi_qla_host*, i32) #1

declare dso_local i32 @ql_log(i32, %struct.scsi_qla_host*, i32, i8*, i32) #1

declare dso_local i32 @btree_update32(i32*, i32, %struct.scsi_qla_host*) #1

declare dso_local i32 @btree_remove32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
