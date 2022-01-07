; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_label.c_nd_label_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_label.c_nd_label_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_drvdata = type { i32 }
%struct.nd_namespace_index = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvdimm_drvdata*, %struct.nd_namespace_index*, %struct.nd_namespace_index*)* @nd_label_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nd_label_copy(%struct.nvdimm_drvdata* %0, %struct.nd_namespace_index* %1, %struct.nd_namespace_index* %2) #0 {
  %4 = alloca %struct.nvdimm_drvdata*, align 8
  %5 = alloca %struct.nd_namespace_index*, align 8
  %6 = alloca %struct.nd_namespace_index*, align 8
  store %struct.nvdimm_drvdata* %0, %struct.nvdimm_drvdata** %4, align 8
  store %struct.nd_namespace_index* %1, %struct.nd_namespace_index** %5, align 8
  store %struct.nd_namespace_index* %2, %struct.nd_namespace_index** %6, align 8
  %7 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %5, align 8
  %8 = icmp ne %struct.nd_namespace_index* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %6, align 8
  %11 = icmp ne %struct.nd_namespace_index* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %3
  br label %19

13:                                               ; preds = %9
  %14 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %5, align 8
  %15 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %6, align 8
  %16 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %4, align 8
  %17 = call i32 @sizeof_namespace_index(%struct.nvdimm_drvdata* %16)
  %18 = call i32 @memcpy(%struct.nd_namespace_index* %14, %struct.nd_namespace_index* %15, i32 %17)
  br label %19

19:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @memcpy(%struct.nd_namespace_index*, %struct.nd_namespace_index*, i32) #1

declare dso_local i32 @sizeof_namespace_index(%struct.nvdimm_drvdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
