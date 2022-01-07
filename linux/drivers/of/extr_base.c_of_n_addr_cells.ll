; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_base.c_of_n_addr_cells.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_base.c_of_n_addr_cells.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { %struct.device_node* }

@.str = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@OF_ROOT_NODE_ADDR_CELLS_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_n_addr_cells(%struct.device_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  br label %5

5:                                                ; preds = %21, %1
  %6 = load %struct.device_node*, %struct.device_node** %3, align 8
  %7 = getelementptr inbounds %struct.device_node, %struct.device_node* %6, i32 0, i32 0
  %8 = load %struct.device_node*, %struct.device_node** %7, align 8
  %9 = icmp ne %struct.device_node* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load %struct.device_node*, %struct.device_node** %3, align 8
  %12 = getelementptr inbounds %struct.device_node, %struct.device_node* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %3, align 8
  br label %14

14:                                               ; preds = %10, %5
  %15 = load %struct.device_node*, %struct.device_node** %3, align 8
  %16 = call i32 @of_property_read_u32(%struct.device_node* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %4)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %28

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.device_node*, %struct.device_node** %3, align 8
  %23 = getelementptr inbounds %struct.device_node, %struct.device_node* %22, i32 0, i32 0
  %24 = load %struct.device_node*, %struct.device_node** %23, align 8
  %25 = icmp ne %struct.device_node* %24, null
  br i1 %25, label %5, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @OF_ROOT_NODE_ADDR_CELLS_DEFAULT, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %18
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
