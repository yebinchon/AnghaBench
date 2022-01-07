; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pfn_devs.c_nd_pfn_devinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pfn_devs.c_nd_pfn_devinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nd_pfn = type { i32, %struct.device, i32, i32 }
%struct.nd_namespace_common = type { i32, i32 }

@PFN_MODE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed, already claimed by %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device* @nd_pfn_devinit(%struct.nd_pfn* %0, %struct.nd_namespace_common* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.nd_pfn*, align 8
  %5 = alloca %struct.nd_namespace_common*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.nd_pfn* %0, %struct.nd_pfn** %4, align 8
  store %struct.nd_namespace_common* %1, %struct.nd_namespace_common** %5, align 8
  %7 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %8 = icmp ne %struct.nd_pfn* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.device* null, %struct.device** %3, align 8
  br label %44

10:                                               ; preds = %2
  %11 = load i32, i32* @PFN_MODE_NONE, align 4
  %12 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %13 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = call i32 (...) @nd_pfn_default_alignment()
  %15 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %16 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %18 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %17, i32 0, i32 1
  store %struct.device* %18, %struct.device** %6, align 8
  %19 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %20 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %19, i32 0, i32 1
  %21 = call i32 @device_initialize(%struct.device* %20)
  %22 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %23 = icmp ne %struct.nd_namespace_common* %22, null
  br i1 %23, label %24, label %42

24:                                               ; preds = %10
  %25 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %26 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %25, i32 0, i32 1
  %27 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %28 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %29 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %28, i32 0, i32 0
  %30 = call i32 @__nd_attach_ndns(%struct.device* %26, %struct.nd_namespace_common* %27, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %24
  %33 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %34 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %33, i32 0, i32 1
  %35 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %36 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_name(i32 %37)
  %39 = call i32 @dev_dbg(i32* %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = call i32 @put_device(%struct.device* %40)
  store %struct.device* null, %struct.device** %3, align 8
  br label %44

42:                                               ; preds = %24, %10
  %43 = load %struct.device*, %struct.device** %6, align 8
  store %struct.device* %43, %struct.device** %3, align 8
  br label %44

44:                                               ; preds = %42, %32, %9
  %45 = load %struct.device*, %struct.device** %3, align 8
  ret %struct.device* %45
}

declare dso_local i32 @nd_pfn_default_alignment(...) #1

declare dso_local i32 @device_initialize(%struct.device*) #1

declare dso_local i32 @__nd_attach_ndns(%struct.device*, %struct.nd_namespace_common*, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
