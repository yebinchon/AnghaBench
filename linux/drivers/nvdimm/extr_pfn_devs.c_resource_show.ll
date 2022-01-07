; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pfn_devs.c_resource_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pfn_devs.c_resource_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.device_attribute = type { i32 }
%struct.nd_pfn = type { %struct.nd_namespace_common*, %struct.nd_pfn_sb* }
%struct.nd_namespace_common = type { i32 }
%struct.nd_pfn_sb = type { i32, i32 }
%struct.nd_namespace_io = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"%#llx\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @resource_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resource_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nd_pfn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nd_pfn_sb*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.nd_namespace_common*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.nd_namespace_io*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.nd_pfn* @to_nd_pfn_safe(%struct.device* %14)
  store %struct.nd_pfn* %15, %struct.nd_pfn** %7, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i32 @nd_device_lock(%struct.device* %16)
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %3
  %23 = load %struct.nd_pfn*, %struct.nd_pfn** %7, align 8
  %24 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %23, i32 0, i32 1
  %25 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %24, align 8
  store %struct.nd_pfn_sb* %25, %struct.nd_pfn_sb** %9, align 8
  %26 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %9, align 8
  %27 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @__le64_to_cpu(i32 %28)
  store i64 %29, i64* %10, align 8
  %30 = load %struct.nd_pfn*, %struct.nd_pfn** %7, align 8
  %31 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %30, i32 0, i32 0
  %32 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %31, align 8
  store %struct.nd_namespace_common* %32, %struct.nd_namespace_common** %11, align 8
  %33 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %9, align 8
  %34 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @__le32_to_cpu(i32 %35)
  store i64 %36, i64* %12, align 8
  %37 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %11, align 8
  %38 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %37, i32 0, i32 0
  %39 = call %struct.nd_namespace_io* @to_nd_namespace_io(i32* %38)
  store %struct.nd_namespace_io* %39, %struct.nd_namespace_io** %13, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %13, align 8
  %42 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %12, align 8
  %46 = add i64 %44, %45
  %47 = load i64, i64* %10, align 8
  %48 = add i64 %46, %47
  %49 = call i32 @sprintf(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %48)
  store i32 %49, i32* %8, align 4
  br label %53

50:                                               ; preds = %3
  %51 = load i32, i32* @ENXIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %50, %22
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = call i32 @nd_device_unlock(%struct.device* %54)
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local %struct.nd_pfn* @to_nd_pfn_safe(%struct.device*) #1

declare dso_local i32 @nd_device_lock(%struct.device*) #1

declare dso_local i64 @__le64_to_cpu(i32) #1

declare dso_local i64 @__le32_to_cpu(i32) #1

declare dso_local %struct.nd_namespace_io* @to_nd_namespace_io(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @nd_device_unlock(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
