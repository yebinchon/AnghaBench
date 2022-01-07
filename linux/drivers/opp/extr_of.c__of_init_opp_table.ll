; ModuleID = '/home/carl/AnghaBench/linux/drivers/opp/extr_of.c__of_init_opp_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/opp/extr_of.c__of_init_opp_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opp_table = type { i32, %struct.device_node*, i32, i32, i32 }
%struct.device_node = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"clock-latency\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"voltage-tolerance\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"#power-domain-cells\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"opp-shared\00", align 1
@OPP_TABLE_ACCESS_SHARED = common dso_local global i32 0, align 4
@OPP_TABLE_ACCESS_EXCLUSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_of_init_opp_table(%struct.opp_table* %0, %struct.device* %1, i32 %2) #0 {
  %4 = alloca %struct.opp_table*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  store %struct.opp_table* %0, %struct.opp_table** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.device_node* @of_node_get(i32 %12)
  store %struct.device_node* %13, %struct.device_node** %7, align 8
  %14 = load %struct.device_node*, %struct.device_node** %7, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %67

17:                                               ; preds = %3
  %18 = load %struct.device_node*, %struct.device_node** %7, align 8
  %19 = call i32 @of_property_read_u32(%struct.device_node* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %9)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.opp_table*, %struct.opp_table** %4, align 8
  %24 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  br label %25

25:                                               ; preds = %21, %17
  %26 = load %struct.device_node*, %struct.device_node** %7, align 8
  %27 = load %struct.opp_table*, %struct.opp_table** %4, align 8
  %28 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %27, i32 0, i32 3
  %29 = call i32 @of_property_read_u32(%struct.device_node* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %28)
  %30 = load %struct.device_node*, %struct.device_node** %7, align 8
  %31 = call i64 @of_find_property(%struct.device_node* %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load %struct.opp_table*, %struct.opp_table** %4, align 8
  %35 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %25
  %37 = load %struct.device_node*, %struct.device_node** %7, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call %struct.device_node* @_opp_of_get_opp_desc_node(%struct.device_node* %37, i32 %38)
  store %struct.device_node* %39, %struct.device_node** %8, align 8
  %40 = load %struct.device_node*, %struct.device_node** %7, align 8
  %41 = call i32 @of_node_put(%struct.device_node* %40)
  %42 = load %struct.device_node*, %struct.device_node** %8, align 8
  %43 = icmp ne %struct.device_node* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  br label %67

45:                                               ; preds = %36
  %46 = load %struct.device_node*, %struct.device_node** %8, align 8
  %47 = call i64 @of_property_read_bool(%struct.device_node* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* @OPP_TABLE_ACCESS_SHARED, align 4
  %51 = load %struct.opp_table*, %struct.opp_table** %4, align 8
  %52 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  br label %57

53:                                               ; preds = %45
  %54 = load i32, i32* @OPP_TABLE_ACCESS_EXCLUSIVE, align 4
  %55 = load %struct.opp_table*, %struct.opp_table** %4, align 8
  %56 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %53, %49
  %58 = load %struct.device_node*, %struct.device_node** %8, align 8
  %59 = load %struct.opp_table*, %struct.opp_table** %4, align 8
  %60 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %59, i32 0, i32 1
  store %struct.device_node* %58, %struct.device_node** %60, align 8
  %61 = load %struct.opp_table*, %struct.opp_table** %4, align 8
  %62 = load %struct.device*, %struct.device** %5, align 8
  %63 = load %struct.device_node*, %struct.device_node** %8, align 8
  %64 = call i32 @_opp_table_alloc_required_tables(%struct.opp_table* %61, %struct.device* %62, %struct.device_node* %63)
  %65 = load %struct.device_node*, %struct.device_node** %8, align 8
  %66 = call i32 @of_node_put(%struct.device_node* %65)
  br label %67

67:                                               ; preds = %57, %44, %16
  ret void
}

declare dso_local %struct.device_node* @of_node_get(i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.device_node* @_opp_of_get_opp_desc_node(%struct.device_node*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @_opp_table_alloc_required_tables(%struct.opp_table*, %struct.device*, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
