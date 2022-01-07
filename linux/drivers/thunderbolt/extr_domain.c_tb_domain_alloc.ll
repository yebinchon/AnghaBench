; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_domain.c_tb_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_domain.c_tb_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { i64, %struct.TYPE_5__, i32, i32, %struct.tb_nhi* }
%struct.TYPE_5__ = type { i32, i32*, i32*, i32* }
%struct.tb_nhi = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@tb_domain_ida = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"thunderbolt%d\00", align 1
@tb_bus_type = common dso_local global i32 0, align 4
@tb_domain_type = common dso_local global i32 0, align 4
@domain_attr_groups = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"domain%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tb* @tb_domain_alloc(%struct.tb_nhi* %0, i64 %1) #0 {
  %3 = alloca %struct.tb*, align 8
  %4 = alloca %struct.tb_nhi*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tb*, align 8
  store %struct.tb_nhi* %0, %struct.tb_nhi** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = call i32 @BUILD_BUG_ON(i32 1)
  %8 = call i32 @BUILD_BUG_ON(i32 1)
  %9 = call i32 @BUILD_BUG_ON(i32 1)
  %10 = load i64, i64* %5, align 8
  %11 = add i64 56, %10
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.tb* @kzalloc(i32 %12, i32 %13)
  store %struct.tb* %14, %struct.tb** %6, align 8
  %15 = load %struct.tb*, %struct.tb** %6, align 8
  %16 = icmp ne %struct.tb* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store %struct.tb* null, %struct.tb** %3, align 8
  br label %82

18:                                               ; preds = %2
  %19 = load %struct.tb_nhi*, %struct.tb_nhi** %4, align 8
  %20 = load %struct.tb*, %struct.tb** %6, align 8
  %21 = getelementptr inbounds %struct.tb, %struct.tb* %20, i32 0, i32 4
  store %struct.tb_nhi* %19, %struct.tb_nhi** %21, align 8
  %22 = load %struct.tb*, %struct.tb** %6, align 8
  %23 = getelementptr inbounds %struct.tb, %struct.tb* %22, i32 0, i32 3
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i64 @ida_simple_get(i32* @tb_domain_ida, i32 0, i32 0, i32 %25)
  %27 = load %struct.tb*, %struct.tb** %6, align 8
  %28 = getelementptr inbounds %struct.tb, %struct.tb* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.tb*, %struct.tb** %6, align 8
  %30 = getelementptr inbounds %struct.tb, %struct.tb* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %18
  br label %79

34:                                               ; preds = %18
  %35 = load %struct.tb*, %struct.tb** %6, align 8
  %36 = getelementptr inbounds %struct.tb, %struct.tb* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @alloc_ordered_workqueue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0, i64 %37)
  %39 = load %struct.tb*, %struct.tb** %6, align 8
  %40 = getelementptr inbounds %struct.tb, %struct.tb* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.tb*, %struct.tb** %6, align 8
  %42 = getelementptr inbounds %struct.tb, %struct.tb* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  br label %74

46:                                               ; preds = %34
  %47 = load %struct.tb_nhi*, %struct.tb_nhi** %4, align 8
  %48 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.tb*, %struct.tb** %6, align 8
  %52 = getelementptr inbounds %struct.tb, %struct.tb* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  store i32* %50, i32** %53, align 8
  %54 = load %struct.tb*, %struct.tb** %6, align 8
  %55 = getelementptr inbounds %struct.tb, %struct.tb* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  store i32* @tb_bus_type, i32** %56, align 8
  %57 = load %struct.tb*, %struct.tb** %6, align 8
  %58 = getelementptr inbounds %struct.tb, %struct.tb* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i32* @tb_domain_type, i32** %59, align 8
  %60 = load i32, i32* @domain_attr_groups, align 4
  %61 = load %struct.tb*, %struct.tb** %6, align 8
  %62 = getelementptr inbounds %struct.tb, %struct.tb* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load %struct.tb*, %struct.tb** %6, align 8
  %65 = getelementptr inbounds %struct.tb, %struct.tb* %64, i32 0, i32 1
  %66 = load %struct.tb*, %struct.tb** %6, align 8
  %67 = getelementptr inbounds %struct.tb, %struct.tb* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @dev_set_name(%struct.TYPE_5__* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %68)
  %70 = load %struct.tb*, %struct.tb** %6, align 8
  %71 = getelementptr inbounds %struct.tb, %struct.tb* %70, i32 0, i32 1
  %72 = call i32 @device_initialize(%struct.TYPE_5__* %71)
  %73 = load %struct.tb*, %struct.tb** %6, align 8
  store %struct.tb* %73, %struct.tb** %3, align 8
  br label %82

74:                                               ; preds = %45
  %75 = load %struct.tb*, %struct.tb** %6, align 8
  %76 = getelementptr inbounds %struct.tb, %struct.tb* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @ida_simple_remove(i32* @tb_domain_ida, i64 %77)
  br label %79

79:                                               ; preds = %74, %33
  %80 = load %struct.tb*, %struct.tb** %6, align 8
  %81 = call i32 @kfree(%struct.tb* %80)
  store %struct.tb* null, %struct.tb** %3, align 8
  br label %82

82:                                               ; preds = %79, %46, %17
  %83 = load %struct.tb*, %struct.tb** %3, align 8
  ret %struct.tb* %83
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local %struct.tb* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @alloc_ordered_workqueue(i8*, i32, i64) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_5__*, i8*, i64) #1

declare dso_local i32 @device_initialize(%struct.TYPE_5__*) #1

declare dso_local i32 @ida_simple_remove(i32*, i64) #1

declare dso_local i32 @kfree(%struct.tb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
