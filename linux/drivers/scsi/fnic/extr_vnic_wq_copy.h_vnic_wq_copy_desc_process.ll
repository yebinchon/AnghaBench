; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_vnic_wq_copy.h_vnic_wq_copy_desc_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_vnic_wq_copy.h_vnic_wq_copy_desc_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_wq_copy = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnic_wq_copy*, i32)* @vnic_wq_copy_desc_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnic_wq_copy_desc_process(%struct.vnic_wq_copy* %0, i32 %1) #0 {
  %3 = alloca %struct.vnic_wq_copy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vnic_wq_copy* %0, %struct.vnic_wq_copy** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %3, align 8
  %7 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %3, align 8
  %14 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %12, %15
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  br label %30

18:                                               ; preds = %2
  %19 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %3, align 8
  %20 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %3, align 8
  %24 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %22, %25
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %26, %27
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %18, %11
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  %33 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %3, align 8
  %34 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = srem i32 %32, %36
  %38 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %3, align 8
  %39 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %3, align 8
  %42 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add i32 %44, %40
  store i32 %45, i32* %43, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
