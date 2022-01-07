; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pfn_devs.c_size_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pfn_devs.c_size_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.device_attribute = type { i32 }
%struct.nd_pfn = type { %struct.nd_namespace_common*, %struct.nd_pfn_sb* }
%struct.nd_namespace_common = type { i32 }
%struct.nd_pfn_sb = type { i32, i32, i32 }
%struct.nd_namespace_io = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @size_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @size_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nd_pfn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nd_pfn_sb*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.nd_namespace_common*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.nd_namespace_io*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.nd_pfn* @to_nd_pfn_safe(%struct.device* %15)
  store %struct.nd_pfn* %16, %struct.nd_pfn** %7, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i32 @nd_device_lock(%struct.device* %17)
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %56

23:                                               ; preds = %3
  %24 = load %struct.nd_pfn*, %struct.nd_pfn** %7, align 8
  %25 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %24, i32 0, i32 1
  %26 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %25, align 8
  store %struct.nd_pfn_sb* %26, %struct.nd_pfn_sb** %9, align 8
  %27 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %9, align 8
  %28 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @__le64_to_cpu(i32 %29)
  store i64 %30, i64* %10, align 8
  %31 = load %struct.nd_pfn*, %struct.nd_pfn** %7, align 8
  %32 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %31, i32 0, i32 0
  %33 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %32, align 8
  store %struct.nd_namespace_common* %33, %struct.nd_namespace_common** %11, align 8
  %34 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %9, align 8
  %35 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @__le32_to_cpu(i32 %36)
  store i64 %37, i64* %12, align 8
  %38 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %9, align 8
  %39 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @__le32_to_cpu(i32 %40)
  store i64 %41, i64* %13, align 8
  %42 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %11, align 8
  %43 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %42, i32 0, i32 0
  %44 = call %struct.nd_namespace_io* @to_nd_namespace_io(i32* %43)
  store %struct.nd_namespace_io* %44, %struct.nd_namespace_io** %14, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %14, align 8
  %47 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %46, i32 0, i32 0
  %48 = call i64 @resource_size(i32* %47)
  %49 = load i64, i64* %12, align 8
  %50 = sub i64 %48, %49
  %51 = load i64, i64* %13, align 8
  %52 = sub i64 %50, %51
  %53 = load i64, i64* %10, align 8
  %54 = sub i64 %52, %53
  %55 = call i32 @sprintf(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %54)
  store i32 %55, i32* %8, align 4
  br label %59

56:                                               ; preds = %3
  %57 = load i32, i32* @ENXIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %56, %23
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = call i32 @nd_device_unlock(%struct.device* %60)
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local %struct.nd_pfn* @to_nd_pfn_safe(%struct.device*) #1

declare dso_local i32 @nd_device_lock(%struct.device*) #1

declare dso_local i64 @__le64_to_cpu(i32) #1

declare dso_local i64 @__le32_to_cpu(i32) #1

declare dso_local %struct.nd_namespace_io* @to_nd_namespace_io(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i64 @resource_size(i32*) #1

declare dso_local i32 @nd_device_unlock(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
