; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nd_bus_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nd_bus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nvdimm_bus = type { i32, i32 }

@nvdimm_bus_list_mutex = common dso_local global i32 0, align 4
@nvdimm_bus_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @nd_bus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nd_bus_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.nvdimm_bus*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.nvdimm_bus* @to_nvdimm_bus(%struct.device* %6)
  store %struct.nvdimm_bus* %7, %struct.nvdimm_bus** %4, align 8
  %8 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %4, align 8
  %9 = call i32 @nvdimm_bus_create_ndctl(%struct.nvdimm_bus* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %25

14:                                               ; preds = %1
  %15 = call i32 @mutex_lock(i32* @nvdimm_bus_list_mutex)
  %16 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %4, align 8
  %17 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %16, i32 0, i32 1
  %18 = call i32 @list_add_tail(i32* %17, i32* @nvdimm_bus_list)
  %19 = call i32 @mutex_unlock(i32* @nvdimm_bus_list_mutex)
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %4, align 8
  %22 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_set_drvdata(%struct.device* %20, i32 %23)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %14, %12
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.nvdimm_bus* @to_nvdimm_bus(%struct.device*) #1

declare dso_local i32 @nvdimm_bus_create_ndctl(%struct.nvdimm_bus*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
