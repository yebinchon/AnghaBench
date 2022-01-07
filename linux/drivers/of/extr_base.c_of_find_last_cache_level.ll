; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_base.c_of_find_last_cache_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_base.c_of_find_last_cache_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"cache-level\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_find_last_cache_level(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store %struct.device_node* null, %struct.device_node** %4, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.device_node* @of_cpu_device_node_get(i32 %6)
  store %struct.device_node* %7, %struct.device_node** %5, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load %struct.device_node*, %struct.device_node** %5, align 8
  %10 = icmp ne %struct.device_node* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load %struct.device_node*, %struct.device_node** %5, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.device_node*, %struct.device_node** %5, align 8
  %14 = call i32 @of_node_put(%struct.device_node* %13)
  %15 = load %struct.device_node*, %struct.device_node** %5, align 8
  %16 = call %struct.device_node* @of_find_next_cache_node(%struct.device_node* %15)
  store %struct.device_node* %16, %struct.device_node** %5, align 8
  br label %8

17:                                               ; preds = %8
  %18 = load %struct.device_node*, %struct.device_node** %4, align 8
  %19 = call i32 @of_property_read_u32(%struct.device_node* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %3)
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local %struct.device_node* @of_cpu_device_node_get(i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.device_node* @of_find_next_cache_node(%struct.device_node*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
