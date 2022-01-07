; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_conn_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_conn_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32, %struct.qed_iscsi_stats*)* }
%struct.qed_iscsi_stats = type { i64, i64, i64, i32, i32 }
%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32, i32, i32, i8*, i8*, i32, i8*, i32, i32, i32 }
%struct.iscsi_stats = type { i32, %struct.TYPE_3__*, i64, i64, i32, i32, i8*, i8*, i32, i8*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.qedi_ctx = type { i32 }

@qedi_ops = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"eh_abort_cnt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_cls_conn*, %struct.iscsi_stats*)* @qedi_conn_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedi_conn_get_stats(%struct.iscsi_cls_conn* %0, %struct.iscsi_stats* %1) #0 {
  %3 = alloca %struct.iscsi_cls_conn*, align 8
  %4 = alloca %struct.iscsi_stats*, align 8
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.qed_iscsi_stats, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.qedi_ctx*, align 8
  store %struct.iscsi_cls_conn* %0, %struct.iscsi_cls_conn** %3, align 8
  store %struct.iscsi_stats* %1, %struct.iscsi_stats** %4, align 8
  %9 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %3, align 8
  %10 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %9, i32 0, i32 0
  %11 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  store %struct.iscsi_conn* %11, %struct.iscsi_conn** %5, align 8
  %12 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %3, align 8
  %13 = call i32 @iscsi_conn_to_session(%struct.iscsi_cls_conn* %12)
  %14 = call %struct.Scsi_Host* @iscsi_session_to_shost(i32 %13)
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %7, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %16 = call %struct.qedi_ctx* @iscsi_host_priv(%struct.Scsi_Host* %15)
  store %struct.qedi_ctx* %16, %struct.qedi_ctx** %8, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @qedi_ops, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32 (i32, %struct.qed_iscsi_stats*)*, i32 (i32, %struct.qed_iscsi_stats*)** %18, align 8
  %20 = load %struct.qedi_ctx*, %struct.qedi_ctx** %8, align 8
  %21 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 %19(i32 %22, %struct.qed_iscsi_stats* %6)
  %24 = getelementptr inbounds %struct.qed_iscsi_stats, %struct.qed_iscsi_stats* %6, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %27 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %26, i32 0, i32 9
  store i32 %25, i32* %27, align 8
  %28 = getelementptr inbounds %struct.qed_iscsi_stats, %struct.qed_iscsi_stats* %6, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %31 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 4
  %32 = getelementptr inbounds %struct.qed_iscsi_stats, %struct.qed_iscsi_stats* %6, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %36 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %35, i32 0, i32 6
  store i8* %34, i8** %36, align 8
  %37 = getelementptr inbounds %struct.qed_iscsi_stats, %struct.qed_iscsi_stats* %6, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %41 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  %42 = getelementptr inbounds %struct.qed_iscsi_stats, %struct.qed_iscsi_stats* %6, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %46 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %48 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %47, i32 0, i32 9
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %51 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %50, i32 0, i32 12
  store i32 %49, i32* %51, align 8
  %52 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %53 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %56 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %55, i32 0, i32 11
  store i32 %54, i32* %56, align 4
  %57 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %58 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %61 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %60, i32 0, i32 10
  store i32 %59, i32* %61, align 8
  %62 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %63 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %62, i32 0, i32 6
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %66 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %65, i32 0, i32 9
  store i8* %64, i8** %66, align 8
  %67 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %68 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %71 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %70, i32 0, i32 8
  store i32 %69, i32* %71, align 8
  %72 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %73 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %72, i32 0, i32 4
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %76 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %75, i32 0, i32 7
  store i8* %74, i8** %76, align 8
  %77 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %78 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %77, i32 0, i32 3
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %81 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %80, i32 0, i32 6
  store i8* %79, i8** %81, align 8
  %82 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %83 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %86 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 4
  %87 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %88 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %91 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 8
  %92 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %93 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %92, i32 0, i32 3
  store i64 0, i64* %93, align 8
  %94 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %95 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %94, i32 0, i32 2
  store i64 0, i64* %95, align 8
  %96 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %97 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %96, i32 0, i32 1
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @strcpy(i32 %101, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %103 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %104 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %107 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %106, i32 0, i32 1
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  store i32 %105, i32* %110, align 4
  %111 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %112 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  ret void
}

declare dso_local %struct.Scsi_Host* @iscsi_session_to_shost(i32) #1

declare dso_local i32 @iscsi_conn_to_session(%struct.iscsi_cls_conn*) #1

declare dso_local %struct.qedi_ctx* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
