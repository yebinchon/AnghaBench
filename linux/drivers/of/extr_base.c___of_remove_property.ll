; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_base.c___of_remove_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_base.c___of_remove_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { %struct.property*, %struct.property* }
%struct.property = type { %struct.property* }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__of_remove_property(%struct.device_node* %0, %struct.property* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.property*, align 8
  %6 = alloca %struct.property**, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.property* %1, %struct.property** %5, align 8
  %7 = load %struct.device_node*, %struct.device_node** %4, align 8
  %8 = getelementptr inbounds %struct.device_node, %struct.device_node* %7, i32 0, i32 1
  store %struct.property** %8, %struct.property*** %6, align 8
  br label %9

9:                                                ; preds = %20, %2
  %10 = load %struct.property**, %struct.property*** %6, align 8
  %11 = load %struct.property*, %struct.property** %10, align 8
  %12 = icmp ne %struct.property* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = load %struct.property**, %struct.property*** %6, align 8
  %15 = load %struct.property*, %struct.property** %14, align 8
  %16 = load %struct.property*, %struct.property** %5, align 8
  %17 = icmp eq %struct.property* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %24

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.property**, %struct.property*** %6, align 8
  %22 = load %struct.property*, %struct.property** %21, align 8
  %23 = getelementptr inbounds %struct.property, %struct.property* %22, i32 0, i32 0
  store %struct.property** %23, %struct.property*** %6, align 8
  br label %9

24:                                               ; preds = %18, %9
  %25 = load %struct.property**, %struct.property*** %6, align 8
  %26 = load %struct.property*, %struct.property** %25, align 8
  %27 = icmp eq %struct.property* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %44

31:                                               ; preds = %24
  %32 = load %struct.property*, %struct.property** %5, align 8
  %33 = getelementptr inbounds %struct.property, %struct.property* %32, i32 0, i32 0
  %34 = load %struct.property*, %struct.property** %33, align 8
  %35 = load %struct.property**, %struct.property*** %6, align 8
  store %struct.property* %34, %struct.property** %35, align 8
  %36 = load %struct.device_node*, %struct.device_node** %4, align 8
  %37 = getelementptr inbounds %struct.device_node, %struct.device_node* %36, i32 0, i32 0
  %38 = load %struct.property*, %struct.property** %37, align 8
  %39 = load %struct.property*, %struct.property** %5, align 8
  %40 = getelementptr inbounds %struct.property, %struct.property* %39, i32 0, i32 0
  store %struct.property* %38, %struct.property** %40, align 8
  %41 = load %struct.property*, %struct.property** %5, align 8
  %42 = load %struct.device_node*, %struct.device_node** %4, align 8
  %43 = getelementptr inbounds %struct.device_node, %struct.device_node* %42, i32 0, i32 0
  store %struct.property* %41, %struct.property** %43, align 8
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %31, %28
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
