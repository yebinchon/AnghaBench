; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_scsi.c_is_ack_index_in_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_scsi.c_is_ack_index_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_wq_copy = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnic_wq_copy*, i64)* @is_ack_index_in_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_ack_index_in_range(%struct.vnic_wq_copy* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnic_wq_copy*, align 8
  %5 = alloca i64, align 8
  store %struct.vnic_wq_copy* %0, %struct.vnic_wq_copy** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %4, align 8
  %7 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %4, align 8
  %10 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp sle i64 %8, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %4, align 8
  %16 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %4, align 8
  %22 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %13
  store i32 0, i32* %3, align 4
  br label %42

26:                                               ; preds = %19
  br label %41

27:                                               ; preds = %2
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %4, align 8
  %30 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %4, align 8
  %36 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %42

40:                                               ; preds = %33, %27
  br label %41

41:                                               ; preds = %40, %26
  store i32 1, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %39, %25
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
