; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pmem.c_nd_pmem_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pmem.c_nd_pmem_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pmem_device = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @nd_pmem_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nd_pmem_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.pmem_device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.pmem_device* @dev_get_drvdata(%struct.device* %4)
  store %struct.pmem_device* %5, %struct.pmem_device** %3, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call i64 @is_nd_btt(%struct.device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = call i32 @to_nd_btt(%struct.device* %10)
  %12 = call i32 @nvdimm_namespace_detach_btt(i32 %11)
  br label %20

13:                                               ; preds = %1
  %14 = load %struct.pmem_device*, %struct.pmem_device** %3, align 8
  %15 = getelementptr inbounds %struct.pmem_device, %struct.pmem_device* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @sysfs_put(i32* %16)
  %18 = load %struct.pmem_device*, %struct.pmem_device** %3, align 8
  %19 = getelementptr inbounds %struct.pmem_device, %struct.pmem_device* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %13, %9
  %21 = load %struct.device*, %struct.device** %2, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @to_nd_region(i32 %23)
  %25 = call i32 @nvdimm_flush(i32 %24, i32* null)
  ret i32 0
}

declare dso_local %struct.pmem_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @is_nd_btt(%struct.device*) #1

declare dso_local i32 @nvdimm_namespace_detach_btt(i32) #1

declare dso_local i32 @to_nd_btt(%struct.device*) #1

declare dso_local i32 @sysfs_put(i32*) #1

declare dso_local i32 @nvdimm_flush(i32, i32*) #1

declare dso_local i32 @to_nd_region(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
