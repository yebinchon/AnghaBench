; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dss-of.c_dss_of_port_get_parent_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dss-of.c_dss_of_port_get_parent_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.property = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"compatible\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device_node* @dss_of_port_get_parent_device(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.property*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %7 = load %struct.device_node*, %struct.device_node** %3, align 8
  %8 = icmp ne %struct.device_node* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.device_node* null, %struct.device_node** %2, align 8
  br label %35

10:                                               ; preds = %1
  %11 = load %struct.device_node*, %struct.device_node** %3, align 8
  %12 = call %struct.device_node* @of_get_parent(%struct.device_node* %11)
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %31, %10
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.device_node*, %struct.device_node** %4, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i1 [ false, %13 ], [ %18, %16 ]
  br i1 %20, label %21, label %34

21:                                               ; preds = %19
  %22 = load %struct.device_node*, %struct.device_node** %4, align 8
  %23 = call %struct.property* @of_find_property(%struct.device_node* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.property* %23, %struct.property** %6, align 8
  %24 = load %struct.property*, %struct.property** %6, align 8
  %25 = icmp ne %struct.property* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load %struct.device_node*, %struct.device_node** %4, align 8
  store %struct.device_node* %27, %struct.device_node** %2, align 8
  br label %35

28:                                               ; preds = %21
  %29 = load %struct.device_node*, %struct.device_node** %4, align 8
  %30 = call %struct.device_node* @of_get_next_parent(%struct.device_node* %29)
  store %struct.device_node* %30, %struct.device_node** %4, align 8
  br label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %13

34:                                               ; preds = %19
  store %struct.device_node* null, %struct.device_node** %2, align 8
  br label %35

35:                                               ; preds = %34, %26, %9
  %36 = load %struct.device_node*, %struct.device_node** %2, align 8
  ret %struct.device_node* %36
}

declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #1

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.device_node* @of_get_next_parent(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
