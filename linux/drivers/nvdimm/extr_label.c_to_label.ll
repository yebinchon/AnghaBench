; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_label.c_to_label.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_label.c_to_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_namespace_label = type { i32 }
%struct.nvdimm_drvdata = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nd_namespace_label* (%struct.nvdimm_drvdata*, i32)* @to_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nd_namespace_label* @to_label(%struct.nvdimm_drvdata* %0, i32 %1) #0 {
  %3 = alloca %struct.nvdimm_drvdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.nvdimm_drvdata* %0, %struct.nvdimm_drvdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %3, align 8
  %8 = call i64 @nd_label_base(%struct.nvdimm_drvdata* %7)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %3, align 8
  %11 = call i32 @sizeof_namespace_label(%struct.nvdimm_drvdata* %10)
  %12 = load i32, i32* %4, align 4
  %13 = mul nsw i32 %11, %12
  %14 = sext i32 %13 to i64
  %15 = add i64 %9, %14
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = inttoptr i64 %16 to %struct.nd_namespace_label*
  ret %struct.nd_namespace_label* %17
}

declare dso_local i64 @nd_label_base(%struct.nvdimm_drvdata*) #1

declare dso_local i32 @sizeof_namespace_label(%struct.nvdimm_drvdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
