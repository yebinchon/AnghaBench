; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dss-of.c_omapdss_of_get_next_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dss-of.c_omapdss_of_get_next_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"endpoint\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device_node* @omapdss_of_get_next_endpoint(%struct.device_node* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store %struct.device_node* null, %struct.device_node** %6, align 8
  %7 = load %struct.device_node*, %struct.device_node** %4, align 8
  %8 = icmp ne %struct.device_node* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.device_node* null, %struct.device_node** %3, align 8
  br label %27

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %20, %10
  %12 = load %struct.device_node*, %struct.device_node** %4, align 8
  %13 = load %struct.device_node*, %struct.device_node** %5, align 8
  %14 = call %struct.device_node* @of_get_next_child(%struct.device_node* %12, %struct.device_node* %13)
  store %struct.device_node* %14, %struct.device_node** %6, align 8
  %15 = load %struct.device_node*, %struct.device_node** %6, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store %struct.device_node* null, %struct.device_node** %3, align 8
  br label %27

18:                                               ; preds = %11
  %19 = load %struct.device_node*, %struct.device_node** %6, align 8
  store %struct.device_node* %19, %struct.device_node** %5, align 8
  br label %20

20:                                               ; preds = %18
  %21 = load %struct.device_node*, %struct.device_node** %6, align 8
  %22 = call i32 @of_node_name_eq(%struct.device_node* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %11, label %25

25:                                               ; preds = %20
  %26 = load %struct.device_node*, %struct.device_node** %6, align 8
  store %struct.device_node* %26, %struct.device_node** %3, align 8
  br label %27

27:                                               ; preds = %25, %17, %9
  %28 = load %struct.device_node*, %struct.device_node** %3, align 8
  ret %struct.device_node* %28
}

declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, %struct.device_node*) #1

declare dso_local i32 @of_node_name_eq(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
