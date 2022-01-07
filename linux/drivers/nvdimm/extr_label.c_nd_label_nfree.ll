; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_label.c_nd_label_nfree.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_label.c_nd_label_nfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_drvdata = type { i32 }
%struct.nd_namespace_index = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nd_label_nfree(%struct.nvdimm_drvdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvdimm_drvdata*, align 8
  %4 = alloca %struct.nd_namespace_index*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store %struct.nvdimm_drvdata* %0, %struct.nvdimm_drvdata** %3, align 8
  %7 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %3, align 8
  %8 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @is_nvdimm_bus_locked(i32 %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %3, align 8
  %16 = call i32 @preamble_next(%struct.nvdimm_drvdata* %15, %struct.nd_namespace_index** %4, i64** %5, i32* %6)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %3, align 8
  %20 = call i32 @nvdimm_num_label_slots(%struct.nvdimm_drvdata* %19)
  store i32 %20, i32* %2, align 4
  br label %25

21:                                               ; preds = %1
  %22 = load i64*, i64** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @bitmap_weight(i64* %22, i32 %23)
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %21, %18
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @is_nvdimm_bus_locked(i32) #1

declare dso_local i32 @preamble_next(%struct.nvdimm_drvdata*, %struct.nd_namespace_index**, i64**, i32*) #1

declare dso_local i32 @nvdimm_num_label_slots(%struct.nvdimm_drvdata*) #1

declare dso_local i32 @bitmap_weight(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
