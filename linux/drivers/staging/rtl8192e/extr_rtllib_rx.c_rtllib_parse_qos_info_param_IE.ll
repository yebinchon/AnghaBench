; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_rx.c_rtllib_parse_qos_info_param_IE.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_rx.c_rtllib_parse_qos_info_param_IE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32 }
%struct.rtllib_info_element = type { i32 }
%struct.rtllib_network = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.rtllib_qos_information_element = type { i32 }
%struct.rtllib_qos_parameter_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@NETWORK_HAS_QOS_INFORMATION = common dso_local global i32 0, align 4
@NETWORK_HAS_QOS_PARAMETERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"QoS is supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtllib_device*, %struct.rtllib_info_element*, %struct.rtllib_network*)* @rtllib_parse_qos_info_param_IE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtllib_parse_qos_info_param_IE(%struct.rtllib_device* %0, %struct.rtllib_info_element* %1, %struct.rtllib_network* %2) #0 {
  %4 = alloca %struct.rtllib_device*, align 8
  %5 = alloca %struct.rtllib_info_element*, align 8
  %6 = alloca %struct.rtllib_network*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtllib_qos_information_element, align 4
  %9 = alloca %struct.rtllib_qos_parameter_info, align 4
  store %struct.rtllib_device* %0, %struct.rtllib_device** %4, align 8
  store %struct.rtllib_info_element* %1, %struct.rtllib_info_element** %5, align 8
  store %struct.rtllib_network* %2, %struct.rtllib_network** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.rtllib_info_element*, %struct.rtllib_info_element** %5, align 8
  %11 = call i32 @rtllib_read_qos_info_element(%struct.rtllib_qos_information_element* %8, %struct.rtllib_info_element* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.rtllib_qos_information_element, %struct.rtllib_qos_information_element* %8, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 15
  %18 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %19 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @NETWORK_HAS_QOS_INFORMATION, align 4
  %22 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %23 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %48

26:                                               ; preds = %3
  %27 = load %struct.rtllib_info_element*, %struct.rtllib_info_element** %5, align 8
  %28 = call i32 @rtllib_read_qos_param_element(%struct.rtllib_qos_parameter_info* %9, %struct.rtllib_info_element* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %33 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %32, i32 0, i32 0
  %34 = call i32 @rtllib_qos_convert_ac_to_parameters(%struct.rtllib_qos_parameter_info* %9, %struct.TYPE_4__* %33)
  %35 = load i32, i32* @NETWORK_HAS_QOS_PARAMETERS, align 4
  %36 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %37 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = getelementptr inbounds %struct.rtllib_qos_parameter_info, %struct.rtllib_qos_parameter_info* %9, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 15
  %44 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %45 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  br label %47

47:                                               ; preds = %31, %26
  br label %48

48:                                               ; preds = %47, %14
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %53 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @netdev_dbg(i32 %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %57 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %51, %48
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @rtllib_read_qos_info_element(%struct.rtllib_qos_information_element*, %struct.rtllib_info_element*) #1

declare dso_local i32 @rtllib_read_qos_param_element(%struct.rtllib_qos_parameter_info*, %struct.rtllib_info_element*) #1

declare dso_local i32 @rtllib_qos_convert_ac_to_parameters(%struct.rtllib_qos_parameter_info*, %struct.TYPE_4__*) #1

declare dso_local i32 @netdev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
