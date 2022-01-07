; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_property.c_of_property_count_elems_of_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_property.c_of_property_count_elems_of_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.property = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"size of %s in node %pOF is not a multiple of %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_property_count_elems_of_size(%struct.device_node* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.property*, align 8
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.device_node*, %struct.device_node** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.property* @of_find_property(%struct.device_node* %9, i8* %10, i32* null)
  store %struct.property* %11, %struct.property** %8, align 8
  %12 = load %struct.property*, %struct.property** %8, align 8
  %13 = icmp ne %struct.property* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %45

17:                                               ; preds = %3
  %18 = load %struct.property*, %struct.property** %8, align 8
  %19 = getelementptr inbounds %struct.property, %struct.property* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENODATA, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %45

25:                                               ; preds = %17
  %26 = load %struct.property*, %struct.property** %8, align 8
  %27 = getelementptr inbounds %struct.property, %struct.property* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = srem i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.device_node*, %struct.device_node** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %33, %struct.device_node* %34, i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %45

39:                                               ; preds = %25
  %40 = load %struct.property*, %struct.property** %8, align 8
  %41 = getelementptr inbounds %struct.property, %struct.property* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sdiv i32 %42, %43
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %39, %32, %22, %14
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @pr_err(i8*, i8*, %struct.device_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
