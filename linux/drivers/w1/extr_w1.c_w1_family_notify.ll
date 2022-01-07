; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/extr_w1.c_w1_family_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/extr_w1.c_w1_family_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_slave = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.device* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.w1_family_ops* }
%struct.w1_family_ops = type { i32 (%struct.w1_slave*)*, i32, i32 (%struct.w1_slave*)*, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"add_slave() call failed. err=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"sysfs group creation failed. err=%d\0A\00", align 1
@CONFIG_HWMON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"w1_slave_temp\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"could not create hwmon device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.w1_slave*)* @w1_family_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_family_notify(i64 %0, %struct.w1_slave* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.w1_slave*, align 8
  %6 = alloca %struct.w1_family_ops*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.w1_slave* %1, %struct.w1_slave** %5, align 8
  %9 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %10 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.w1_family_ops*, %struct.w1_family_ops** %12, align 8
  store %struct.w1_family_ops* %13, %struct.w1_family_ops** %6, align 8
  %14 = load %struct.w1_family_ops*, %struct.w1_family_ops** %6, align 8
  %15 = icmp ne %struct.w1_family_ops* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %140

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  switch i64 %18, label %139 [
    i64 129, label %19
    i64 128, label %91
  ]

19:                                               ; preds = %17
  %20 = load %struct.w1_family_ops*, %struct.w1_family_ops** %6, align 8
  %21 = getelementptr inbounds %struct.w1_family_ops, %struct.w1_family_ops* %20, i32 0, i32 0
  %22 = load i32 (%struct.w1_slave*)*, i32 (%struct.w1_slave*)** %21, align 8
  %23 = icmp ne i32 (%struct.w1_slave*)* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load %struct.w1_family_ops*, %struct.w1_family_ops** %6, align 8
  %26 = getelementptr inbounds %struct.w1_family_ops, %struct.w1_family_ops* %25, i32 0, i32 0
  %27 = load i32 (%struct.w1_slave*)*, i32 (%struct.w1_slave*)** %26, align 8
  %28 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %29 = call i32 %27(%struct.w1_slave* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %34 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %33, i32 0, i32 0
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @dev_err(%struct.TYPE_6__* %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %140

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38, %19
  %40 = load %struct.w1_family_ops*, %struct.w1_family_ops** %6, align 8
  %41 = getelementptr inbounds %struct.w1_family_ops, %struct.w1_family_ops* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %39
  %45 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %46 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.w1_family_ops*, %struct.w1_family_ops** %6, align 8
  %49 = getelementptr inbounds %struct.w1_family_ops, %struct.w1_family_ops* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @sysfs_create_groups(i32* %47, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %44
  %55 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %56 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %55, i32 0, i32 0
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @dev_err(%struct.TYPE_6__* %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %140

60:                                               ; preds = %44
  br label %61

61:                                               ; preds = %60, %39
  %62 = load i32, i32* @CONFIG_HWMON, align 4
  %63 = call i32 @IS_REACHABLE(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %61
  %66 = load %struct.w1_family_ops*, %struct.w1_family_ops** %6, align 8
  %67 = getelementptr inbounds %struct.w1_family_ops, %struct.w1_family_ops* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %65
  %71 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %72 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %71, i32 0, i32 0
  %73 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %74 = load %struct.w1_family_ops*, %struct.w1_family_ops** %6, align 8
  %75 = getelementptr inbounds %struct.w1_family_ops, %struct.w1_family_ops* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call %struct.device* @hwmon_device_register_with_info(%struct.TYPE_6__* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), %struct.w1_slave* %73, i32 %76, i32* null)
  store %struct.device* %77, %struct.device** %8, align 8
  %78 = load %struct.device*, %struct.device** %8, align 8
  %79 = call i32 @IS_ERR(%struct.device* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %70
  %82 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %83 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %82, i32 0, i32 0
  %84 = call i32 @dev_warn(%struct.TYPE_6__* %83, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %89

85:                                               ; preds = %70
  %86 = load %struct.device*, %struct.device** %8, align 8
  %87 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %88 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %87, i32 0, i32 2
  store %struct.device* %86, %struct.device** %88, align 8
  br label %89

89:                                               ; preds = %85, %81
  br label %90

90:                                               ; preds = %89, %65, %61
  br label %139

91:                                               ; preds = %17
  %92 = load i32, i32* @CONFIG_HWMON, align 4
  %93 = call i32 @IS_REACHABLE(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %91
  %96 = load %struct.w1_family_ops*, %struct.w1_family_ops** %6, align 8
  %97 = getelementptr inbounds %struct.w1_family_ops, %struct.w1_family_ops* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %95
  %101 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %102 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %101, i32 0, i32 2
  %103 = load %struct.device*, %struct.device** %102, align 8
  %104 = icmp ne %struct.device* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %107 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %106, i32 0, i32 2
  %108 = load %struct.device*, %struct.device** %107, align 8
  %109 = call i32 @hwmon_device_unregister(%struct.device* %108)
  br label %110

110:                                              ; preds = %105, %100, %95, %91
  %111 = load %struct.w1_family_ops*, %struct.w1_family_ops** %6, align 8
  %112 = getelementptr inbounds %struct.w1_family_ops, %struct.w1_family_ops* %111, i32 0, i32 2
  %113 = load i32 (%struct.w1_slave*)*, i32 (%struct.w1_slave*)** %112, align 8
  %114 = icmp ne i32 (%struct.w1_slave*)* %113, null
  br i1 %114, label %115, label %125

115:                                              ; preds = %110
  %116 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %117 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %116, i32 0, i32 1
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load %struct.w1_family_ops*, %struct.w1_family_ops** %119, align 8
  %121 = getelementptr inbounds %struct.w1_family_ops, %struct.w1_family_ops* %120, i32 0, i32 2
  %122 = load i32 (%struct.w1_slave*)*, i32 (%struct.w1_slave*)** %121, align 8
  %123 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %124 = call i32 %122(%struct.w1_slave* %123)
  br label %125

125:                                              ; preds = %115, %110
  %126 = load %struct.w1_family_ops*, %struct.w1_family_ops** %6, align 8
  %127 = getelementptr inbounds %struct.w1_family_ops, %struct.w1_family_ops* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %125
  %131 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %132 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load %struct.w1_family_ops*, %struct.w1_family_ops** %6, align 8
  %135 = getelementptr inbounds %struct.w1_family_ops, %struct.w1_family_ops* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @sysfs_remove_groups(i32* %133, i32 %136)
  br label %138

138:                                              ; preds = %130, %125
  br label %139

139:                                              ; preds = %17, %138, %90
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %139, %54, %32, %16
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @sysfs_create_groups(i32*, i32) #1

declare dso_local i32 @IS_REACHABLE(i32) #1

declare dso_local %struct.device* @hwmon_device_register_with_info(%struct.TYPE_6__*, i8*, %struct.w1_slave*, i32, i32*) #1

declare dso_local i32 @IS_ERR(%struct.device*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @hwmon_device_unregister(%struct.device*) #1

declare dso_local i32 @sysfs_remove_groups(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
