; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_st-asc.c_asc_of_get_asc_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_st-asc.c_asc_of_get_asc_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asc_port = type { i32*, %struct.TYPE_3__, i8*, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@ASC_SERIAL_NAME = common dso_local global i8* null, align 8
@ASC_MAX_PORTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"uart-has-rtscts\00", align 1
@asc_ports = common dso_local global %struct.asc_port* null, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"st,force_m1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.asc_port* (%struct.platform_device*)* @asc_of_get_asc_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.asc_port* @asc_of_get_asc_port(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.asc_port*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %9, %struct.device_node** %4, align 8
  %10 = load %struct.device_node*, %struct.device_node** %4, align 8
  %11 = icmp ne %struct.device_node* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.asc_port* null, %struct.asc_port** %2, align 8
  br label %65

13:                                               ; preds = %1
  %14 = load %struct.device_node*, %struct.device_node** %4, align 8
  %15 = call i32 @of_alias_get_id(%struct.device_node* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.device_node*, %struct.device_node** %4, align 8
  %20 = load i8*, i8** @ASC_SERIAL_NAME, align 8
  %21 = call i32 @of_alias_get_id(%struct.device_node* %19, i8* %20)
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %18, %13
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @ASC_MAX_PORTS, align 4
  %29 = icmp sge i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store %struct.asc_port* null, %struct.asc_port** %2, align 8
  br label %65

34:                                               ; preds = %26
  %35 = load %struct.device_node*, %struct.device_node** %4, align 8
  %36 = call i8* @of_property_read_bool(%struct.device_node* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.asc_port*, %struct.asc_port** @asc_ports, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %37, i64 %39
  %41 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %40, i32 0, i32 3
  store i8* %36, i8** %41, align 8
  %42 = load %struct.device_node*, %struct.device_node** %4, align 8
  %43 = call i8* @of_property_read_bool(%struct.device_node* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.asc_port*, %struct.asc_port** @asc_ports, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %44, i64 %46
  %48 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %47, i32 0, i32 2
  store i8* %43, i8** %48, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.asc_port*, %struct.asc_port** @asc_ports, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %50, i64 %52
  %54 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %49, i32* %55, align 8
  %56 = load %struct.asc_port*, %struct.asc_port** @asc_ports, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %56, i64 %58
  %60 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %59, i32 0, i32 0
  store i32* null, i32** %60, align 8
  %61 = load %struct.asc_port*, %struct.asc_port** @asc_ports, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %61, i64 %63
  store %struct.asc_port* %64, %struct.asc_port** %2, align 8
  br label %65

65:                                               ; preds = %34, %33, %12
  %66 = load %struct.asc_port*, %struct.asc_port** %2, align 8
  ret %struct.asc_port* %66
}

declare dso_local i32 @of_alias_get_id(%struct.device_node*, i8*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i8* @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
