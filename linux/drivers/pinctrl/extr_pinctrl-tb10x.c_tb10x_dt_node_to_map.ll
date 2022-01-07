; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-tb10x.c_tb10x_dt_node_to_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-tb10x.c_tb10x_dt_node_to_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.device_node = type { i32 }
%struct.pinctrl_map = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"abilis,function\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"%pOF: No abilis,function property in device tree.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.device_node*, %struct.pinctrl_map**, i32*)* @tb10x_dt_node_to_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb10x_dt_node_to_map(%struct.pinctrl_dev* %0, %struct.device_node* %1, %struct.pinctrl_map** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.pinctrl_map**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store %struct.device_node* %1, %struct.device_node** %7, align 8
  store %struct.pinctrl_map** %2, %struct.pinctrl_map*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.device_node*, %struct.device_node** %7, align 8
  %14 = call i64 @of_property_read_string(%struct.device_node* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %10)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load %struct.device_node*, %struct.device_node** %7, align 8
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %42

21:                                               ; preds = %4
  %22 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %8, align 8
  store %struct.pinctrl_map* null, %struct.pinctrl_map** %22, align 8
  %23 = load i32*, i32** %9, align 8
  store i32 0, i32* %23, align 4
  %24 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %25 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %8, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @pinctrl_utils_reserve_map(%struct.pinctrl_dev* %24, %struct.pinctrl_map** %25, i32* %11, i32* %26, i32 1)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %40

31:                                               ; preds = %21
  %32 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %33 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %8, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load %struct.device_node*, %struct.device_node** %7, align 8
  %37 = getelementptr inbounds %struct.device_node, %struct.device_node* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pinctrl_utils_add_map_mux(%struct.pinctrl_dev* %32, %struct.pinctrl_map** %33, i32* %11, i32* %34, i8* %35, i32 %38)
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %31, %30
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %16
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i64 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @pr_err(i8*, %struct.device_node*) #1

declare dso_local i32 @pinctrl_utils_reserve_map(%struct.pinctrl_dev*, %struct.pinctrl_map**, i32*, i32*, i32) #1

declare dso_local i32 @pinctrl_utils_add_map_mux(%struct.pinctrl_dev*, %struct.pinctrl_map**, i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
