; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_port_type_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_port_type_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.typec_port = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32)*, i64 }

@TYPEC_PORT_DRP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"changing port type not supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@typec_port_power_roles = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @port_type_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_type_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.typec_port*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.typec_port* @to_typec_port(%struct.device* %13)
  store %struct.typec_port* %14, %struct.typec_port** %10, align 8
  %15 = load %struct.typec_port*, %struct.typec_port** %10, align 8
  %16 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.TYPE_2__*, i32)* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %4
  %22 = load %struct.typec_port*, %struct.typec_port** %10, align 8
  %23 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TYPEC_PORT_DRP, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %21, %4
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = call i32 @dev_dbg(%struct.device* %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %80

34:                                               ; preds = %21
  %35 = load i32, i32* @typec_port_power_roles, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @sysfs_match_string(i32 %35, i8* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %5, align 4
  br label %80

42:                                               ; preds = %34
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %12, align 4
  %44 = load %struct.typec_port*, %struct.typec_port** %10, align 8
  %45 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %44, i32 0, i32 1
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.typec_port*, %struct.typec_port** %10, align 8
  %48 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load i64, i64* %9, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %11, align 4
  br label %75

55:                                               ; preds = %42
  %56 = load %struct.typec_port*, %struct.typec_port** %10, align 8
  %57 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %59, align 8
  %61 = load %struct.typec_port*, %struct.typec_port** %10, align 8
  %62 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 %60(%struct.TYPE_2__* %63, i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  br label %75

69:                                               ; preds = %55
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.typec_port*, %struct.typec_port** %10, align 8
  %72 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i64, i64* %9, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %69, %68, %52
  %76 = load %struct.typec_port*, %struct.typec_port** %10, align 8
  %77 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %76, i32 0, i32 1
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %75, %40, %29
  %81 = load i32, i32* %5, align 4
  ret i32 %81
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
