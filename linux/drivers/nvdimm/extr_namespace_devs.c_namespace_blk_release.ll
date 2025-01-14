; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_namespace_blk_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_namespace_blk_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nd_namespace_blk = type { i64, %struct.nd_namespace_blk*, %struct.nd_namespace_blk*, %struct.nd_namespace_blk* }
%struct.nd_region = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @namespace_blk_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @namespace_blk_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.nd_namespace_blk*, align 8
  %4 = alloca %struct.nd_region*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.nd_namespace_blk* @to_nd_namespace_blk(%struct.device* %5)
  store %struct.nd_namespace_blk* %6, %struct.nd_namespace_blk** %3, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.nd_region* @to_nd_region(i32 %9)
  store %struct.nd_region* %10, %struct.nd_region** %4, align 8
  %11 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %3, align 8
  %12 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.nd_region*, %struct.nd_region** %4, align 8
  %17 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %16, i32 0, i32 0
  %18 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %3, align 8
  %19 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @ida_simple_remove(i32* %17, i64 %20)
  br label %22

22:                                               ; preds = %15, %1
  %23 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %3, align 8
  %24 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %23, i32 0, i32 3
  %25 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %24, align 8
  %26 = call i32 @kfree(%struct.nd_namespace_blk* %25)
  %27 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %3, align 8
  %28 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %27, i32 0, i32 2
  %29 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %28, align 8
  %30 = call i32 @kfree(%struct.nd_namespace_blk* %29)
  %31 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %3, align 8
  %32 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %31, i32 0, i32 1
  %33 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %32, align 8
  %34 = call i32 @kfree(%struct.nd_namespace_blk* %33)
  %35 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %3, align 8
  %36 = call i32 @kfree(%struct.nd_namespace_blk* %35)
  ret void
}

declare dso_local %struct.nd_namespace_blk* @to_nd_namespace_blk(%struct.device*) #1

declare dso_local %struct.nd_region* @to_nd_region(i32) #1

declare dso_local i32 @ida_simple_remove(i32*, i64) #1

declare dso_local i32 @kfree(%struct.nd_namespace_blk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
