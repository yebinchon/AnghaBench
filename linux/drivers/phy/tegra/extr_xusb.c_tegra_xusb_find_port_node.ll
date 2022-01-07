; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_find_port_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_find_port_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.tegra_xusb_padctl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device_node* }

@.str = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-%u\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device_node* (%struct.tegra_xusb_padctl*, i8*, i32)* @tegra_xusb_find_port_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device_node* @tegra_xusb_find_port_node(%struct.tegra_xusb_padctl* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.tegra_xusb_padctl*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i8*, align 8
  store %struct.tegra_xusb_padctl* %0, %struct.tegra_xusb_padctl** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %5, align 8
  %12 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  %16 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %16, %struct.device_node** %8, align 8
  %17 = load %struct.device_node*, %struct.device_node** %8, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store %struct.device_node* null, %struct.device_node** %4, align 8
  br label %42

20:                                               ; preds = %3
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i8* @kasprintf(i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %22, i32 %23)
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %20
  %28 = load %struct.device_node*, %struct.device_node** %8, align 8
  %29 = call i32 @of_node_put(%struct.device_node* %28)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.device_node* @ERR_PTR(i32 %31)
  store %struct.device_node* %32, %struct.device_node** %4, align 8
  br label %42

33:                                               ; preds = %20
  %34 = load %struct.device_node*, %struct.device_node** %8, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %34, i8* %35)
  store %struct.device_node* %36, %struct.device_node** %9, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @kfree(i8* %37)
  %39 = load %struct.device_node*, %struct.device_node** %8, align 8
  %40 = call i32 @of_node_put(%struct.device_node* %39)
  %41 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %41, %struct.device_node** %4, align 8
  br label %42

42:                                               ; preds = %33, %27, %19
  %43 = load %struct.device_node*, %struct.device_node** %4, align 8
  ret %struct.device_node* %43
}

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i8* @kasprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.device_node* @ERR_PTR(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
