; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_add_usb2_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_add_usb2_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb_padctl = type { i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_12__*)* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__* }
%struct.tegra_xusb_usb2_port = type { %struct.TYPE_12__ }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"usb2\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_xusb_padctl*, i32)* @tegra_xusb_add_usb2_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_xusb_add_usb2_port(%struct.tegra_xusb_padctl* %0, i32 %1) #0 {
  %3 = alloca %struct.tegra_xusb_padctl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_xusb_usb2_port*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.tegra_xusb_padctl* %0, %struct.tegra_xusb_padctl** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.device_node* @tegra_xusb_find_port_node(%struct.tegra_xusb_padctl* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %9)
  store %struct.device_node* %10, %struct.device_node** %6, align 8
  %11 = load %struct.device_node*, %struct.device_node** %6, align 8
  %12 = icmp ne %struct.device_node* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.device_node*, %struct.device_node** %6, align 8
  %15 = call i32 @of_device_is_available(%struct.device_node* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13, %2
  br label %90

18:                                               ; preds = %13
  %19 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %20 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.tegra_xusb_usb2_port* @devm_kzalloc(i32 %21, i32 16, i32 %22)
  store %struct.tegra_xusb_usb2_port* %23, %struct.tegra_xusb_usb2_port** %5, align 8
  %24 = load %struct.tegra_xusb_usb2_port*, %struct.tegra_xusb_usb2_port** %5, align 8
  %25 = icmp ne %struct.tegra_xusb_usb2_port* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %90

29:                                               ; preds = %18
  %30 = load %struct.tegra_xusb_usb2_port*, %struct.tegra_xusb_usb2_port** %5, align 8
  %31 = getelementptr inbounds %struct.tegra_xusb_usb2_port, %struct.tegra_xusb_usb2_port* %30, i32 0, i32 0
  %32 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %33 = load %struct.device_node*, %struct.device_node** %6, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @tegra_xusb_port_init(%struct.TYPE_12__* %31, %struct.tegra_xusb_padctl* %32, %struct.device_node* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %90

39:                                               ; preds = %29
  %40 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %41 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %40, i32 0, i32 1
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = load %struct.tegra_xusb_usb2_port*, %struct.tegra_xusb_usb2_port** %5, align 8
  %48 = getelementptr inbounds %struct.tegra_xusb_usb2_port, %struct.tegra_xusb_usb2_port* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %49, align 8
  %50 = load %struct.tegra_xusb_usb2_port*, %struct.tegra_xusb_usb2_port** %5, align 8
  %51 = getelementptr inbounds %struct.tegra_xusb_usb2_port, %struct.tegra_xusb_usb2_port* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %54, align 8
  %56 = load %struct.tegra_xusb_usb2_port*, %struct.tegra_xusb_usb2_port** %5, align 8
  %57 = getelementptr inbounds %struct.tegra_xusb_usb2_port, %struct.tegra_xusb_usb2_port* %56, i32 0, i32 0
  %58 = call i32 %55(%struct.TYPE_12__* %57)
  %59 = load %struct.tegra_xusb_usb2_port*, %struct.tegra_xusb_usb2_port** %5, align 8
  %60 = getelementptr inbounds %struct.tegra_xusb_usb2_port, %struct.tegra_xusb_usb2_port* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.tegra_xusb_usb2_port*, %struct.tegra_xusb_usb2_port** %5, align 8
  %63 = getelementptr inbounds %struct.tegra_xusb_usb2_port, %struct.tegra_xusb_usb2_port* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @IS_ERR(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %39
  %69 = load %struct.tegra_xusb_usb2_port*, %struct.tegra_xusb_usb2_port** %5, align 8
  %70 = getelementptr inbounds %struct.tegra_xusb_usb2_port, %struct.tegra_xusb_usb2_port* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @PTR_ERR(i32 %72)
  store i32 %73, i32* %7, align 4
  br label %90

74:                                               ; preds = %39
  %75 = load %struct.tegra_xusb_usb2_port*, %struct.tegra_xusb_usb2_port** %5, align 8
  %76 = call i32 @tegra_xusb_usb2_port_parse_dt(%struct.tegra_xusb_usb2_port* %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.tegra_xusb_usb2_port*, %struct.tegra_xusb_usb2_port** %5, align 8
  %81 = getelementptr inbounds %struct.tegra_xusb_usb2_port, %struct.tegra_xusb_usb2_port* %80, i32 0, i32 0
  %82 = call i32 @tegra_xusb_port_unregister(%struct.TYPE_12__* %81)
  br label %90

83:                                               ; preds = %74
  %84 = load %struct.tegra_xusb_usb2_port*, %struct.tegra_xusb_usb2_port** %5, align 8
  %85 = getelementptr inbounds %struct.tegra_xusb_usb2_port, %struct.tegra_xusb_usb2_port* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %88 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %87, i32 0, i32 0
  %89 = call i32 @list_add_tail(i32* %86, i32* %88)
  br label %90

90:                                               ; preds = %83, %79, %68, %38, %26, %17
  %91 = load %struct.device_node*, %struct.device_node** %6, align 8
  %92 = call i32 @of_node_put(%struct.device_node* %91)
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local %struct.device_node* @tegra_xusb_find_port_node(%struct.tegra_xusb_padctl*, i8*, i32) #1

declare dso_local i32 @of_device_is_available(%struct.device_node*) #1

declare dso_local %struct.tegra_xusb_usb2_port* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @tegra_xusb_port_init(%struct.TYPE_12__*, %struct.tegra_xusb_padctl*, %struct.device_node*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @tegra_xusb_usb2_port_parse_dt(%struct.tegra_xusb_usb2_port*) #1

declare dso_local i32 @tegra_xusb_port_unregister(%struct.TYPE_12__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
