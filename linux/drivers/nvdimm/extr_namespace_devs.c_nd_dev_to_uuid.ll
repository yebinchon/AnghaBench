; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_nd_dev_to_uuid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_nd_dev_to_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nd_namespace_pmem = type { i32* }
%struct.nd_namespace_blk = type { i32* }

@nd_dev_to_uuid.null_uuid = internal constant [16 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @nd_dev_to_uuid(%struct.device* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.nd_namespace_pmem*, align 8
  %5 = alloca %struct.nd_namespace_blk*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = icmp ne %struct.device* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32* getelementptr inbounds ([16 x i32], [16 x i32]* @nd_dev_to_uuid.null_uuid, i64 0, i64 0), i32** %2, align 8
  br label %30

9:                                                ; preds = %1
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call i64 @is_namespace_pmem(%struct.device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = call %struct.nd_namespace_pmem* @to_nd_namespace_pmem(%struct.device* %14)
  store %struct.nd_namespace_pmem* %15, %struct.nd_namespace_pmem** %4, align 8
  %16 = load %struct.nd_namespace_pmem*, %struct.nd_namespace_pmem** %4, align 8
  %17 = getelementptr inbounds %struct.nd_namespace_pmem, %struct.nd_namespace_pmem* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %2, align 8
  br label %30

19:                                               ; preds = %9
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = call i64 @is_namespace_blk(%struct.device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = call %struct.nd_namespace_blk* @to_nd_namespace_blk(%struct.device* %24)
  store %struct.nd_namespace_blk* %25, %struct.nd_namespace_blk** %5, align 8
  %26 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %5, align 8
  %27 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %2, align 8
  br label %30

29:                                               ; preds = %19
  store i32* getelementptr inbounds ([16 x i32], [16 x i32]* @nd_dev_to_uuid.null_uuid, i64 0, i64 0), i32** %2, align 8
  br label %30

30:                                               ; preds = %29, %23, %13, %8
  %31 = load i32*, i32** %2, align 8
  ret i32* %31
}

declare dso_local i64 @is_namespace_pmem(%struct.device*) #1

declare dso_local %struct.nd_namespace_pmem* @to_nd_namespace_pmem(%struct.device*) #1

declare dso_local i64 @is_namespace_blk(%struct.device*) #1

declare dso_local %struct.nd_namespace_blk* @to_nd_namespace_blk(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
