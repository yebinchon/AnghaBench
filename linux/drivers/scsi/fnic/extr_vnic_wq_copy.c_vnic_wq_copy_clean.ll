; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_vnic_wq_copy.c_vnic_wq_copy_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_vnic_wq_copy.c_vnic_wq_copy_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_wq_copy = type { i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.fcpio_host_req = type opaque
%struct.fcpio_host_req.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnic_wq_copy_clean(%struct.vnic_wq_copy* %0, void (%struct.vnic_wq_copy*, %struct.fcpio_host_req*)* %1) #0 {
  %3 = alloca %struct.vnic_wq_copy*, align 8
  %4 = alloca void (%struct.vnic_wq_copy*, %struct.fcpio_host_req*)*, align 8
  store %struct.vnic_wq_copy* %0, %struct.vnic_wq_copy** %3, align 8
  store void (%struct.vnic_wq_copy*, %struct.fcpio_host_req*)* %1, void (%struct.vnic_wq_copy*, %struct.fcpio_host_req*)** %4, align 8
  %5 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %3, align 8
  %6 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 3
  %9 = call i32 @ioread32(i32* %8)
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %3, align 8
  %12 = call i64 @vnic_wq_copy_desc_in_use(%struct.vnic_wq_copy* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %3, align 8
  %16 = load void (%struct.vnic_wq_copy*, %struct.fcpio_host_req*)*, void (%struct.vnic_wq_copy*, %struct.fcpio_host_req*)** %4, align 8
  %17 = bitcast void (%struct.vnic_wq_copy*, %struct.fcpio_host_req*)* %16 to void (%struct.vnic_wq_copy*, %struct.fcpio_host_req.0*)*
  %18 = call i32 @vnic_wq_copy_service(%struct.vnic_wq_copy* %15, i32 -1, void (%struct.vnic_wq_copy*, %struct.fcpio_host_req.0*)* %17)
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %3, align 8
  %21 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %3, align 8
  %23 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %3, align 8
  %25 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = call i32 @iowrite32(i32 0, i32* %27)
  %29 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %3, align 8
  %30 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = call i32 @iowrite32(i32 0, i32* %32)
  %34 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %3, align 8
  %35 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @iowrite32(i32 0, i32* %37)
  %39 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %3, align 8
  %40 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %39, i32 0, i32 0
  %41 = call i32 @vnic_dev_clear_desc_ring(i32* %40)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i64 @vnic_wq_copy_desc_in_use(%struct.vnic_wq_copy*) #1

declare dso_local i32 @vnic_wq_copy_service(%struct.vnic_wq_copy*, i32, void (%struct.vnic_wq_copy*, %struct.fcpio_host_req.0*)*) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @vnic_dev_clear_desc_ring(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
