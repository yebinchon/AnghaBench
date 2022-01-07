; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_namespace_to_uuid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_namespace_to_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nd_namespace_pmem = type { i32* }
%struct.nd_namespace_blk = type { i32* }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.device*)* @namespace_to_uuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @namespace_to_uuid(%struct.device* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.nd_namespace_pmem*, align 8
  %5 = alloca %struct.nd_namespace_blk*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call i64 @is_namespace_pmem(%struct.device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.nd_namespace_pmem* @to_nd_namespace_pmem(%struct.device* %10)
  store %struct.nd_namespace_pmem* %11, %struct.nd_namespace_pmem** %4, align 8
  %12 = load %struct.nd_namespace_pmem*, %struct.nd_namespace_pmem** %4, align 8
  %13 = getelementptr inbounds %struct.nd_namespace_pmem, %struct.nd_namespace_pmem* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %2, align 8
  br label %29

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = call i64 @is_namespace_blk(%struct.device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = call %struct.nd_namespace_blk* @to_nd_namespace_blk(%struct.device* %20)
  store %struct.nd_namespace_blk* %21, %struct.nd_namespace_blk** %5, align 8
  %22 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %5, align 8
  %23 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %2, align 8
  br label %29

25:                                               ; preds = %15
  %26 = load i32, i32* @ENXIO, align 4
  %27 = sub nsw i32 0, %26
  %28 = call i32* @ERR_PTR(i32 %27)
  store i32* %28, i32** %2, align 8
  br label %29

29:                                               ; preds = %25, %19, %9
  %30 = load i32*, i32** %2, align 8
  ret i32* %30
}

declare dso_local i64 @is_namespace_pmem(%struct.device*) #1

declare dso_local %struct.nd_namespace_pmem* @to_nd_namespace_pmem(%struct.device*) #1

declare dso_local i64 @is_namespace_blk(%struct.device*) #1

declare dso_local %struct.nd_namespace_blk* @to_nd_namespace_blk(%struct.device*) #1

declare dso_local i32* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
