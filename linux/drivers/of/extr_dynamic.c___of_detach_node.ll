; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_dynamic.c___of_detach_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_dynamic.c___of_detach_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32, %struct.device_node*, %struct.device_node*, %struct.device_node* }

@OF_DETACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__of_detach_node(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  %5 = load %struct.device_node*, %struct.device_node** %2, align 8
  %6 = load i32, i32* @OF_DETACHED, align 4
  %7 = call i32 @of_node_check_flag(%struct.device_node* %5, i32 %6)
  %8 = call i64 @WARN_ON(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %65

11:                                               ; preds = %1
  %12 = load %struct.device_node*, %struct.device_node** %2, align 8
  %13 = getelementptr inbounds %struct.device_node, %struct.device_node* %12, i32 0, i32 3
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %3, align 8
  %15 = load %struct.device_node*, %struct.device_node** %3, align 8
  %16 = icmp ne %struct.device_node* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  br label %65

22:                                               ; preds = %11
  %23 = load %struct.device_node*, %struct.device_node** %3, align 8
  %24 = getelementptr inbounds %struct.device_node, %struct.device_node* %23, i32 0, i32 2
  %25 = load %struct.device_node*, %struct.device_node** %24, align 8
  %26 = load %struct.device_node*, %struct.device_node** %2, align 8
  %27 = icmp eq %struct.device_node* %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.device_node*, %struct.device_node** %2, align 8
  %30 = getelementptr inbounds %struct.device_node, %struct.device_node* %29, i32 0, i32 1
  %31 = load %struct.device_node*, %struct.device_node** %30, align 8
  %32 = load %struct.device_node*, %struct.device_node** %3, align 8
  %33 = getelementptr inbounds %struct.device_node, %struct.device_node* %32, i32 0, i32 2
  store %struct.device_node* %31, %struct.device_node** %33, align 8
  br label %57

34:                                               ; preds = %22
  %35 = load %struct.device_node*, %struct.device_node** %2, align 8
  %36 = getelementptr inbounds %struct.device_node, %struct.device_node* %35, i32 0, i32 3
  %37 = load %struct.device_node*, %struct.device_node** %36, align 8
  %38 = getelementptr inbounds %struct.device_node, %struct.device_node* %37, i32 0, i32 2
  %39 = load %struct.device_node*, %struct.device_node** %38, align 8
  store %struct.device_node* %39, %struct.device_node** %4, align 8
  br label %40

40:                                               ; preds = %47, %34
  %41 = load %struct.device_node*, %struct.device_node** %4, align 8
  %42 = getelementptr inbounds %struct.device_node, %struct.device_node* %41, i32 0, i32 1
  %43 = load %struct.device_node*, %struct.device_node** %42, align 8
  %44 = load %struct.device_node*, %struct.device_node** %2, align 8
  %45 = icmp ne %struct.device_node* %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.device_node*, %struct.device_node** %4, align 8
  %49 = getelementptr inbounds %struct.device_node, %struct.device_node* %48, i32 0, i32 1
  %50 = load %struct.device_node*, %struct.device_node** %49, align 8
  store %struct.device_node* %50, %struct.device_node** %4, align 8
  br label %40

51:                                               ; preds = %40
  %52 = load %struct.device_node*, %struct.device_node** %2, align 8
  %53 = getelementptr inbounds %struct.device_node, %struct.device_node* %52, i32 0, i32 1
  %54 = load %struct.device_node*, %struct.device_node** %53, align 8
  %55 = load %struct.device_node*, %struct.device_node** %4, align 8
  %56 = getelementptr inbounds %struct.device_node, %struct.device_node* %55, i32 0, i32 1
  store %struct.device_node* %54, %struct.device_node** %56, align 8
  br label %57

57:                                               ; preds = %51, %28
  %58 = load %struct.device_node*, %struct.device_node** %2, align 8
  %59 = load i32, i32* @OF_DETACHED, align 4
  %60 = call i32 @of_node_set_flag(%struct.device_node* %58, i32 %59)
  %61 = load %struct.device_node*, %struct.device_node** %2, align 8
  %62 = getelementptr inbounds %struct.device_node, %struct.device_node* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @__of_free_phandle_cache_entry(i32 %63)
  br label %65

65:                                               ; preds = %57, %21, %10
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @of_node_check_flag(%struct.device_node*, i32) #1

declare dso_local i32 @of_node_set_flag(%struct.device_node*, i32) #1

declare dso_local i32 @__of_free_phandle_cache_entry(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
