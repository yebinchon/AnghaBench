; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_calc_irq_sets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_calc_irq_sets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_affinity = type { i32*, i32, %struct.nvme_dev* }
%struct.nvme_dev = type { i32* }

@write_queues = common dso_local global i32 0, align 4
@HCTX_TYPE_DEFAULT = common dso_local global i64 0, align 8
@HCTX_TYPE_READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_affinity*, i32)* @nvme_calc_irq_sets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_calc_irq_sets(%struct.irq_affinity* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_affinity*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.irq_affinity* %0, %struct.irq_affinity** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.irq_affinity*, %struct.irq_affinity** %3, align 8
  %8 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %7, i32 0, i32 2
  %9 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  store %struct.nvme_dev* %9, %struct.nvme_dev** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %31

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* @write_queues, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %13
  store i32 0, i32* %6, align 4
  br label %30

20:                                               ; preds = %16
  %21 = load i32, i32* @write_queues, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp uge i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 1, i32* %6, align 4
  br label %29

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @write_queues, align 4
  %28 = sub i32 %26, %27
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %25, %24
  br label %30

30:                                               ; preds = %29, %19
  br label %31

31:                                               ; preds = %30, %12
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sub i32 %32, %33
  %35 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %36 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 %34, i32* %39, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %6, align 4
  %42 = sub i32 %40, %41
  %43 = load %struct.irq_affinity*, %struct.irq_affinity** %3, align 8
  %44 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32 %42, i32* %47, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %50 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @HCTX_TYPE_READ, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32 %48, i32* %53, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.irq_affinity*, %struct.irq_affinity** %3, align 8
  %56 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @HCTX_TYPE_READ, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32 %54, i32* %59, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 2, i32 1
  %64 = load %struct.irq_affinity*, %struct.irq_affinity** %3, align 8
  %65 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
