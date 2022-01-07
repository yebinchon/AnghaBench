; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_sysfs.c_gasket_sysfs_put_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_sysfs.c_gasket_sysfs_put_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.gasket_sysfs_attribute = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.gasket_sysfs_mapping = type { i32, %struct.gasket_sysfs_attribute* }

@.str = private unnamed_addr constant [37 x i8] c"Unable to put unknown attribute: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gasket_sysfs_put_attr(%struct.device* %0, %struct.gasket_sysfs_attribute* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.gasket_sysfs_attribute*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gasket_sysfs_mapping*, align 8
  %8 = alloca %struct.gasket_sysfs_attribute*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.gasket_sysfs_attribute* %1, %struct.gasket_sysfs_attribute** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.gasket_sysfs_mapping* @get_mapping(%struct.device* %9)
  store %struct.gasket_sysfs_mapping* %10, %struct.gasket_sysfs_mapping** %7, align 8
  store %struct.gasket_sysfs_attribute* null, %struct.gasket_sysfs_attribute** %8, align 8
  %11 = load %struct.gasket_sysfs_mapping*, %struct.gasket_sysfs_mapping** %7, align 8
  %12 = icmp ne %struct.gasket_sysfs_mapping* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %47

14:                                               ; preds = %2
  %15 = load %struct.gasket_sysfs_mapping*, %struct.gasket_sysfs_mapping** %7, align 8
  %16 = getelementptr inbounds %struct.gasket_sysfs_mapping, %struct.gasket_sysfs_mapping* %15, i32 0, i32 1
  %17 = load %struct.gasket_sysfs_attribute*, %struct.gasket_sysfs_attribute** %16, align 8
  store %struct.gasket_sysfs_attribute* %17, %struct.gasket_sysfs_attribute** %8, align 8
  %18 = load %struct.gasket_sysfs_mapping*, %struct.gasket_sysfs_mapping** %7, align 8
  %19 = getelementptr inbounds %struct.gasket_sysfs_mapping, %struct.gasket_sysfs_mapping* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %36, %14
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load %struct.gasket_sysfs_attribute*, %struct.gasket_sysfs_attribute** %8, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.gasket_sysfs_attribute, %struct.gasket_sysfs_attribute* %26, i64 %28
  %30 = load %struct.gasket_sysfs_attribute*, %struct.gasket_sysfs_attribute** %4, align 8
  %31 = icmp eq %struct.gasket_sysfs_attribute* %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.gasket_sysfs_mapping*, %struct.gasket_sysfs_mapping** %7, align 8
  %34 = call i32 @put_mapping_n(%struct.gasket_sysfs_mapping* %33, i32 2)
  br label %47

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %21

39:                                               ; preds = %21
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = load %struct.gasket_sysfs_attribute*, %struct.gasket_sysfs_attribute** %4, align 8
  %42 = getelementptr inbounds %struct.gasket_sysfs_attribute, %struct.gasket_sysfs_attribute* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %39, %32, %13
  ret void
}

declare dso_local %struct.gasket_sysfs_mapping* @get_mapping(%struct.device*) #1

declare dso_local i32 @put_mapping_n(%struct.gasket_sysfs_mapping*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
