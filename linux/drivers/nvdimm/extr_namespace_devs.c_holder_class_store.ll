; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_holder_class_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_holder_class_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nd_region = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s(%zd)\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"fail \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @holder_class_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @holder_class_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nd_region*, align 8
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.nd_region* @to_nd_region(i32 %13)
  store %struct.nd_region* %14, %struct.nd_region** %9, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call i32 @nd_device_lock(%struct.device* %15)
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call i32 @nvdimm_bus_lock(%struct.device* %17)
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call i32 @wait_nvdimm_bus_probe_idle(%struct.device* %19)
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @__holder_class_store(%struct.device* %21, i8* %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp sge i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load %struct.nd_region*, %struct.nd_region** %9, align 8
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = call i64 @nd_namespace_label_update(%struct.nd_region* %27, %struct.device* %28)
  store i64 %29, i64* %10, align 8
  br label %30

30:                                               ; preds = %26, %4
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp slt i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @dev_dbg(%struct.device* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %35, i64 %36)
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = call i32 @nvdimm_bus_unlock(%struct.device* %38)
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = call i32 @nd_device_unlock(%struct.device* %40)
  %42 = load i64, i64* %10, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %30
  %45 = load i64, i64* %10, align 8
  br label %48

46:                                               ; preds = %30
  %47 = load i64, i64* %8, align 8
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i64 [ %45, %44 ], [ %47, %46 ]
  ret i64 %49
}

declare dso_local %struct.nd_region* @to_nd_region(i32) #1

declare dso_local i32 @nd_device_lock(%struct.device*) #1

declare dso_local i32 @nvdimm_bus_lock(%struct.device*) #1

declare dso_local i32 @wait_nvdimm_bus_probe_idle(%struct.device*) #1

declare dso_local i64 @__holder_class_store(%struct.device*, i8*) #1

declare dso_local i64 @nd_namespace_label_update(%struct.nd_region*, %struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i64) #1

declare dso_local i32 @nvdimm_bus_unlock(%struct.device*) #1

declare dso_local i32 @nd_device_unlock(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
