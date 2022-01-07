; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_address.c___of_get_dma_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_address.c___of_get_dma_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.of_phandle_args = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"interconnect-names\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"dma-mem\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"interconnects\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"#interconnect-cells\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device_node* (%struct.device_node*)* @__of_get_dma_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device_node* @__of_get_dma_parent(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %7 = load %struct.device_node*, %struct.device_node** %3, align 8
  %8 = call i32 @of_property_match_string(%struct.device_node* %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.device_node*, %struct.device_node** %3, align 8
  %13 = call %struct.device_node* @of_get_parent(%struct.device_node* %12)
  store %struct.device_node* %13, %struct.device_node** %2, align 8
  br label %27

14:                                               ; preds = %1
  %15 = load %struct.device_node*, %struct.device_node** %3, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @of_parse_phandle_with_args(%struct.device_node* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %16, %struct.of_phandle_args* %4)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %struct.device_node*, %struct.device_node** %3, align 8
  %22 = call %struct.device_node* @of_get_parent(%struct.device_node* %21)
  store %struct.device_node* %22, %struct.device_node** %2, align 8
  br label %27

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.device_node* @of_node_get(i32 %25)
  store %struct.device_node* %26, %struct.device_node** %2, align 8
  br label %27

27:                                               ; preds = %23, %20, %11
  %28 = load %struct.device_node*, %struct.device_node** %2, align 8
  ret %struct.device_node* %28
}

declare dso_local i32 @of_property_match_string(%struct.device_node*, i8*, i8*) #1

declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #1

declare dso_local i32 @of_parse_phandle_with_args(%struct.device_node*, i8*, i8*, i32, %struct.of_phandle_args*) #1

declare dso_local %struct.device_node* @of_node_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
