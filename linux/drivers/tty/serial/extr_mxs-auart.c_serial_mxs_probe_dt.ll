; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_serial_mxs_probe_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_serial_mxs_probe_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_auart_port = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to get alias id: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"uart-has-rtscts\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"fsl,uart-has-rtscts\00", align 1
@MXS_AUART_RTSCTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxs_auart_port*, %struct.platform_device*)* @serial_mxs_probe_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_mxs_probe_dt(%struct.mxs_auart_port* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mxs_auart_port*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.mxs_auart_port* %0, %struct.mxs_auart_port** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %6, align 8
  %12 = load %struct.device_node*, %struct.device_node** %6, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %44

15:                                               ; preds = %2
  %16 = load %struct.device_node*, %struct.device_node** %6, align 8
  %17 = call i32 @of_alias_get_id(%struct.device_node* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @dev_err(%struct.TYPE_4__* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %44

26:                                               ; preds = %15
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %29 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load %struct.device_node*, %struct.device_node** %6, align 8
  %32 = call i64 @of_get_property(%struct.device_node* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %26
  %35 = load %struct.device_node*, %struct.device_node** %6, align 8
  %36 = call i64 @of_get_property(%struct.device_node* %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34, %26
  %39 = load i32, i32* @MXS_AUART_RTSCTS, align 4
  %40 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %41 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %40, i32 0, i32 0
  %42 = call i32 @set_bit(i32 %39, i32* %41)
  br label %43

43:                                               ; preds = %38, %34
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %20, %14
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @of_alias_get_id(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i64 @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
