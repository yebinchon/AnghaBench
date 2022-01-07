; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_wmi.c_find_guid_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_wmi.c_find_guid_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi_block = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.wmi_driver = type { %struct.wmi_device_id* }
%struct.wmi_device_id = type { i8*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.wmi_block*, %struct.wmi_driver*)* @find_guid_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_guid_context(%struct.wmi_block* %0, %struct.wmi_driver* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wmi_block*, align 8
  %5 = alloca %struct.wmi_driver*, align 8
  %6 = alloca %struct.wmi_device_id*, align 8
  %7 = alloca i32, align 4
  store %struct.wmi_block* %0, %struct.wmi_block** %4, align 8
  store %struct.wmi_driver* %1, %struct.wmi_driver** %5, align 8
  %8 = load %struct.wmi_block*, %struct.wmi_block** %4, align 8
  %9 = icmp eq %struct.wmi_block* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.wmi_driver*, %struct.wmi_driver** %5, align 8
  %12 = icmp eq %struct.wmi_driver* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  store i8* null, i8** %3, align 8
  br label %52

14:                                               ; preds = %10
  %15 = load %struct.wmi_driver*, %struct.wmi_driver** %5, align 8
  %16 = getelementptr inbounds %struct.wmi_driver, %struct.wmi_driver* %15, i32 0, i32 0
  %17 = load %struct.wmi_device_id*, %struct.wmi_device_id** %16, align 8
  %18 = icmp eq %struct.wmi_device_id* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i8* null, i8** %3, align 8
  br label %52

20:                                               ; preds = %14
  %21 = load %struct.wmi_driver*, %struct.wmi_driver** %5, align 8
  %22 = getelementptr inbounds %struct.wmi_driver, %struct.wmi_driver* %21, i32 0, i32 0
  %23 = load %struct.wmi_device_id*, %struct.wmi_device_id** %22, align 8
  store %struct.wmi_device_id* %23, %struct.wmi_device_id** %6, align 8
  br label %24

24:                                               ; preds = %48, %36, %20
  %25 = load %struct.wmi_device_id*, %struct.wmi_device_id** %6, align 8
  %26 = getelementptr inbounds %struct.wmi_device_id, %struct.wmi_device_id* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %24
  %31 = load %struct.wmi_device_id*, %struct.wmi_device_id** %6, align 8
  %32 = getelementptr inbounds %struct.wmi_device_id, %struct.wmi_device_id* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = call i64 @uuid_le_to_bin(i64* %33, i32* %7)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %24

37:                                               ; preds = %30
  %38 = load %struct.wmi_block*, %struct.wmi_block** %4, align 8
  %39 = getelementptr inbounds %struct.wmi_block, %struct.wmi_block* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @memcmp(i32 %41, i32* %7, i32 16)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %37
  %45 = load %struct.wmi_device_id*, %struct.wmi_device_id** %6, align 8
  %46 = getelementptr inbounds %struct.wmi_device_id, %struct.wmi_device_id* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %3, align 8
  br label %52

48:                                               ; preds = %37
  %49 = load %struct.wmi_device_id*, %struct.wmi_device_id** %6, align 8
  %50 = getelementptr inbounds %struct.wmi_device_id, %struct.wmi_device_id* %49, i32 1
  store %struct.wmi_device_id* %50, %struct.wmi_device_id** %6, align 8
  br label %24

51:                                               ; preds = %24
  store i8* null, i8** %3, align 8
  br label %52

52:                                               ; preds = %51, %44, %19, %13
  %53 = load i8*, i8** %3, align 8
  ret i8* %53
}

declare dso_local i64 @uuid_le_to_bin(i64*, i32*) #1

declare dso_local i32 @memcmp(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
