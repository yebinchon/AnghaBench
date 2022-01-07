; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_interrupt.c_interrupt_sysfs_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_interrupt.c_interrupt_sysfs_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.gasket_interrupt_data = type { i32, i32* }
%struct.gasket_dev = type { i32, %struct.gasket_interrupt_data* }
%struct.gasket_sysfs_attribute = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"No sysfs mapping found for device\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"No sysfs attr data found for device\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"0x%02x: %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Unknown attribute: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @interrupt_sysfs_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interrupt_sysfs_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.gasket_interrupt_data*, align 8
  %13 = alloca %struct.gasket_dev*, align 8
  %14 = alloca %struct.gasket_sysfs_attribute*, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.gasket_dev* @gasket_sysfs_get_device_data(%struct.device* %16)
  store %struct.gasket_dev* %17, %struct.gasket_dev** %13, align 8
  %18 = load %struct.gasket_dev*, %struct.gasket_dev** %13, align 8
  %19 = icmp ne %struct.gasket_dev* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = ptrtoint %struct.device* %21 to i32
  %23 = call i32 (i32, i8*, ...) @dev_dbg(i32 %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %97

24:                                               ; preds = %3
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %27 = call %struct.gasket_sysfs_attribute* @gasket_sysfs_get_attr(%struct.device* %25, %struct.device_attribute* %26)
  store %struct.gasket_sysfs_attribute* %27, %struct.gasket_sysfs_attribute** %14, align 8
  %28 = load %struct.gasket_sysfs_attribute*, %struct.gasket_sysfs_attribute** %14, align 8
  %29 = icmp ne %struct.gasket_sysfs_attribute* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %24
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = ptrtoint %struct.device* %31 to i32
  %33 = call i32 (i32, i8*, ...) @dev_dbg(i32 %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = load %struct.gasket_dev*, %struct.gasket_dev** %13, align 8
  %36 = call i32 @gasket_sysfs_put_device_data(%struct.device* %34, %struct.gasket_dev* %35)
  store i32 0, i32* %4, align 4
  br label %97

37:                                               ; preds = %24
  %38 = load %struct.gasket_sysfs_attribute*, %struct.gasket_sysfs_attribute** %14, align 8
  %39 = getelementptr inbounds %struct.gasket_sysfs_attribute, %struct.gasket_sysfs_attribute* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %15, align 4
  %43 = load %struct.gasket_dev*, %struct.gasket_dev** %13, align 8
  %44 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %43, i32 0, i32 1
  %45 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %44, align 8
  store %struct.gasket_interrupt_data* %45, %struct.gasket_interrupt_data** %12, align 8
  %46 = load i32, i32* %15, align 4
  switch i32 %46, label %80 [
    i32 128, label %47
  ]

47:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %75, %47
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %12, align 8
  %51 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %48
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = load i32, i32* %11, align 4
  %58 = sub nsw i32 %56, %57
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %12, align 8
  %61 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @scnprintf(i8* %55, i32 %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i8*, i8** %7, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %7, align 8
  br label %75

75:                                               ; preds = %54
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %48

78:                                               ; preds = %48
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %9, align 4
  br label %89

80:                                               ; preds = %37
  %81 = load %struct.gasket_dev*, %struct.gasket_dev** %13, align 8
  %82 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %85 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i32, i8*, ...) @dev_dbg(i32 %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %80, %78
  %90 = load %struct.device*, %struct.device** %5, align 8
  %91 = load %struct.gasket_sysfs_attribute*, %struct.gasket_sysfs_attribute** %14, align 8
  %92 = call i32 @gasket_sysfs_put_attr(%struct.device* %90, %struct.gasket_sysfs_attribute* %91)
  %93 = load %struct.device*, %struct.device** %5, align 8
  %94 = load %struct.gasket_dev*, %struct.gasket_dev** %13, align 8
  %95 = call i32 @gasket_sysfs_put_device_data(%struct.device* %93, %struct.gasket_dev* %94)
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %89, %30, %20
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.gasket_dev* @gasket_sysfs_get_device_data(%struct.device*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local %struct.gasket_sysfs_attribute* @gasket_sysfs_get_attr(%struct.device*, %struct.device_attribute*) #1

declare dso_local i32 @gasket_sysfs_put_device_data(%struct.device*, %struct.gasket_dev*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @gasket_sysfs_put_attr(%struct.device*, %struct.gasket_sysfs_attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
