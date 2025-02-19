; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_dimm.c_nvdimm_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_dimm.c_nvdimm_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nvdimm_drvdata = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @nvdimm_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvdimm_remove(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.nvdimm_drvdata*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = call %struct.nvdimm_drvdata* @dev_get_drvdata(%struct.device* %5)
  store %struct.nvdimm_drvdata* %6, %struct.nvdimm_drvdata** %4, align 8
  %7 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %4, align 8
  %8 = icmp ne %struct.nvdimm_drvdata* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

10:                                               ; preds = %1
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call i32 @nvdimm_bus_lock(%struct.device* %11)
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call i32 @dev_set_drvdata(%struct.device* %13, i32* null)
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call i32 @nvdimm_bus_unlock(%struct.device* %15)
  %17 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %4, align 8
  %18 = call i32 @put_ndd(%struct.nvdimm_drvdata* %17)
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %10, %9
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local %struct.nvdimm_drvdata* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @nvdimm_bus_lock(%struct.device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, i32*) #1

declare dso_local i32 @nvdimm_bus_unlock(%struct.device*) #1

declare dso_local i32 @put_ndd(%struct.nvdimm_drvdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
