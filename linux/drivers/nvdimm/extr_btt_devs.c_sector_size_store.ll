; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt_devs.c_sector_size_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt_devs.c_sector_size_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nd_btt = type { i32 }

@btt_lbasize_supported = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"result: %zd wrote: %s%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @sector_size_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sector_size_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nd_btt*, align 8
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.nd_btt* @to_nd_btt(%struct.device* %11)
  store %struct.nd_btt* %12, %struct.nd_btt** %9, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call i32 @nd_device_lock(%struct.device* %13)
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call i32 @nvdimm_bus_lock(%struct.device* %15)
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.nd_btt*, %struct.nd_btt** %9, align 8
  %20 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %19, i32 0, i32 0
  %21 = load i32, i32* @btt_lbasize_supported, align 4
  %22 = call i64 @nd_size_select_store(%struct.device* %17, i8* %18, i32* %20, i32 %21)
  store i64 %22, i64* %10, align 8
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = sub i64 %27, 1
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 10
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %35 = call i32 @dev_dbg(%struct.device* %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %24, i8* %25, i8* %34)
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = call i32 @nvdimm_bus_unlock(%struct.device* %36)
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = call i32 @nd_device_unlock(%struct.device* %38)
  %40 = load i64, i64* %10, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %4
  %43 = load i64, i64* %10, align 8
  br label %46

44:                                               ; preds = %4
  %45 = load i64, i64* %8, align 8
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i64 [ %43, %42 ], [ %45, %44 ]
  ret i64 %47
}

declare dso_local %struct.nd_btt* @to_nd_btt(%struct.device*) #1

declare dso_local i32 @nd_device_lock(%struct.device*) #1

declare dso_local i32 @nvdimm_bus_lock(%struct.device*) #1

declare dso_local i64 @nd_size_select_store(%struct.device*, i8*, i32*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, i8*, i8*) #1

declare dso_local i32 @nvdimm_bus_unlock(%struct.device*) #1

declare dso_local i32 @nd_device_unlock(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
