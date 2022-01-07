; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_load_cont_data_segments.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_load_cont_data_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_tgt_prm = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.dsd64 = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.dsd64*, i32, i64 }

@CONTINUE_A64_TYPE = common dso_local global i32 0, align 4
@QLA_TGT_DATASEGS_PER_CONT_24XX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qla_tgt_prm*)* @qlt_load_cont_data_segments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlt_load_cont_data_segments(%struct.qla_tgt_prm* %0) #0 {
  %2 = alloca %struct.qla_tgt_prm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsd64*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store %struct.qla_tgt_prm* %0, %struct.qla_tgt_prm** %2, align 8
  br label %6

6:                                                ; preds = %62, %1
  %7 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %2, align 8
  %8 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %63

11:                                               ; preds = %6
  %12 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %2, align 8
  %13 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %12, i32 0, i32 2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @qlt_get_req_pkt(i32 %18)
  %20 = inttoptr i64 %19 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %5, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = call i32 @memset(%struct.TYPE_7__* %21, i32 0, i32 32)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @CONTINUE_A64_TYPE, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load %struct.dsd64*, %struct.dsd64** %31, align 8
  store %struct.dsd64* %32, %struct.dsd64** %4, align 8
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %55, %11
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @QLA_TGT_DATASEGS_PER_CONT_24XX, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %2, align 8
  %39 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %37, %33
  %43 = phi i1 [ false, %33 ], [ %41, %37 ]
  br i1 %43, label %44, label %62

44:                                               ; preds = %42
  %45 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %2, align 8
  %46 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @append_dsd64(%struct.dsd64** %4, i32 %47)
  %49 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %2, align 8
  %50 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @sg_next(i32 %51)
  %53 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %2, align 8
  %54 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %44
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  %58 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %2, align 8
  %59 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, -1
  store i64 %61, i64* %59, align 8
  br label %33

62:                                               ; preds = %42
  br label %6

63:                                               ; preds = %6
  ret void
}

declare dso_local i64 @qlt_get_req_pkt(i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @append_dsd64(%struct.dsd64**, i32) #1

declare dso_local i32 @sg_next(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
