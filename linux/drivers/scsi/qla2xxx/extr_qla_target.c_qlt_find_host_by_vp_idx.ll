; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_find_host_by_vp_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_find_host_by_vp_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i64, %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.scsi_qla_host* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scsi_qla_host* (%struct.scsi_qla_host*, i64)* @qlt_find_host_by_vp_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scsi_qla_host* @qlt_find_host_by_vp_idx(%struct.scsi_qla_host* %0, i64 %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.qla_hw_data*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %8 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %7, i32 0, i32 1
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  store %struct.qla_hw_data* %9, %struct.qla_hw_data** %6, align 8
  %10 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  store %struct.scsi_qla_host* %16, %struct.scsi_qla_host** %3, align 8
  br label %42

17:                                               ; preds = %2
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %19 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = icmp eq %struct.TYPE_3__* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %27 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @test_bit(i64 %25, i32 %28)
  %30 = call i64 @likely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %17
  %33 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %34 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %39, align 8
  store %struct.scsi_qla_host* %40, %struct.scsi_qla_host** %3, align 8
  br label %42

41:                                               ; preds = %17
  store %struct.scsi_qla_host* null, %struct.scsi_qla_host** %3, align 8
  br label %42

42:                                               ; preds = %41, %32, %15
  %43 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  ret %struct.scsi_qla_host* %43
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @test_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
