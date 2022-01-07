; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_resource_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_resource_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.resource = type { i64 }
%struct.nd_namespace_pmem = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.resource }
%struct.nd_namespace_io = type { %struct.resource }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%#llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @resource_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resource_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.nd_namespace_pmem*, align 8
  %10 = alloca %struct.nd_namespace_io*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call i64 @is_namespace_pmem(%struct.device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.nd_namespace_pmem* @to_nd_namespace_pmem(%struct.device* %15)
  store %struct.nd_namespace_pmem* %16, %struct.nd_namespace_pmem** %9, align 8
  %17 = load %struct.nd_namespace_pmem*, %struct.nd_namespace_pmem** %9, align 8
  %18 = getelementptr inbounds %struct.nd_namespace_pmem, %struct.nd_namespace_pmem* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.resource* %19, %struct.resource** %8, align 8
  br label %33

20:                                               ; preds = %3
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = call i64 @is_namespace_io(%struct.device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = call %struct.nd_namespace_io* @to_nd_namespace_io(%struct.device* %25)
  store %struct.nd_namespace_io* %26, %struct.nd_namespace_io** %10, align 8
  %27 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %10, align 8
  %28 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %27, i32 0, i32 0
  store %struct.resource* %28, %struct.resource** %8, align 8
  br label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @ENXIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %46

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %14
  %34 = load %struct.resource*, %struct.resource** %8, align 8
  %35 = call i64 @resource_size(%struct.resource* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @ENXIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %46

40:                                               ; preds = %33
  %41 = load i8*, i8** %7, align 8
  %42 = load %struct.resource*, %struct.resource** %8, align 8
  %43 = getelementptr inbounds %struct.resource, %struct.resource* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %44)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %40, %37, %29
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @is_namespace_pmem(%struct.device*) #1

declare dso_local %struct.nd_namespace_pmem* @to_nd_namespace_pmem(%struct.device*) #1

declare dso_local i64 @is_namespace_io(%struct.device*) #1

declare dso_local %struct.nd_namespace_io* @to_nd_namespace_io(%struct.device*) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
