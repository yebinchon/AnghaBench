; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c___nvdimm_namespace_capacity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c___nvdimm_namespace_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_namespace_common = type { %struct.device }
%struct.device = type { i32 }
%struct.nd_namespace_pmem = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nd_namespace_io = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"unknown namespace type\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__nvdimm_namespace_capacity(%struct.nd_namespace_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nd_namespace_common*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.nd_namespace_pmem*, align 8
  %6 = alloca %struct.nd_namespace_io*, align 8
  store %struct.nd_namespace_common* %0, %struct.nd_namespace_common** %3, align 8
  %7 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %3, align 8
  %8 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call i64 @is_namespace_pmem(%struct.device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.nd_namespace_pmem* @to_nd_namespace_pmem(%struct.device* %13)
  store %struct.nd_namespace_pmem* %14, %struct.nd_namespace_pmem** %5, align 8
  %15 = load %struct.nd_namespace_pmem*, %struct.nd_namespace_pmem** %5, align 8
  %16 = getelementptr inbounds %struct.nd_namespace_pmem, %struct.nd_namespace_pmem* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @resource_size(i32* %17)
  store i32 %18, i32* %2, align 4
  br label %42

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i64 @is_namespace_blk(%struct.device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 @to_nd_namespace_blk(%struct.device* %24)
  %26 = call i32 @nd_namespace_blk_size(i32 %25)
  store i32 %26, i32* %2, align 4
  br label %42

27:                                               ; preds = %19
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = call i64 @is_namespace_io(%struct.device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call %struct.nd_namespace_io* @to_nd_namespace_io(%struct.device* %32)
  store %struct.nd_namespace_io* %33, %struct.nd_namespace_io** %6, align 8
  %34 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %6, align 8
  %35 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %34, i32 0, i32 0
  %36 = call i32 @resource_size(i32* %35)
  store i32 %36, i32* %2, align 4
  br label %42

37:                                               ; preds = %27
  %38 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %31, %23, %12
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @is_namespace_pmem(%struct.device*) #1

declare dso_local %struct.nd_namespace_pmem* @to_nd_namespace_pmem(%struct.device*) #1

declare dso_local i32 @resource_size(i32*) #1

declare dso_local i64 @is_namespace_blk(%struct.device*) #1

declare dso_local i32 @nd_namespace_blk_size(i32) #1

declare dso_local i32 @to_nd_namespace_blk(%struct.device*) #1

declare dso_local i64 @is_namespace_io(%struct.device*) #1

declare dso_local %struct.nd_namespace_io* @to_nd_namespace_io(%struct.device*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
