; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_mode_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_mode_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nd_namespace_common = type { %struct.device* }

@.str = private unnamed_addr constant [5 x i8] c"safe\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dax\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @mode_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mode_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nd_namespace_common*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.nd_namespace_common* @to_ndns(%struct.device* %11)
  store %struct.nd_namespace_common* %12, %struct.nd_namespace_common** %7, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call i32 @nd_device_lock(%struct.device* %13)
  %15 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %7, align 8
  %16 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %8, align 8
  %18 = load %struct.device*, %struct.device** %8, align 8
  %19 = icmp ne %struct.device* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.device*, %struct.device** %8, align 8
  %22 = call i64 @is_nd_btt(%struct.device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %53

25:                                               ; preds = %20, %3
  %26 = load %struct.device*, %struct.device** %8, align 8
  %27 = icmp ne %struct.device* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.device*, %struct.device** %8, align 8
  %30 = call i64 @is_nd_pfn(%struct.device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %52

33:                                               ; preds = %28, %25
  %34 = load %struct.device*, %struct.device** %8, align 8
  %35 = icmp ne %struct.device* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.device*, %struct.device** %8, align 8
  %38 = call i64 @is_nd_dax(%struct.device* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %51

41:                                               ; preds = %36, %33
  %42 = load %struct.device*, %struct.device** %8, align 8
  %43 = icmp ne %struct.device* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = call i64 @pmem_should_map_pages(%struct.device* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %50

49:                                               ; preds = %44, %41
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %50

50:                                               ; preds = %49, %48
  br label %51

51:                                               ; preds = %50, %40
  br label %52

52:                                               ; preds = %51, %32
  br label %53

53:                                               ; preds = %52, %24
  %54 = load i8*, i8** %6, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @sprintf(i8* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %55)
  store i32 %56, i32* %10, align 4
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = call i32 @nd_device_unlock(%struct.device* %57)
  %59 = load i32, i32* %10, align 4
  ret i32 %59
}

declare dso_local %struct.nd_namespace_common* @to_ndns(%struct.device*) #1

declare dso_local i32 @nd_device_lock(%struct.device*) #1

declare dso_local i64 @is_nd_btt(%struct.device*) #1

declare dso_local i64 @is_nd_pfn(%struct.device*) #1

declare dso_local i64 @is_nd_dax(%struct.device*) #1

declare dso_local i64 @pmem_should_map_pages(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @nd_device_unlock(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
