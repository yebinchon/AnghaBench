; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_nd_region_interleave_set_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_nd_region_interleave_set_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_region = type { %struct.nd_interleave_set* }
%struct.nd_interleave_set = type { i32, i32 }
%struct.nd_namespace_index = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nd_region_interleave_set_cookie(%struct.nd_region* %0, %struct.nd_namespace_index* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nd_region*, align 8
  %5 = alloca %struct.nd_namespace_index*, align 8
  %6 = alloca %struct.nd_interleave_set*, align 8
  store %struct.nd_region* %0, %struct.nd_region** %4, align 8
  store %struct.nd_namespace_index* %1, %struct.nd_namespace_index** %5, align 8
  %7 = load %struct.nd_region*, %struct.nd_region** %4, align 8
  %8 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %7, i32 0, i32 0
  %9 = load %struct.nd_interleave_set*, %struct.nd_interleave_set** %8, align 8
  store %struct.nd_interleave_set* %9, %struct.nd_interleave_set** %6, align 8
  %10 = load %struct.nd_interleave_set*, %struct.nd_interleave_set** %6, align 8
  %11 = icmp ne %struct.nd_interleave_set* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

13:                                               ; preds = %2
  %14 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %5, align 8
  %15 = icmp ne %struct.nd_namespace_index* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %5, align 8
  %18 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @__le16_to_cpu(i32 %19)
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %5, align 8
  %24 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @__le16_to_cpu(i32 %25)
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.nd_interleave_set*, %struct.nd_interleave_set** %6, align 8
  %30 = getelementptr inbounds %struct.nd_interleave_set, %struct.nd_interleave_set* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %3, align 4
  br label %36

32:                                               ; preds = %22, %16, %13
  %33 = load %struct.nd_interleave_set*, %struct.nd_interleave_set** %6, align 8
  %34 = getelementptr inbounds %struct.nd_interleave_set, %struct.nd_interleave_set* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %28, %12
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @__le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
