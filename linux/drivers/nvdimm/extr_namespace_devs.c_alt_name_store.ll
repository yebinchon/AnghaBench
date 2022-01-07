; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_alt_name_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_alt_name_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nd_region = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s(%zd)\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"fail \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @alt_name_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @alt_name_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  %23 = load i64, i64* %8, align 8
  %24 = call i64 @__alt_name_store(%struct.device* %21, i8* %22, i64 %23)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %4
  %28 = load %struct.nd_region*, %struct.nd_region** %9, align 8
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = call i64 @nd_namespace_label_update(%struct.nd_region* %28, %struct.device* %29)
  store i64 %30, i64* %10, align 8
  br label %31

31:                                               ; preds = %27, %4
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp slt i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @dev_dbg(%struct.device* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %36, i64 %37)
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = call i32 @nvdimm_bus_unlock(%struct.device* %39)
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = call i32 @nd_device_unlock(%struct.device* %41)
  %43 = load i64, i64* %10, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %31
  %46 = load i64, i64* %10, align 8
  br label %49

47:                                               ; preds = %31
  %48 = load i64, i64* %8, align 8
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i64 [ %46, %45 ], [ %48, %47 ]
  ret i64 %50
}

declare dso_local %struct.nd_region* @to_nd_region(i32) #1

declare dso_local i32 @nd_device_lock(%struct.device*) #1

declare dso_local i32 @nvdimm_bus_lock(%struct.device*) #1

declare dso_local i32 @wait_nvdimm_bus_probe_idle(%struct.device*) #1

declare dso_local i64 @__alt_name_store(%struct.device*, i8*, i64) #1

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
