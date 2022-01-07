; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_irq.c_of_irq_to_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_irq.c_of_irq_to_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.resource = type { i32, i32, i32, i8* }

@.str = private unnamed_addr constant [16 x i8] c"interrupt-names\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_irq_to_resource(%struct.device_node* %0, i32 %1, %struct.resource* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.resource* %2, %struct.resource** %7, align 8
  %10 = load %struct.device_node*, %struct.device_node** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @of_irq_get(%struct.device_node* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %54

17:                                               ; preds = %3
  %18 = load %struct.resource*, %struct.resource** %7, align 8
  %19 = icmp ne %struct.resource* %18, null
  br i1 %19, label %20, label %52

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %20
  store i8* null, i8** %9, align 8
  %24 = load %struct.resource*, %struct.resource** %7, align 8
  %25 = call i32 @memset(%struct.resource* %24, i32 0, i32 24)
  %26 = load %struct.device_node*, %struct.device_node** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @of_property_read_string_index(%struct.device_node* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %27, i8** %9)
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.resource*, %struct.resource** %7, align 8
  %31 = getelementptr inbounds %struct.resource, %struct.resource* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.resource*, %struct.resource** %7, align 8
  %33 = getelementptr inbounds %struct.resource, %struct.resource* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 8
  %34 = load i32, i32* @IORESOURCE_IRQ, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @irq_get_irq_data(i32 %35)
  %37 = call i32 @irqd_get_trigger_type(i32 %36)
  %38 = or i32 %34, %37
  %39 = load %struct.resource*, %struct.resource** %7, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %23
  %44 = load i8*, i8** %9, align 8
  br label %48

45:                                               ; preds = %23
  %46 = load %struct.device_node*, %struct.device_node** %5, align 8
  %47 = call i8* @of_node_full_name(%struct.device_node* %46)
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi i8* [ %44, %43 ], [ %47, %45 ]
  %50 = load %struct.resource*, %struct.resource** %7, align 8
  %51 = getelementptr inbounds %struct.resource, %struct.resource* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %48, %20, %17
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %15
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @of_irq_get(%struct.device_node*, i32) #1

declare dso_local i32 @memset(%struct.resource*, i32, i32) #1

declare dso_local i32 @of_property_read_string_index(%struct.device_node*, i8*, i32, i8**) #1

declare dso_local i32 @irqd_get_trigger_type(i32) #1

declare dso_local i32 @irq_get_irq_data(i32) #1

declare dso_local i8* @of_node_full_name(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
