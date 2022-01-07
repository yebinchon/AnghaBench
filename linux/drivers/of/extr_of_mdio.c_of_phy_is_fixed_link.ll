; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_of_mdio.c_of_phy_is_fixed_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_of_mdio.c_of_phy_is_fixed_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"fixed-link\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"managed\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"auto\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_phy_is_fixed_link(%struct.device_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %8 = load %struct.device_node*, %struct.device_node** %3, align 8
  %9 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %9, %struct.device_node** %4, align 8
  %10 = load %struct.device_node*, %struct.device_node** %4, align 8
  %11 = icmp ne %struct.device_node* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.device_node*, %struct.device_node** %4, align 8
  %14 = call i32 @of_node_put(%struct.device_node* %13)
  store i32 1, i32* %2, align 4
  br label %35

15:                                               ; preds = %1
  %16 = load %struct.device_node*, %struct.device_node** %3, align 8
  %17 = call i32 @of_property_read_string(%struct.device_node* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %7)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %35

25:                                               ; preds = %20, %15
  %26 = load %struct.device_node*, %struct.device_node** %3, align 8
  %27 = call i64 @of_get_property(%struct.device_node* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %5)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp eq i64 %31, 20
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  br label %35

34:                                               ; preds = %29, %25
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %33, %24, %12
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @of_get_property(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
