; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_power_role_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_power_role_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.typec_port = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32)*, i32 }

@.str = private unnamed_addr constant [34 x i8] c"USB Power Delivery not supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"power role swapping not supported\0A\00", align 1
@TYPEC_PWR_MODE_PD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"partner unable to swap power role\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@typec_roles = common dso_local global i32 0, align 4
@TYPEC_PORT_DRP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"port type fixed at \22%s\22\00", align 1
@typec_port_power_roles = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @power_role_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_role_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  %15 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %4
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %98

25:                                               ; preds = %4
  %26 = load %struct.typec_port*, %struct.typec_port** %10, align 8
  %27 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %29, align 8
  %31 = icmp ne i32 (%struct.TYPE_2__*, i32)* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %25
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %98

37:                                               ; preds = %25
  %38 = load %struct.typec_port*, %struct.typec_port** %10, align 8
  %39 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TYPEC_PWR_MODE_PD, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %98

48:                                               ; preds = %37
  %49 = load i32, i32* @typec_roles, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @sysfs_match_string(i32 %49, i8* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %5, align 4
  br label %98

56:                                               ; preds = %48
  %57 = load %struct.typec_port*, %struct.typec_port** %10, align 8
  %58 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %57, i32 0, i32 2
  %59 = call i32 @mutex_lock(i32* %58)
  %60 = load %struct.typec_port*, %struct.typec_port** %10, align 8
  %61 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TYPEC_PORT_DRP, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %56
  %66 = load %struct.device*, %struct.device** %6, align 8
  %67 = load i32*, i32** @typec_port_power_roles, align 8
  %68 = load %struct.typec_port*, %struct.typec_port** %10, align 8
  %69 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @EOPNOTSUPP, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %11, align 4
  br label %93

76:                                               ; preds = %56
  %77 = load %struct.typec_port*, %struct.typec_port** %10, align 8
  %78 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %77, i32 0, i32 3
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %80, align 8
  %82 = load %struct.typec_port*, %struct.typec_port** %10, align 8
  %83 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %82, i32 0, i32 3
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 %81(%struct.TYPE_2__* %84, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %76
  br label %93

90:                                               ; preds = %76
  %91 = load i64, i64* %9, align 8
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %90, %89, %65
  %94 = load %struct.typec_port*, %struct.typec_port** %10, align 8
  %95 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %94, i32 0, i32 2
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %93, %54, %43, %32, %20
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local %struct.typec_port* @to_typec_port(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @sysfs_match_string(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
