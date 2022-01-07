; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_load_data_segments.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_load_data_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_tgt_prm = type { i64, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.dsd64 = type { i64, i64 }
%struct.ctio7_to_24xx = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.dsd64, i32 }

@QLA_TGT_DATASEGS_PER_CMD_24XX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qla_tgt_prm*)* @qlt_load_data_segments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlt_load_data_segments(%struct.qla_tgt_prm* %0) #0 {
  %2 = alloca %struct.qla_tgt_prm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsd64*, align 8
  %5 = alloca %struct.ctio7_to_24xx*, align 8
  store %struct.qla_tgt_prm* %0, %struct.qla_tgt_prm** %2, align 8
  %6 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %2, align 8
  %7 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.ctio7_to_24xx*
  store %struct.ctio7_to_24xx* %9, %struct.ctio7_to_24xx** %5, align 8
  %10 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %2, align 8
  %11 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @cpu_to_le32(i32 %14)
  %16 = load %struct.ctio7_to_24xx*, %struct.ctio7_to_24xx** %5, align 8
  %17 = getelementptr inbounds %struct.ctio7_to_24xx, %struct.ctio7_to_24xx* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store i32 %15, i32* %19, align 8
  %20 = load %struct.ctio7_to_24xx*, %struct.ctio7_to_24xx** %5, align 8
  %21 = getelementptr inbounds %struct.ctio7_to_24xx, %struct.ctio7_to_24xx* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store %struct.dsd64* %23, %struct.dsd64** %4, align 8
  %24 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %2, align 8
  %25 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %1
  %29 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %2, align 8
  %30 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @cpu_to_le16(i64 %31)
  %33 = load %struct.ctio7_to_24xx*, %struct.ctio7_to_24xx** %5, align 8
  %34 = getelementptr inbounds %struct.ctio7_to_24xx, %struct.ctio7_to_24xx* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %28, %1
  %36 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %2, align 8
  %37 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.dsd64*, %struct.dsd64** %4, align 8
  %42 = getelementptr inbounds %struct.dsd64, %struct.dsd64* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.dsd64*, %struct.dsd64** %4, align 8
  %44 = getelementptr inbounds %struct.dsd64, %struct.dsd64* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  br label %78

45:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %68, %45
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @QLA_TGT_DATASEGS_PER_CMD_24XX, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %2, align 8
  %52 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %50, %46
  %56 = phi i1 [ false, %46 ], [ %54, %50 ]
  br i1 %56, label %57, label %75

57:                                               ; preds = %55
  %58 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %2, align 8
  %59 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @append_dsd64(%struct.dsd64** %4, i32 %60)
  %62 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %2, align 8
  %63 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @sg_next(i32 %64)
  %66 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %2, align 8
  %67 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %57
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  %71 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %2, align 8
  %72 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, -1
  store i64 %74, i64* %72, align 8
  br label %46

75:                                               ; preds = %55
  %76 = load %struct.qla_tgt_prm*, %struct.qla_tgt_prm** %2, align 8
  %77 = call i32 @qlt_load_cont_data_segments(%struct.qla_tgt_prm* %76)
  br label %78

78:                                               ; preds = %75, %40
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @append_dsd64(%struct.dsd64**, i32) #1

declare dso_local i32 @sg_next(i32) #1

declare dso_local i32 @qlt_load_cont_data_segments(%struct.qla_tgt_prm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
