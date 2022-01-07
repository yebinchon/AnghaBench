; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_label.c_nvdimm_num_label_slots.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_label.c_nvdimm_num_label_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_drvdata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NSINDEX_ALIGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvdimm_num_label_slots(%struct.nvdimm_drvdata* %0) #0 {
  %2 = alloca %struct.nvdimm_drvdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.nvdimm_drvdata* %0, %struct.nvdimm_drvdata** %2, align 8
  %5 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %2, align 8
  %6 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %2, align 8
  %10 = call i32 @sizeof_namespace_label(%struct.nvdimm_drvdata* %9)
  %11 = sdiv i32 %8, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @__sizeof_namespace_index(i32 %12)
  %14 = load i32, i32* @NSINDEX_ALIGN, align 4
  %15 = sdiv i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %2, align 8
  %17 = load i32, i32* @NSINDEX_ALIGN, align 4
  %18 = load i32, i32* %4, align 4
  %19 = mul nsw i32 %17, %18
  %20 = call i32 @__nvdimm_num_label_slots(%struct.nvdimm_drvdata* %16, i32 %19)
  ret i32 %20
}

declare dso_local i32 @sizeof_namespace_label(%struct.nvdimm_drvdata*) #1

declare dso_local i32 @__sizeof_namespace_index(i32) #1

declare dso_local i32 @__nvdimm_num_label_slots(%struct.nvdimm_drvdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
