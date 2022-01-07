; ModuleID = '/home/carl/AnghaBench/linux/drivers/opp/extr_of.c__opp_table_alloc_required_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/opp/extr_of.c__opp_table_alloc_required_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opp_table = type { i32, i32, %struct.opp_table** }
%struct.device = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Empty OPP table\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"required-opps\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"required-opp doesn't belong to genpd: %pOF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.opp_table*, %struct.device*, %struct.device_node*)* @_opp_table_alloc_required_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_opp_table_alloc_required_tables(%struct.opp_table* %0, %struct.device* %1, %struct.device_node* %2) #0 {
  %4 = alloca %struct.opp_table*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.opp_table**, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.opp_table* %0, %struct.opp_table** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store %struct.device_node* %2, %struct.device_node** %6, align 8
  %12 = load %struct.device_node*, %struct.device_node** %6, align 8
  %13 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* %12, i32* null)
  store %struct.device_node* %13, %struct.device_node** %9, align 8
  %14 = load %struct.device_node*, %struct.device_node** %9, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %91

19:                                               ; preds = %3
  %20 = load %struct.device_node*, %struct.device_node** %9, align 8
  %21 = call i32 @of_count_phandle_with_args(%struct.device_node* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %88

25:                                               ; preds = %19
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.opp_table** @kcalloc(i32 %26, i32 8, i32 %27)
  store %struct.opp_table** %28, %struct.opp_table*** %7, align 8
  %29 = load %struct.opp_table**, %struct.opp_table*** %7, align 8
  %30 = icmp ne %struct.opp_table** %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %88

32:                                               ; preds = %25
  %33 = load %struct.opp_table**, %struct.opp_table*** %7, align 8
  %34 = load %struct.opp_table*, %struct.opp_table** %4, align 8
  %35 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %34, i32 0, i32 2
  store %struct.opp_table** %33, %struct.opp_table*** %35, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.opp_table*, %struct.opp_table** %4, align 8
  %38 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %81, %32
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %84

43:                                               ; preds = %39
  %44 = load %struct.device_node*, %struct.device_node** %9, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call %struct.device_node* @of_parse_required_opp(%struct.device_node* %44, i32 %45)
  store %struct.device_node* %46, %struct.device_node** %8, align 8
  %47 = load %struct.device_node*, %struct.device_node** %8, align 8
  %48 = icmp ne %struct.device_node* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  br label %85

50:                                               ; preds = %43
  %51 = load %struct.device_node*, %struct.device_node** %8, align 8
  %52 = call %struct.opp_table* @_find_table_of_opp_np(%struct.device_node* %51)
  %53 = load %struct.opp_table**, %struct.opp_table*** %7, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.opp_table*, %struct.opp_table** %53, i64 %55
  store %struct.opp_table* %52, %struct.opp_table** %56, align 8
  %57 = load %struct.device_node*, %struct.device_node** %8, align 8
  %58 = call i32 @of_node_put(%struct.device_node* %57)
  %59 = load %struct.opp_table**, %struct.opp_table*** %7, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.opp_table*, %struct.opp_table** %59, i64 %61
  %63 = load %struct.opp_table*, %struct.opp_table** %62, align 8
  %64 = call i64 @IS_ERR(%struct.opp_table* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %50
  br label %85

67:                                               ; preds = %50
  %68 = load %struct.opp_table**, %struct.opp_table*** %7, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.opp_table*, %struct.opp_table** %68, i64 %70
  %72 = load %struct.opp_table*, %struct.opp_table** %71, align 8
  %73 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %67
  %77 = load %struct.device*, %struct.device** %5, align 8
  %78 = load %struct.device_node*, %struct.device_node** %8, align 8
  %79 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %77, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %78)
  br label %85

80:                                               ; preds = %67
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %39

84:                                               ; preds = %39
  br label %88

85:                                               ; preds = %76, %66, %49
  %86 = load %struct.opp_table*, %struct.opp_table** %4, align 8
  %87 = call i32 @_opp_table_free_required_tables(%struct.opp_table* %86)
  br label %88

88:                                               ; preds = %85, %84, %31, %24
  %89 = load %struct.device_node*, %struct.device_node** %9, align 8
  %90 = call i32 @of_node_put(%struct.device_node* %89)
  br label %91

91:                                               ; preds = %88, %16
  ret void
}

declare dso_local %struct.device_node* @of_get_next_available_child(%struct.device_node*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @of_count_phandle_with_args(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.opp_table** @kcalloc(i32, i32, i32) #1

declare dso_local %struct.device_node* @of_parse_required_opp(%struct.device_node*, i32) #1

declare dso_local %struct.opp_table* @_find_table_of_opp_np(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.opp_table*) #1

declare dso_local i32 @_opp_table_free_required_tables(%struct.opp_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
