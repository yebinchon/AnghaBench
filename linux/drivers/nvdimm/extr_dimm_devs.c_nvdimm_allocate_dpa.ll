; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_dimm_devs.c_nvdimm_allocate_dpa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_dimm_devs.c_nvdimm_allocate_dpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.nvdimm_drvdata = type { i32, i32 }
%struct.nd_label_id = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.resource* @nvdimm_allocate_dpa(%struct.nvdimm_drvdata* %0, %struct.nd_label_id* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.nvdimm_drvdata*, align 8
  %7 = alloca %struct.nd_label_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.resource*, align 8
  store %struct.nvdimm_drvdata* %0, %struct.nvdimm_drvdata** %6, align 8
  store %struct.nd_label_id* %1, %struct.nd_label_id** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.nd_label_id*, %struct.nd_label_id** %7, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kmemdup(%struct.nd_label_id* %12, i32 4, i32 %13)
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.resource* null, %struct.resource** %5, align 8
  br label %40

18:                                               ; preds = %4
  %19 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %20 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @is_nvdimm_bus_locked(i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON_ONCE(i32 %25)
  %27 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %28 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %27, i32 0, i32 0
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = call %struct.resource* @__request_region(i32* %28, i32 %29, i32 %30, i8* %31, i32 0)
  store %struct.resource* %32, %struct.resource** %11, align 8
  %33 = load %struct.resource*, %struct.resource** %11, align 8
  %34 = icmp ne %struct.resource* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %18
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @kfree(i8* %36)
  br label %38

38:                                               ; preds = %35, %18
  %39 = load %struct.resource*, %struct.resource** %11, align 8
  store %struct.resource* %39, %struct.resource** %5, align 8
  br label %40

40:                                               ; preds = %38, %17
  %41 = load %struct.resource*, %struct.resource** %5, align 8
  ret %struct.resource* %41
}

declare dso_local i8* @kmemdup(%struct.nd_label_id*, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @is_nvdimm_bus_locked(i32) #1

declare dso_local %struct.resource* @__request_region(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
