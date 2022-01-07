; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_label.c_nd_label_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_label.c_nd_label_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_drvdata = type { i32 }
%struct.nd_namespace_label = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nvdimm_drvdata*, %struct.nd_namespace_label*)* @nd_label_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nd_label_offset(%struct.nvdimm_drvdata* %0, %struct.nd_namespace_label* %1) #0 {
  %3 = alloca %struct.nvdimm_drvdata*, align 8
  %4 = alloca %struct.nd_namespace_label*, align 8
  store %struct.nvdimm_drvdata* %0, %struct.nvdimm_drvdata** %3, align 8
  store %struct.nd_namespace_label* %1, %struct.nd_namespace_label** %4, align 8
  %5 = load %struct.nd_namespace_label*, %struct.nd_namespace_label** %4, align 8
  %6 = ptrtoint %struct.nd_namespace_label* %5 to i64
  %7 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %3, align 8
  %8 = call i64 @to_namespace_index(%struct.nvdimm_drvdata* %7, i32 0)
  %9 = sub i64 %6, %8
  ret i64 %9
}

declare dso_local i64 @to_namespace_index(%struct.nvdimm_drvdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
