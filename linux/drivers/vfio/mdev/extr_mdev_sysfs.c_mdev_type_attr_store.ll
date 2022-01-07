; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/mdev/extr_mdev_sysfs.c_mdev_type_attr_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/mdev/extr_mdev_sysfs.c_mdev_type_attr_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.mdev_type_attribute = type { i32 (i32*, i32, i8*, i64)* }
%struct.mdev_type = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i8*, i64)* @mdev_type_attr_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdev_type_attr_store(%struct.kobject* %0, %struct.attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mdev_type_attribute*, align 8
  %10 = alloca %struct.mdev_type*, align 8
  %11 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.attribute* %1, %struct.attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.attribute*, %struct.attribute** %6, align 8
  %13 = call %struct.mdev_type_attribute* @to_mdev_type_attr(%struct.attribute* %12)
  store %struct.mdev_type_attribute* %13, %struct.mdev_type_attribute** %9, align 8
  %14 = load %struct.kobject*, %struct.kobject** %5, align 8
  %15 = call %struct.mdev_type* @to_mdev_type(%struct.kobject* %14)
  store %struct.mdev_type* %15, %struct.mdev_type** %10, align 8
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %11, align 4
  %18 = load %struct.mdev_type_attribute*, %struct.mdev_type_attribute** %9, align 8
  %19 = getelementptr inbounds %struct.mdev_type_attribute, %struct.mdev_type_attribute* %18, i32 0, i32 0
  %20 = load i32 (i32*, i32, i8*, i64)*, i32 (i32*, i32, i8*, i64)** %19, align 8
  %21 = icmp ne i32 (i32*, i32, i8*, i64)* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %4
  %23 = load %struct.mdev_type_attribute*, %struct.mdev_type_attribute** %9, align 8
  %24 = getelementptr inbounds %struct.mdev_type_attribute, %struct.mdev_type_attribute* %23, i32 0, i32 0
  %25 = load i32 (i32*, i32, i8*, i64)*, i32 (i32*, i32, i8*, i64)** %24, align 8
  %26 = load %struct.mdev_type*, %struct.mdev_type** %10, align 8
  %27 = getelementptr inbounds %struct.mdev_type, %struct.mdev_type* %26, i32 0, i32 1
  %28 = load %struct.mdev_type*, %struct.mdev_type** %10, align 8
  %29 = getelementptr inbounds %struct.mdev_type, %struct.mdev_type* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 %25(i32* %27, i32 %32, i8* %33, i64 %34)
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %22, %4
  %37 = load i32, i32* %11, align 4
  ret i32 %37
}

declare dso_local %struct.mdev_type_attribute* @to_mdev_type_attr(%struct.attribute*) #1

declare dso_local %struct.mdev_type* @to_mdev_type(%struct.kobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
