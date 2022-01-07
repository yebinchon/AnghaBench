; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pfn_devs.c_nd_pfn_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pfn_devs.c_nd_pfn_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nd_region = type { i32 }
%struct.nd_pfn = type { %struct.nd_pfn*, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"trace\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @nd_pfn_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nd_pfn_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.nd_region*, align 8
  %4 = alloca %struct.nd_pfn*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.nd_region* @to_nd_region(i32 %7)
  store %struct.nd_region* %8, %struct.nd_region** %3, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call %struct.nd_pfn* @to_nd_pfn(%struct.device* %9)
  store %struct.nd_pfn* %10, %struct.nd_pfn** %4, align 8
  %11 = load %struct.device*, %struct.device** %2, align 8
  %12 = call i32 @dev_dbg(%struct.device* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %14 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %13, i32 0, i32 3
  %15 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %16 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %15, i32 0, i32 2
  %17 = call i32 @nd_detach_ndns(i32* %14, i32* %16)
  %18 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %19 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %18, i32 0, i32 0
  %20 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %21 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ida_simple_remove(i32* %19, i32 %22)
  %24 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %25 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %24, i32 0, i32 0
  %26 = load %struct.nd_pfn*, %struct.nd_pfn** %25, align 8
  %27 = call i32 @kfree(%struct.nd_pfn* %26)
  %28 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %29 = call i32 @kfree(%struct.nd_pfn* %28)
  ret void
}

declare dso_local %struct.nd_region* @to_nd_region(i32) #1

declare dso_local %struct.nd_pfn* @to_nd_pfn(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @nd_detach_ndns(i32*, i32*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.nd_pfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
