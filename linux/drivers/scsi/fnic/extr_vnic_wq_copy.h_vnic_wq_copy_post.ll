; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_vnic_wq_copy.h_vnic_wq_copy_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_vnic_wq_copy.h_vnic_wq_copy_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_wq_copy = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnic_wq_copy*)* @vnic_wq_copy_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnic_wq_copy_post(%struct.vnic_wq_copy* %0) #0 {
  %2 = alloca %struct.vnic_wq_copy*, align 8
  store %struct.vnic_wq_copy* %0, %struct.vnic_wq_copy** %2, align 8
  %3 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %2, align 8
  %4 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add nsw i64 %5, 1
  %7 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %2, align 8
  %8 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %6, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %2, align 8
  %14 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  br label %20

15:                                               ; preds = %1
  %16 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %2, align 8
  %17 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %17, align 8
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi i64 [ 0, %12 ], [ %18, %15 ]
  %22 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %2, align 8
  %23 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 8
  %27 = call i32 (...) @wmb()
  %28 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %2, align 8
  %29 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %2, align 8
  %32 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @iowrite32(i64 %30, i32* %34)
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @iowrite32(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
