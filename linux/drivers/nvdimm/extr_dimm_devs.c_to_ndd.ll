; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_dimm_devs.c_to_ndd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_dimm_devs.c_to_ndd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_drvdata = type { i32 }
%struct.nd_mapping = type { %struct.nvdimm* }
%struct.nvdimm = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nvdimm_drvdata* @to_ndd(%struct.nd_mapping* %0) #0 {
  %2 = alloca %struct.nd_mapping*, align 8
  %3 = alloca %struct.nvdimm*, align 8
  store %struct.nd_mapping* %0, %struct.nd_mapping** %2, align 8
  %4 = load %struct.nd_mapping*, %struct.nd_mapping** %2, align 8
  %5 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %4, i32 0, i32 0
  %6 = load %struct.nvdimm*, %struct.nvdimm** %5, align 8
  store %struct.nvdimm* %6, %struct.nvdimm** %3, align 8
  %7 = load %struct.nvdimm*, %struct.nvdimm** %3, align 8
  %8 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %7, i32 0, i32 0
  %9 = call i32 @is_nvdimm_bus_locked(i32* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON_ONCE(i32 %12)
  %14 = load %struct.nvdimm*, %struct.nvdimm** %3, align 8
  %15 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %14, i32 0, i32 0
  %16 = call %struct.nvdimm_drvdata* @dev_get_drvdata(i32* %15)
  ret %struct.nvdimm_drvdata* %16
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @is_nvdimm_bus_locked(i32*) #1

declare dso_local %struct.nvdimm_drvdata* @dev_get_drvdata(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
