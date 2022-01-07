; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_find_qphint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_find_qphint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_qpair_hint = type { i32 }
%struct.scsi_qla_host = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.qla_tgt* }
%struct.qla_tgt = type { %struct.qla_qpair_hint*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qla_qpair_hint* (%struct.scsi_qla_host*, i32)* @qlt_find_qphint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qla_qpair_hint* @qlt_find_qphint(%struct.scsi_qla_host* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qla_tgt*, align 8
  %6 = alloca %struct.qla_qpair_hint*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.qla_tgt*, %struct.qla_tgt** %9, align 8
  store %struct.qla_tgt* %10, %struct.qla_tgt** %5, align 8
  store %struct.qla_qpair_hint* null, %struct.qla_qpair_hint** %6, align 8
  %11 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load %struct.qla_tgt*, %struct.qla_tgt** %5, align 8
  %18 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %17, i32 0, i32 1
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.qla_qpair_hint* @btree_lookup64(i32* %18, i32 %19)
  store %struct.qla_qpair_hint* %20, %struct.qla_qpair_hint** %6, align 8
  %21 = load %struct.qla_qpair_hint*, %struct.qla_qpair_hint** %6, align 8
  %22 = icmp ne %struct.qla_qpair_hint* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %16
  %24 = load %struct.qla_tgt*, %struct.qla_tgt** %5, align 8
  %25 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %24, i32 0, i32 0
  %26 = load %struct.qla_qpair_hint*, %struct.qla_qpair_hint** %25, align 8
  %27 = getelementptr inbounds %struct.qla_qpair_hint, %struct.qla_qpair_hint* %26, i64 0
  store %struct.qla_qpair_hint* %27, %struct.qla_qpair_hint** %6, align 8
  br label %28

28:                                               ; preds = %23, %16
  br label %34

29:                                               ; preds = %2
  %30 = load %struct.qla_tgt*, %struct.qla_tgt** %5, align 8
  %31 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %30, i32 0, i32 0
  %32 = load %struct.qla_qpair_hint*, %struct.qla_qpair_hint** %31, align 8
  %33 = getelementptr inbounds %struct.qla_qpair_hint, %struct.qla_qpair_hint* %32, i64 0
  store %struct.qla_qpair_hint* %33, %struct.qla_qpair_hint** %6, align 8
  br label %34

34:                                               ; preds = %29, %28
  %35 = load %struct.qla_qpair_hint*, %struct.qla_qpair_hint** %6, align 8
  ret %struct.qla_qpair_hint* %35
}

declare dso_local %struct.qla_qpair_hint* @btree_lookup64(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
