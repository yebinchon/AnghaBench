; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_claim.c_nd_detach_and_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_claim.c_nd_detach_and_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nd_namespace_common = type { i32 }
%struct.nd_btt = type { i32*, i64 }
%struct.nd_pfn = type { i32, i32* }

@ND_ASYNC = common dso_local global i32 0, align 4
@PFN_MODE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.nd_namespace_common**)* @nd_detach_and_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nd_detach_and_reset(%struct.device* %0, %struct.nd_namespace_common** %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.nd_namespace_common**, align 8
  %5 = alloca %struct.nd_btt*, align 8
  %6 = alloca %struct.nd_pfn*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.nd_namespace_common** %1, %struct.nd_namespace_common*** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = load %struct.nd_namespace_common**, %struct.nd_namespace_common*** %4, align 8
  %9 = call i32 @__nd_detach_ndns(%struct.device* %7, %struct.nd_namespace_common** %8)
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = load %struct.nd_namespace_common**, %struct.nd_namespace_common*** %4, align 8
  %12 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %11, align 8
  %13 = call i64 @is_idle(%struct.device* %10, %struct.nd_namespace_common* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = load i32, i32* @ND_ASYNC, align 4
  %18 = call i32 @nd_device_unregister(%struct.device* %16, i32 %17)
  br label %56

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = call i64 @is_nd_btt(%struct.device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = call %struct.nd_btt* @to_nd_btt(%struct.device* %24)
  store %struct.nd_btt* %25, %struct.nd_btt** %5, align 8
  %26 = load %struct.nd_btt*, %struct.nd_btt** %5, align 8
  %27 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.nd_btt*, %struct.nd_btt** %5, align 8
  %29 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @kfree(i32* %30)
  %32 = load %struct.nd_btt*, %struct.nd_btt** %5, align 8
  %33 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  br label %55

34:                                               ; preds = %19
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = call i64 @is_nd_pfn(%struct.device* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load %struct.device*, %struct.device** %3, align 8
  %40 = call i64 @is_nd_dax(%struct.device* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %38, %34
  %43 = load %struct.device*, %struct.device** %3, align 8
  %44 = call %struct.nd_pfn* @to_nd_pfn_safe(%struct.device* %43)
  store %struct.nd_pfn* %44, %struct.nd_pfn** %6, align 8
  %45 = load %struct.nd_pfn*, %struct.nd_pfn** %6, align 8
  %46 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @kfree(i32* %47)
  %49 = load %struct.nd_pfn*, %struct.nd_pfn** %6, align 8
  %50 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %49, i32 0, i32 1
  store i32* null, i32** %50, align 8
  %51 = load i32, i32* @PFN_MODE_NONE, align 4
  %52 = load %struct.nd_pfn*, %struct.nd_pfn** %6, align 8
  %53 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %42, %38
  br label %55

55:                                               ; preds = %54, %23
  br label %56

56:                                               ; preds = %55, %15
  ret void
}

declare dso_local i32 @__nd_detach_ndns(%struct.device*, %struct.nd_namespace_common**) #1

declare dso_local i64 @is_idle(%struct.device*, %struct.nd_namespace_common*) #1

declare dso_local i32 @nd_device_unregister(%struct.device*, i32) #1

declare dso_local i64 @is_nd_btt(%struct.device*) #1

declare dso_local %struct.nd_btt* @to_nd_btt(%struct.device*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i64 @is_nd_pfn(%struct.device*) #1

declare dso_local i64 @is_nd_dax(%struct.device*) #1

declare dso_local %struct.nd_pfn* @to_nd_pfn_safe(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
