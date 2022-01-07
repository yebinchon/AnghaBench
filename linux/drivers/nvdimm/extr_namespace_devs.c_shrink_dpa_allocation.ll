; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_shrink_dpa_allocation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_shrink_dpa_allocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_region = type { i32, %struct.nd_mapping* }
%struct.nd_mapping = type { i32 }
%struct.nd_label_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nd_region*, %struct.nd_label_id*, i32)* @shrink_dpa_allocation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shrink_dpa_allocation(%struct.nd_region* %0, %struct.nd_label_id* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nd_region*, align 8
  %6 = alloca %struct.nd_label_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nd_mapping*, align 8
  %10 = alloca i32, align 4
  store %struct.nd_region* %0, %struct.nd_region** %5, align 8
  store %struct.nd_label_id* %1, %struct.nd_label_id** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %34, %3
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.nd_region*, %struct.nd_region** %5, align 8
  %14 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %11
  %18 = load %struct.nd_region*, %struct.nd_region** %5, align 8
  %19 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %18, i32 0, i32 1
  %20 = load %struct.nd_mapping*, %struct.nd_mapping** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %20, i64 %22
  store %struct.nd_mapping* %23, %struct.nd_mapping** %9, align 8
  %24 = load %struct.nd_region*, %struct.nd_region** %5, align 8
  %25 = load %struct.nd_mapping*, %struct.nd_mapping** %9, align 8
  %26 = load %struct.nd_label_id*, %struct.nd_label_id** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @scan_free(%struct.nd_region* %24, %struct.nd_mapping* %25, %struct.nd_label_id* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %17
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  br label %38

33:                                               ; preds = %17
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %11

37:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %31
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @scan_free(%struct.nd_region*, %struct.nd_mapping*, %struct.nd_label_id*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
