; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_get_ns_from_disk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_get_ns_from_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { i32 }
%struct.gendisk = type { %struct.nvme_ns_head*, i32* }
%struct.nvme_ns_head = type { i32 }

@nvme_ns_head_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvme_ns* (%struct.gendisk*, %struct.nvme_ns_head**, i32*)* @nvme_get_ns_from_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvme_ns* @nvme_get_ns_from_disk(%struct.gendisk* %0, %struct.nvme_ns_head** %1, i32* %2) #0 {
  %4 = alloca %struct.gendisk*, align 8
  %5 = alloca %struct.nvme_ns_head**, align 8
  %6 = alloca i32*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %4, align 8
  store %struct.nvme_ns_head** %1, %struct.nvme_ns_head*** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.nvme_ns_head**, %struct.nvme_ns_head*** %5, align 8
  store %struct.nvme_ns_head* null, %struct.nvme_ns_head** %7, align 8
  %8 = load i32*, i32** %6, align 8
  store i32 -1, i32* %8, align 4
  %9 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %10 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %9, i32 0, i32 0
  %11 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %10, align 8
  %12 = bitcast %struct.nvme_ns_head* %11 to %struct.nvme_ns*
  ret %struct.nvme_ns* %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
