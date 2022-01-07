; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_base.c___of_update_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_base.c___of_update_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { %struct.property*, %struct.property* }
%struct.property = type { %struct.property*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__of_update_property(%struct.device_node* %0, %struct.property* %1, %struct.property** %2) #0 {
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.property*, align 8
  %6 = alloca %struct.property**, align 8
  %7 = alloca %struct.property**, align 8
  %8 = alloca %struct.property*, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.property* %1, %struct.property** %5, align 8
  store %struct.property** %2, %struct.property*** %6, align 8
  %9 = load %struct.device_node*, %struct.device_node** %4, align 8
  %10 = getelementptr inbounds %struct.device_node, %struct.device_node* %9, i32 0, i32 1
  store %struct.property** %10, %struct.property*** %7, align 8
  br label %11

11:                                               ; preds = %27, %3
  %12 = load %struct.property**, %struct.property*** %7, align 8
  %13 = load %struct.property*, %struct.property** %12, align 8
  %14 = icmp ne %struct.property* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = load %struct.property**, %struct.property*** %7, align 8
  %17 = load %struct.property*, %struct.property** %16, align 8
  %18 = getelementptr inbounds %struct.property, %struct.property* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.property*, %struct.property** %5, align 8
  %21 = getelementptr inbounds %struct.property, %struct.property* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @of_prop_cmp(i32 %19, i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %31

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.property**, %struct.property*** %7, align 8
  %29 = load %struct.property*, %struct.property** %28, align 8
  %30 = getelementptr inbounds %struct.property, %struct.property* %29, i32 0, i32 0
  store %struct.property** %30, %struct.property*** %7, align 8
  br label %11

31:                                               ; preds = %25, %11
  %32 = load %struct.property**, %struct.property*** %7, align 8
  %33 = load %struct.property*, %struct.property** %32, align 8
  store %struct.property* %33, %struct.property** %8, align 8
  %34 = load %struct.property**, %struct.property*** %6, align 8
  store %struct.property* %33, %struct.property** %34, align 8
  %35 = load %struct.property*, %struct.property** %8, align 8
  %36 = icmp ne %struct.property* %35, null
  br i1 %36, label %37, label %53

37:                                               ; preds = %31
  %38 = load %struct.property*, %struct.property** %8, align 8
  %39 = getelementptr inbounds %struct.property, %struct.property* %38, i32 0, i32 0
  %40 = load %struct.property*, %struct.property** %39, align 8
  %41 = load %struct.property*, %struct.property** %5, align 8
  %42 = getelementptr inbounds %struct.property, %struct.property* %41, i32 0, i32 0
  store %struct.property* %40, %struct.property** %42, align 8
  %43 = load %struct.property*, %struct.property** %5, align 8
  %44 = load %struct.property**, %struct.property*** %7, align 8
  store %struct.property* %43, %struct.property** %44, align 8
  %45 = load %struct.device_node*, %struct.device_node** %4, align 8
  %46 = getelementptr inbounds %struct.device_node, %struct.device_node* %45, i32 0, i32 0
  %47 = load %struct.property*, %struct.property** %46, align 8
  %48 = load %struct.property*, %struct.property** %8, align 8
  %49 = getelementptr inbounds %struct.property, %struct.property* %48, i32 0, i32 0
  store %struct.property* %47, %struct.property** %49, align 8
  %50 = load %struct.property*, %struct.property** %8, align 8
  %51 = load %struct.device_node*, %struct.device_node** %4, align 8
  %52 = getelementptr inbounds %struct.device_node, %struct.device_node* %51, i32 0, i32 0
  store %struct.property* %50, %struct.property** %52, align 8
  br label %58

53:                                               ; preds = %31
  %54 = load %struct.property*, %struct.property** %5, align 8
  %55 = getelementptr inbounds %struct.property, %struct.property* %54, i32 0, i32 0
  store %struct.property* null, %struct.property** %55, align 8
  %56 = load %struct.property*, %struct.property** %5, align 8
  %57 = load %struct.property**, %struct.property*** %7, align 8
  store %struct.property* %56, %struct.property** %57, align 8
  br label %58

58:                                               ; preds = %53, %37
  ret i32 0
}

declare dso_local i64 @of_prop_cmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
