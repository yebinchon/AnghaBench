; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_dax_devs.c_nd_dax_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_dax_devs.c_nd_dax_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nd_region = type { i32 }
%struct.nd_dax = type { %struct.nd_pfn }
%struct.nd_pfn = type { %struct.nd_dax*, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"trace\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @nd_dax_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nd_dax_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.nd_region*, align 8
  %4 = alloca %struct.nd_dax*, align 8
  %5 = alloca %struct.nd_pfn*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.nd_region* @to_nd_region(i32 %8)
  store %struct.nd_region* %9, %struct.nd_region** %3, align 8
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = call %struct.nd_dax* @to_nd_dax(%struct.device* %10)
  store %struct.nd_dax* %11, %struct.nd_dax** %4, align 8
  %12 = load %struct.nd_dax*, %struct.nd_dax** %4, align 8
  %13 = getelementptr inbounds %struct.nd_dax, %struct.nd_dax* %12, i32 0, i32 0
  store %struct.nd_pfn* %13, %struct.nd_pfn** %5, align 8
  %14 = load %struct.device*, %struct.device** %2, align 8
  %15 = call i32 @dev_dbg(%struct.device* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.device*, %struct.device** %2, align 8
  %17 = load %struct.nd_pfn*, %struct.nd_pfn** %5, align 8
  %18 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %17, i32 0, i32 2
  %19 = call i32 @nd_detach_ndns(%struct.device* %16, i32* %18)
  %20 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %21 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %20, i32 0, i32 0
  %22 = load %struct.nd_pfn*, %struct.nd_pfn** %5, align 8
  %23 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ida_simple_remove(i32* %21, i32 %24)
  %26 = load %struct.nd_pfn*, %struct.nd_pfn** %5, align 8
  %27 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %26, i32 0, i32 0
  %28 = load %struct.nd_dax*, %struct.nd_dax** %27, align 8
  %29 = call i32 @kfree(%struct.nd_dax* %28)
  %30 = load %struct.nd_dax*, %struct.nd_dax** %4, align 8
  %31 = call i32 @kfree(%struct.nd_dax* %30)
  ret void
}

declare dso_local %struct.nd_region* @to_nd_region(i32) #1

declare dso_local %struct.nd_dax* @to_nd_dax(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @nd_detach_ndns(%struct.device*, i32*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.nd_dax*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
