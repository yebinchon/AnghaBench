; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_dynamic.c_of_changeset_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_dynamic.c_of_changeset_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_changeset = type { i32 }
%struct.device_node = type { i32 }
%struct.property = type { i32 }
%struct.of_changeset_entry = type { i64, i32, i32, %struct.property*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OF_RECONFIG_UPDATE_PROPERTY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_changeset_action(%struct.of_changeset* %0, i64 %1, %struct.device_node* %2, %struct.property* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.of_changeset*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.property*, align 8
  %10 = alloca %struct.of_changeset_entry*, align 8
  store %struct.of_changeset* %0, %struct.of_changeset** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.device_node* %2, %struct.device_node** %8, align 8
  store %struct.property* %3, %struct.property** %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.of_changeset_entry* @kzalloc(i32 32, i32 %11)
  store %struct.of_changeset_entry* %12, %struct.of_changeset_entry** %10, align 8
  %13 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %10, align 8
  %14 = icmp ne %struct.of_changeset_entry* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %49

18:                                               ; preds = %4
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %10, align 8
  %21 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.device_node*, %struct.device_node** %8, align 8
  %23 = call i32 @of_node_get(%struct.device_node* %22)
  %24 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %10, align 8
  %25 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.property*, %struct.property** %9, align 8
  %27 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %10, align 8
  %28 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %27, i32 0, i32 3
  store %struct.property* %26, %struct.property** %28, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @OF_RECONFIG_UPDATE_PROPERTY, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %18
  %33 = load %struct.property*, %struct.property** %9, align 8
  %34 = icmp ne %struct.property* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load %struct.device_node*, %struct.device_node** %8, align 8
  %37 = load %struct.property*, %struct.property** %9, align 8
  %38 = getelementptr inbounds %struct.property, %struct.property* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @of_find_property(%struct.device_node* %36, i32 %39, i32* null)
  %41 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %10, align 8
  %42 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %35, %32, %18
  %44 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %10, align 8
  %45 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %44, i32 0, i32 1
  %46 = load %struct.of_changeset*, %struct.of_changeset** %6, align 8
  %47 = getelementptr inbounds %struct.of_changeset, %struct.of_changeset* %46, i32 0, i32 0
  %48 = call i32 @list_add_tail(i32* %45, i32* %47)
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %43, %15
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.of_changeset_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @of_node_get(%struct.device_node*) #1

declare dso_local i32 @of_find_property(%struct.device_node*, i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
