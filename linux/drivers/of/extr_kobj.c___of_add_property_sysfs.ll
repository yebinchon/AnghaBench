; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_kobj.c___of_add_property_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_kobj.c___of_add_property_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.property = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"security-\00", align 1
@CONFIG_SYSFS = common dso_local global i32 0, align 4
@of_kset = common dso_local global i32 0, align 4
@of_node_property_read = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"error adding attribute %s to node %pOF\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__of_add_property_sysfs(%struct.device_node* %0, %struct.property* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.property*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.property* %1, %struct.property** %5, align 8
  %8 = load %struct.property*, %struct.property** %5, align 8
  %9 = getelementptr inbounds %struct.property, %struct.property* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @strncmp(i32 %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @CONFIG_SYSFS, align 4
  %15 = call i32 @IS_ENABLED(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

18:                                               ; preds = %2
  %19 = load i32, i32* @of_kset, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.device_node*, %struct.device_node** %4, align 8
  %23 = call i32 @of_node_is_attached(%struct.device_node* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %18
  store i32 0, i32* %3, align 4
  br label %76

26:                                               ; preds = %21
  %27 = load %struct.property*, %struct.property** %5, align 8
  %28 = getelementptr inbounds %struct.property, %struct.property* %27, i32 0, i32 1
  %29 = call i32 @sysfs_bin_attr_init(%struct.TYPE_5__* %28)
  %30 = load %struct.device_node*, %struct.device_node** %4, align 8
  %31 = getelementptr inbounds %struct.device_node, %struct.device_node* %30, i32 0, i32 0
  %32 = load %struct.property*, %struct.property** %5, align 8
  %33 = getelementptr inbounds %struct.property, %struct.property* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @safe_name(i32* %31, i32 %34)
  %36 = load %struct.property*, %struct.property** %5, align 8
  %37 = getelementptr inbounds %struct.property, %struct.property* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 256, i32 292
  %44 = load %struct.property*, %struct.property** %5, align 8
  %45 = getelementptr inbounds %struct.property, %struct.property* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %26
  br label %55

51:                                               ; preds = %26
  %52 = load %struct.property*, %struct.property** %5, align 8
  %53 = getelementptr inbounds %struct.property, %struct.property* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  br label %55

55:                                               ; preds = %51, %50
  %56 = phi i32 [ 0, %50 ], [ %54, %51 ]
  %57 = load %struct.property*, %struct.property** %5, align 8
  %58 = getelementptr inbounds %struct.property, %struct.property* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* @of_node_property_read, align 4
  %61 = load %struct.property*, %struct.property** %5, align 8
  %62 = getelementptr inbounds %struct.property, %struct.property* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  %64 = load %struct.device_node*, %struct.device_node** %4, align 8
  %65 = getelementptr inbounds %struct.device_node, %struct.device_node* %64, i32 0, i32 0
  %66 = load %struct.property*, %struct.property** %5, align 8
  %67 = getelementptr inbounds %struct.property, %struct.property* %66, i32 0, i32 1
  %68 = call i32 @sysfs_create_bin_file(i32* %65, %struct.TYPE_5__* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.property*, %struct.property** %5, align 8
  %71 = getelementptr inbounds %struct.property, %struct.property* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.device_node*, %struct.device_node** %4, align 8
  %74 = call i32 @WARN(i32 %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %72, %struct.device_node* %73)
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %55, %25, %17
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @of_node_is_attached(%struct.device_node*) #1

declare dso_local i32 @sysfs_bin_attr_init(%struct.TYPE_5__*) #1

declare dso_local i32 @safe_name(i32*, i32) #1

declare dso_local i32 @sysfs_create_bin_file(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @WARN(i32, i8*, i32, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
