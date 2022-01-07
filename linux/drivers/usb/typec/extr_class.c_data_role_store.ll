; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_data_role_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_data_role_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.typec_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32)*, i64 }

@.str = private unnamed_addr constant [34 x i8] c"data role swapping not supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@typec_data_roles = common dso_local global i32 0, align 4
@TYPEC_PORT_DRD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @data_role_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @data_role_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.typec_port*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.typec_port* @to_typec_port(%struct.device* %12)
  store %struct.typec_port* %13, %struct.typec_port** %10, align 8
  %14 = load %struct.typec_port*, %struct.typec_port** %10, align 8
  %15 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %17, align 8
  %19 = icmp ne i32 (%struct.TYPE_2__*, i32)* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %4
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = call i32 @dev_dbg(%struct.device* %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %69

25:                                               ; preds = %4
  %26 = load i32, i32* @typec_data_roles, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @sysfs_match_string(i32 %26, i8* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %69

33:                                               ; preds = %25
  %34 = load %struct.typec_port*, %struct.typec_port** %10, align 8
  %35 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.typec_port*, %struct.typec_port** %10, align 8
  %38 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TYPEC_PORT_DRD, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = load i32, i32* @EOPNOTSUPP, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %11, align 4
  br label %64

47:                                               ; preds = %33
  %48 = load %struct.typec_port*, %struct.typec_port** %10, align 8
  %49 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %51, align 8
  %53 = load %struct.typec_port*, %struct.typec_port** %10, align 8
  %54 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 %52(%struct.TYPE_2__* %55, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  br label %64

61:                                               ; preds = %47
  %62 = load i64, i64* %9, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %61, %60, %44
  %65 = load %struct.typec_port*, %struct.typec_port** %10, align 8
  %66 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %64, %31, %20
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.typec_port* @to_typec_port(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @sysfs_match_string(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
