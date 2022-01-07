; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_label.c_nd_label_alloc_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_label.c_nd_label_alloc_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_drvdata = type { i32 }
%struct.nd_namespace_index = type { i32 }

@UINT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nd_label_alloc_slot(%struct.nvdimm_drvdata* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.nvdimm_drvdata*, align 8
  %4 = alloca %struct.nd_namespace_index*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.nvdimm_drvdata* %0, %struct.nvdimm_drvdata** %3, align 8
  %8 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %3, align 8
  %9 = call i32 @preamble_next(%struct.nvdimm_drvdata* %8, %struct.nd_namespace_index** %4, i64** %5, i64* %6)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* @UINT_MAX, align 8
  store i64 %12, i64* %2, align 8
  br label %35

13:                                               ; preds = %1
  %14 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %3, align 8
  %15 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @is_nvdimm_bus_locked(i32 %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load i64*, i64** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @find_next_bit_le(i64* %22, i64 %23, i32 0)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %13
  %29 = load i64, i64* @UINT_MAX, align 8
  store i64 %29, i64* %2, align 8
  br label %35

30:                                               ; preds = %13
  %31 = load i64, i64* %7, align 8
  %32 = load i64*, i64** %5, align 8
  %33 = call i32 @clear_bit_le(i64 %31, i64* %32)
  %34 = load i64, i64* %7, align 8
  store i64 %34, i64* %2, align 8
  br label %35

35:                                               ; preds = %30, %28, %11
  %36 = load i64, i64* %2, align 8
  ret i64 %36
}

declare dso_local i32 @preamble_next(%struct.nvdimm_drvdata*, %struct.nd_namespace_index**, i64**, i64*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @is_nvdimm_bus_locked(i32) #1

declare dso_local i64 @find_next_bit_le(i64*, i64, i32) #1

declare dso_local i32 @clear_bit_le(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
