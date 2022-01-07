; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_get_sqe_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_get_sqe_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_rport = type { i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @qedf_get_sqe_idx(%struct.qedf_rport* %0) #0 {
  %2 = alloca %struct.qedf_rport*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.qedf_rport* %0, %struct.qedf_rport** %2, align 8
  %5 = load %struct.qedf_rport*, %struct.qedf_rport** %2, align 8
  %6 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sext i32 %7 to i64
  %9 = udiv i64 %8, 4
  store i64 %9, i64* %3, align 8
  %10 = load %struct.qedf_rport*, %struct.qedf_rport** %2, align 8
  %11 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %4, align 8
  %13 = load %struct.qedf_rport*, %struct.qedf_rport** %2, align 8
  %14 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %14, align 8
  %17 = load %struct.qedf_rport*, %struct.qedf_rport** %2, align 8
  %18 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 8
  %21 = load %struct.qedf_rport*, %struct.qedf_rport** %2, align 8
  %22 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.qedf_rport*, %struct.qedf_rport** %2, align 8
  %28 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %26, %1
  %30 = load i64, i64* %4, align 8
  ret i64 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
