; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_irq.c_of_irq_find_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_irq.c_of_irq_find_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"interrupt-parent\00", align 1
@of_irq_workarounds = common dso_local global i32 0, align 4
@OF_IMAP_NO_PHANDLE = common dso_local global i32 0, align 4
@of_irq_dflt_pic = common dso_local global %struct.device_node* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"#interrupt-cells\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device_node* @of_irq_find_parent(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %6 = load %struct.device_node*, %struct.device_node** %3, align 8
  %7 = call %struct.device_node* @of_node_get(%struct.device_node* %6)
  %8 = icmp ne %struct.device_node* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.device_node* null, %struct.device_node** %2, align 8
  br label %45

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %41, %10
  %12 = load %struct.device_node*, %struct.device_node** %3, align 8
  %13 = call i64 @of_property_read_u32(%struct.device_node* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %5)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load %struct.device_node*, %struct.device_node** %3, align 8
  %17 = call %struct.device_node* @of_get_parent(%struct.device_node* %16)
  store %struct.device_node* %17, %struct.device_node** %4, align 8
  br label %30

18:                                               ; preds = %11
  %19 = load i32, i32* @of_irq_workarounds, align 4
  %20 = load i32, i32* @OF_IMAP_NO_PHANDLE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.device_node*, %struct.device_node** @of_irq_dflt_pic, align 8
  %25 = call %struct.device_node* @of_node_get(%struct.device_node* %24)
  store %struct.device_node* %25, %struct.device_node** %4, align 8
  br label %29

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.device_node* @of_find_node_by_phandle(i32 %27)
  store %struct.device_node* %28, %struct.device_node** %4, align 8
  br label %29

29:                                               ; preds = %26, %23
  br label %30

30:                                               ; preds = %29, %15
  %31 = load %struct.device_node*, %struct.device_node** %3, align 8
  %32 = call i32 @of_node_put(%struct.device_node* %31)
  %33 = load %struct.device_node*, %struct.device_node** %4, align 8
  store %struct.device_node* %33, %struct.device_node** %3, align 8
  br label %34

34:                                               ; preds = %30
  %35 = load %struct.device_node*, %struct.device_node** %4, align 8
  %36 = icmp ne %struct.device_node* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.device_node*, %struct.device_node** %4, align 8
  %39 = call i32* @of_get_property(%struct.device_node* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %40 = icmp eq i32* %39, null
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i1 [ false, %34 ], [ %40, %37 ]
  br i1 %42, label %11, label %43

43:                                               ; preds = %41
  %44 = load %struct.device_node*, %struct.device_node** %4, align 8
  store %struct.device_node* %44, %struct.device_node** %2, align 8
  br label %45

45:                                               ; preds = %43, %9
  %46 = load %struct.device_node*, %struct.device_node** %2, align 8
  ret %struct.device_node* %46
}

declare dso_local %struct.device_node* @of_node_get(%struct.device_node*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #1

declare dso_local %struct.device_node* @of_find_node_by_phandle(i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
