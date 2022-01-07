; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_apex_driver.c_sysfs_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_apex_driver.c_sysfs_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.gasket_dev = type { i32, %struct.gasket_page_table** }
%struct.gasket_page_table = type { i32 }
%struct.gasket_sysfs_attribute = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"No Apex device sysfs mapping found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"No Apex device sysfs attr data found\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Unknown attribute: %s\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @sysfs_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysfs_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gasket_dev*, align 8
  %10 = alloca %struct.gasket_sysfs_attribute*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.gasket_page_table*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.gasket_dev* @gasket_sysfs_get_device_data(%struct.device* %14)
  store %struct.gasket_dev* %15, %struct.gasket_dev** %9, align 8
  %16 = load %struct.gasket_dev*, %struct.gasket_dev** %9, align 8
  %17 = icmp ne %struct.gasket_dev* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %80

23:                                               ; preds = %3
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %26 = call %struct.gasket_sysfs_attribute* @gasket_sysfs_get_attr(%struct.device* %24, %struct.device_attribute* %25)
  store %struct.gasket_sysfs_attribute* %26, %struct.gasket_sysfs_attribute** %10, align 8
  %27 = load %struct.gasket_sysfs_attribute*, %struct.gasket_sysfs_attribute** %10, align 8
  %28 = icmp ne %struct.gasket_sysfs_attribute* %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %23
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = load %struct.gasket_dev*, %struct.gasket_dev** %9, align 8
  %34 = call i32 @gasket_sysfs_put_device_data(%struct.device* %32, %struct.gasket_dev* %33)
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %80

37:                                               ; preds = %23
  %38 = load %struct.gasket_sysfs_attribute*, %struct.gasket_sysfs_attribute** %10, align 8
  %39 = getelementptr inbounds %struct.gasket_sysfs_attribute, %struct.gasket_sysfs_attribute* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %11, align 4
  %43 = load %struct.gasket_dev*, %struct.gasket_dev** %9, align 8
  %44 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %43, i32 0, i32 1
  %45 = load %struct.gasket_page_table**, %struct.gasket_page_table*** %44, align 8
  %46 = getelementptr inbounds %struct.gasket_page_table*, %struct.gasket_page_table** %45, i64 0
  %47 = load %struct.gasket_page_table*, %struct.gasket_page_table** %46, align 8
  store %struct.gasket_page_table* %47, %struct.gasket_page_table** %12, align 8
  %48 = load i32, i32* %11, align 4
  switch i32 %48, label %58 [
    i32 129, label %49
    i32 128, label %52
    i32 130, label %55
  ]

49:                                               ; preds = %37
  %50 = load %struct.gasket_page_table*, %struct.gasket_page_table** %12, align 8
  %51 = call i32 @gasket_page_table_num_entries(%struct.gasket_page_table* %50)
  store i32 %51, i32* %13, align 4
  br label %67

52:                                               ; preds = %37
  %53 = load %struct.gasket_page_table*, %struct.gasket_page_table** %12, align 8
  %54 = call i32 @gasket_page_table_num_simple_entries(%struct.gasket_page_table* %53)
  store i32 %54, i32* %13, align 4
  br label %67

55:                                               ; preds = %37
  %56 = load %struct.gasket_page_table*, %struct.gasket_page_table** %12, align 8
  %57 = call i32 @gasket_page_table_num_active_pages(%struct.gasket_page_table* %56)
  store i32 %57, i32* %13, align 4
  br label %67

58:                                               ; preds = %37
  %59 = load %struct.gasket_dev*, %struct.gasket_dev** %9, align 8
  %60 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %63 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dev_dbg(i32 %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  store i32 0, i32* %8, align 4
  br label %72

67:                                               ; preds = %55, %52, %49
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* @PAGE_SIZE, align 4
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @scnprintf(i8* %68, i32 %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %67, %58
  %73 = load %struct.device*, %struct.device** %5, align 8
  %74 = load %struct.gasket_sysfs_attribute*, %struct.gasket_sysfs_attribute** %10, align 8
  %75 = call i32 @gasket_sysfs_put_attr(%struct.device* %73, %struct.gasket_sysfs_attribute* %74)
  %76 = load %struct.device*, %struct.device** %5, align 8
  %77 = load %struct.gasket_dev*, %struct.gasket_dev** %9, align 8
  %78 = call i32 @gasket_sysfs_put_device_data(%struct.device* %76, %struct.gasket_dev* %77)
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %72, %29, %18
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.gasket_dev* @gasket_sysfs_get_device_data(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.gasket_sysfs_attribute* @gasket_sysfs_get_attr(%struct.device*, %struct.device_attribute*) #1

declare dso_local i32 @gasket_sysfs_put_device_data(%struct.device*, %struct.gasket_dev*) #1

declare dso_local i32 @gasket_page_table_num_entries(%struct.gasket_page_table*) #1

declare dso_local i32 @gasket_page_table_num_simple_entries(%struct.gasket_page_table*) #1

declare dso_local i32 @gasket_page_table_num_active_pages(%struct.gasket_page_table*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @gasket_sysfs_put_attr(%struct.device*, %struct.gasket_sysfs_attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
