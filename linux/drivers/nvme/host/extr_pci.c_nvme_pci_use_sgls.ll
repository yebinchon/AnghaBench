; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_pci_use_sgls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_pci_use_sgls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.request = type { i32 }
%struct.nvme_iod = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@sgl_threshold = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_dev*, %struct.request*)* @nvme_pci_use_sgls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_pci_use_sgls(%struct.nvme_dev* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_dev*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.nvme_iod*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nvme_dev* %0, %struct.nvme_dev** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %9 = load %struct.request*, %struct.request** %5, align 8
  %10 = call %struct.nvme_iod* @blk_mq_rq_to_pdu(%struct.request* %9)
  store %struct.nvme_iod* %10, %struct.nvme_iod** %6, align 8
  %11 = load %struct.request*, %struct.request** %5, align 8
  %12 = call i32 @blk_rq_nr_phys_segments(%struct.request* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

16:                                               ; preds = %2
  %17 = load %struct.request*, %struct.request** %5, align 8
  %18 = call i32 @blk_rq_payload_bytes(%struct.request* %17)
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @DIV_ROUND_UP(i32 %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.nvme_dev*, %struct.nvme_dev** %4, align 8
  %22 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 3
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %45

28:                                               ; preds = %16
  %29 = load %struct.nvme_iod*, %struct.nvme_iod** %6, align 8
  %30 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %45

36:                                               ; preds = %28
  %37 = load i32, i32* @sgl_threshold, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @sgl_threshold, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %36
  store i32 0, i32* %3, align 4
  br label %45

44:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %43, %35, %27, %15
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.nvme_iod* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @blk_rq_nr_phys_segments(%struct.request*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @blk_rq_payload_bytes(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
