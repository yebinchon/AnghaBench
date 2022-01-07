; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_dynamic.c___of_prop_dup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_dynamic.c___of_prop_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.property = type { %struct.property*, %struct.property*, i32 }

@OF_DYNAMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.property* @__of_prop_dup(%struct.property* %0, i32 %1) #0 {
  %3 = alloca %struct.property*, align 8
  %4 = alloca %struct.property*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.property*, align 8
  store %struct.property* %0, %struct.property** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call %struct.property* @kzalloc(i32 24, i32 %7)
  store %struct.property* %8, %struct.property** %6, align 8
  %9 = load %struct.property*, %struct.property** %6, align 8
  %10 = icmp ne %struct.property* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.property* null, %struct.property** %3, align 8
  br label %61

12:                                               ; preds = %2
  %13 = load %struct.property*, %struct.property** %4, align 8
  %14 = getelementptr inbounds %struct.property, %struct.property* %13, i32 0, i32 1
  %15 = load %struct.property*, %struct.property** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.property* @kstrdup(%struct.property* %15, i32 %16)
  %18 = load %struct.property*, %struct.property** %6, align 8
  %19 = getelementptr inbounds %struct.property, %struct.property* %18, i32 0, i32 1
  store %struct.property* %17, %struct.property** %19, align 8
  %20 = load %struct.property*, %struct.property** %4, align 8
  %21 = getelementptr inbounds %struct.property, %struct.property* %20, i32 0, i32 0
  %22 = load %struct.property*, %struct.property** %21, align 8
  %23 = load %struct.property*, %struct.property** %4, align 8
  %24 = getelementptr inbounds %struct.property, %struct.property* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call %struct.property* @kmemdup(%struct.property* %22, i32 %25, i32 %26)
  %28 = load %struct.property*, %struct.property** %6, align 8
  %29 = getelementptr inbounds %struct.property, %struct.property* %28, i32 0, i32 0
  store %struct.property* %27, %struct.property** %29, align 8
  %30 = load %struct.property*, %struct.property** %4, align 8
  %31 = getelementptr inbounds %struct.property, %struct.property* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.property*, %struct.property** %6, align 8
  %34 = getelementptr inbounds %struct.property, %struct.property* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.property*, %struct.property** %6, align 8
  %36 = getelementptr inbounds %struct.property, %struct.property* %35, i32 0, i32 1
  %37 = load %struct.property*, %struct.property** %36, align 8
  %38 = icmp ne %struct.property* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %12
  %40 = load %struct.property*, %struct.property** %6, align 8
  %41 = getelementptr inbounds %struct.property, %struct.property* %40, i32 0, i32 0
  %42 = load %struct.property*, %struct.property** %41, align 8
  %43 = icmp ne %struct.property* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39, %12
  br label %50

45:                                               ; preds = %39
  %46 = load %struct.property*, %struct.property** %6, align 8
  %47 = load i32, i32* @OF_DYNAMIC, align 4
  %48 = call i32 @of_property_set_flag(%struct.property* %46, i32 %47)
  %49 = load %struct.property*, %struct.property** %6, align 8
  store %struct.property* %49, %struct.property** %3, align 8
  br label %61

50:                                               ; preds = %44
  %51 = load %struct.property*, %struct.property** %6, align 8
  %52 = getelementptr inbounds %struct.property, %struct.property* %51, i32 0, i32 1
  %53 = load %struct.property*, %struct.property** %52, align 8
  %54 = call i32 @kfree(%struct.property* %53)
  %55 = load %struct.property*, %struct.property** %6, align 8
  %56 = getelementptr inbounds %struct.property, %struct.property* %55, i32 0, i32 0
  %57 = load %struct.property*, %struct.property** %56, align 8
  %58 = call i32 @kfree(%struct.property* %57)
  %59 = load %struct.property*, %struct.property** %6, align 8
  %60 = call i32 @kfree(%struct.property* %59)
  store %struct.property* null, %struct.property** %3, align 8
  br label %61

61:                                               ; preds = %50, %45, %11
  %62 = load %struct.property*, %struct.property** %3, align 8
  ret %struct.property* %62
}

declare dso_local %struct.property* @kzalloc(i32, i32) #1

declare dso_local %struct.property* @kstrdup(%struct.property*, i32) #1

declare dso_local %struct.property* @kmemdup(%struct.property*, i32, i32) #1

declare dso_local i32 @of_property_set_flag(%struct.property*, i32) #1

declare dso_local i32 @kfree(%struct.property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
