; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_query_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_query_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_target = type { i32, %struct.TYPE_6__, %struct.ibmvfc_host* }
%struct.TYPE_6__ = type { i32 }
%struct.ibmvfc_host = type { i64 }
%struct.ibmvfc_query_tgt = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i8*, i8* }
%struct.ibmvfc_event = type { %struct.TYPE_4__, %struct.ibmvfc_target* }
%struct.TYPE_4__ = type { %struct.ibmvfc_query_tgt }

@disc_threads = common dso_local global i64 0, align 8
@ibmvfc_tgt_query_target_done = common dso_local global i32 0, align 4
@IBMVFC_MAD_FORMAT = common dso_local global i32 0, align 4
@IBMVFC_QUERY_TARGET = common dso_local global i32 0, align 4
@IBMVFC_TGT_ACTION_INIT_WAIT = common dso_local global i32 0, align 4
@default_timeout = common dso_local global i32 0, align 4
@IBMVFC_TGT_ACTION_NONE = common dso_local global i32 0, align 4
@ibmvfc_release_tgt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Sent Query Target\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_target*)* @ibmvfc_tgt_query_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_tgt_query_target(%struct.ibmvfc_target* %0) #0 {
  %2 = alloca %struct.ibmvfc_target*, align 8
  %3 = alloca %struct.ibmvfc_query_tgt*, align 8
  %4 = alloca %struct.ibmvfc_host*, align 8
  %5 = alloca %struct.ibmvfc_event*, align 8
  store %struct.ibmvfc_target* %0, %struct.ibmvfc_target** %2, align 8
  %6 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %7 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %6, i32 0, i32 2
  %8 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %7, align 8
  store %struct.ibmvfc_host* %8, %struct.ibmvfc_host** %4, align 8
  %9 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %10 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @disc_threads, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %80

15:                                               ; preds = %1
  %16 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %17 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %16, i32 0, i32 0
  %18 = call i32 @kref_get(i32* %17)
  %19 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %20 = call %struct.ibmvfc_event* @ibmvfc_get_event(%struct.ibmvfc_host* %19)
  store %struct.ibmvfc_event* %20, %struct.ibmvfc_event** %5, align 8
  %21 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %22 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %22, align 8
  %25 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %26 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %27 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %26, i32 0, i32 1
  store %struct.ibmvfc_target* %25, %struct.ibmvfc_target** %27, align 8
  %28 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %29 = load i32, i32* @ibmvfc_tgt_query_target_done, align 4
  %30 = load i32, i32* @IBMVFC_MAD_FORMAT, align 4
  %31 = call i32 @ibmvfc_init_event(%struct.ibmvfc_event* %28, i32 %29, i32 %30)
  %32 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %33 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store %struct.ibmvfc_query_tgt* %34, %struct.ibmvfc_query_tgt** %3, align 8
  %35 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %3, align 8
  %36 = call i32 @memset(%struct.ibmvfc_query_tgt* %35, i32 0, i32 32)
  %37 = call i8* @cpu_to_be32(i32 1)
  %38 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %3, align 8
  %39 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  store i8* %37, i8** %40, align 8
  %41 = load i32, i32* @IBMVFC_QUERY_TARGET, align 4
  %42 = call i8* @cpu_to_be32(i32 %41)
  %43 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %3, align 8
  %44 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i8* %42, i8** %45, align 8
  %46 = call i32 @cpu_to_be16(i32 32)
  %47 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %3, align 8
  %48 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %51 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @cpu_to_be64(i32 %53)
  %55 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %3, align 8
  %56 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %58 = load i32, i32* @IBMVFC_TGT_ACTION_INIT_WAIT, align 4
  %59 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %57, i32 %58)
  %60 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %61 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %62 = load i32, i32* @default_timeout, align 4
  %63 = call i64 @ibmvfc_send_event(%struct.ibmvfc_event* %60, %struct.ibmvfc_host* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %15
  %66 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %67 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, -1
  store i64 %69, i64* %67, align 8
  %70 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %71 = load i32, i32* @IBMVFC_TGT_ACTION_NONE, align 4
  %72 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %70, i32 %71)
  %73 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %74 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %73, i32 0, i32 0
  %75 = load i32, i32* @ibmvfc_release_tgt, align 4
  %76 = call i32 @kref_put(i32* %74, i32 %75)
  br label %80

77:                                               ; preds = %15
  %78 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %79 = call i32 @tgt_dbg(%struct.ibmvfc_target* %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %80

80:                                               ; preds = %14, %77, %65
  ret void
}

declare dso_local i32 @kref_get(i32*) #1

declare dso_local %struct.ibmvfc_event* @ibmvfc_get_event(%struct.ibmvfc_host*) #1

declare dso_local i32 @ibmvfc_init_event(%struct.ibmvfc_event*, i32, i32) #1

declare dso_local i32 @memset(%struct.ibmvfc_query_tgt*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target*, i32) #1

declare dso_local i64 @ibmvfc_send_event(%struct.ibmvfc_event*, %struct.ibmvfc_host*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @tgt_dbg(%struct.ibmvfc_target*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
