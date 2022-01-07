; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_port_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_port_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb_port = type { i32, %struct.TYPE_5__, %struct.tegra_xusb_padctl*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32* }
%struct.tegra_xusb_padctl = type { i32 }
%struct.device_node = type { i32 }

@tegra_xusb_port_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_xusb_port*, %struct.tegra_xusb_padctl*, %struct.device_node*, i8*, i32)* @tegra_xusb_port_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_xusb_port_init(%struct.tegra_xusb_port* %0, %struct.tegra_xusb_padctl* %1, %struct.device_node* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tegra_xusb_port*, align 8
  %8 = alloca %struct.tegra_xusb_padctl*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tegra_xusb_port* %0, %struct.tegra_xusb_port** %7, align 8
  store %struct.tegra_xusb_padctl* %1, %struct.tegra_xusb_padctl** %8, align 8
  store %struct.device_node* %2, %struct.device_node** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.tegra_xusb_port*, %struct.tegra_xusb_port** %7, align 8
  %14 = getelementptr inbounds %struct.tegra_xusb_port, %struct.tegra_xusb_port* %13, i32 0, i32 3
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %8, align 8
  %17 = load %struct.tegra_xusb_port*, %struct.tegra_xusb_port** %7, align 8
  %18 = getelementptr inbounds %struct.tegra_xusb_port, %struct.tegra_xusb_port* %17, i32 0, i32 2
  store %struct.tegra_xusb_padctl* %16, %struct.tegra_xusb_padctl** %18, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.tegra_xusb_port*, %struct.tegra_xusb_port** %7, align 8
  %21 = getelementptr inbounds %struct.tegra_xusb_port, %struct.tegra_xusb_port* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.tegra_xusb_port*, %struct.tegra_xusb_port** %7, align 8
  %23 = getelementptr inbounds %struct.tegra_xusb_port, %struct.tegra_xusb_port* %22, i32 0, i32 1
  %24 = call i32 @device_initialize(%struct.TYPE_5__* %23)
  %25 = load %struct.tegra_xusb_port*, %struct.tegra_xusb_port** %7, align 8
  %26 = getelementptr inbounds %struct.tegra_xusb_port, %struct.tegra_xusb_port* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  store i32* @tegra_xusb_port_type, i32** %27, align 8
  %28 = load %struct.device_node*, %struct.device_node** %9, align 8
  %29 = call i32 @of_node_get(%struct.device_node* %28)
  %30 = load %struct.tegra_xusb_port*, %struct.tegra_xusb_port** %7, align 8
  %31 = getelementptr inbounds %struct.tegra_xusb_port, %struct.tegra_xusb_port* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %8, align 8
  %34 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tegra_xusb_port*, %struct.tegra_xusb_port** %7, align 8
  %37 = getelementptr inbounds %struct.tegra_xusb_port, %struct.tegra_xusb_port* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load %struct.tegra_xusb_port*, %struct.tegra_xusb_port** %7, align 8
  %40 = getelementptr inbounds %struct.tegra_xusb_port, %struct.tegra_xusb_port* %39, i32 0, i32 1
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @dev_set_name(%struct.TYPE_5__* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %41, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %5
  br label %55

47:                                               ; preds = %5
  %48 = load %struct.tegra_xusb_port*, %struct.tegra_xusb_port** %7, align 8
  %49 = getelementptr inbounds %struct.tegra_xusb_port, %struct.tegra_xusb_port* %48, i32 0, i32 1
  %50 = call i32 @device_add(%struct.TYPE_5__* %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %55

54:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  br label %60

55:                                               ; preds = %53, %46
  %56 = load %struct.tegra_xusb_port*, %struct.tegra_xusb_port** %7, align 8
  %57 = getelementptr inbounds %struct.tegra_xusb_port, %struct.tegra_xusb_port* %56, i32 0, i32 1
  %58 = call i32 @device_unregister(%struct.TYPE_5__* %57)
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %55, %54
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_5__*) #1

declare dso_local i32 @of_node_get(%struct.device_node*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_5__*, i8*, i8*, i32) #1

declare dso_local i32 @device_add(%struct.TYPE_5__*) #1

declare dso_local i32 @device_unregister(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
