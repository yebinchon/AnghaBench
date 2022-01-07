; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_label.c_nd_label_free_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_label.c_nd_label_free_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_drvdata = type { i32 }
%struct.nd_namespace_index = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nd_label_free_slot(%struct.nvdimm_drvdata* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvdimm_drvdata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.nd_namespace_index*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store %struct.nvdimm_drvdata* %0, %struct.nvdimm_drvdata** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %4, align 8
  %10 = call i32 @preamble_next(%struct.nvdimm_drvdata* %9, %struct.nd_namespace_index** %6, i64** %7, i64* %8)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

13:                                               ; preds = %2
  %14 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %4, align 8
  %15 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @is_nvdimm_bus_locked(i32 %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %13
  %26 = load i64, i64* %5, align 8
  %27 = load i64*, i64** %7, align 8
  %28 = call i32 @test_and_set_bit_le(i64 %26, i64* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %3, align 4
  br label %33

32:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %25, %12
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @preamble_next(%struct.nvdimm_drvdata*, %struct.nd_namespace_index**, i64**, i64*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @is_nvdimm_bus_locked(i32) #1

declare dso_local i32 @test_and_set_bit_le(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
