; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_of_mdio.c_of_phy_register_fixed_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_of_mdio.c_of_phy_register_fixed_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.fixed_phy_status = type { i32, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"managed\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"in-band-status\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"fixed-link\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"full-duplex\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"pause\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"asym-pause\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PHY_POLL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_phy_register_fixed_link(%struct.device_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.fixed_phy_status, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca [5 x i8*], align 16
  %7 = alloca i8*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %8 = bitcast %struct.fixed_phy_status* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 40, i1 false)
  %9 = load %struct.device_node*, %struct.device_node** %3, align 8
  %10 = call i64 @of_property_read_string(%struct.device_node* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %7)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %69

17:                                               ; preds = %12, %1
  %18 = load %struct.device_node*, %struct.device_node** %3, align 8
  %19 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store %struct.device_node* %19, %struct.device_node** %5, align 8
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = icmp ne %struct.device_node* %20, null
  br i1 %21, label %22, label %45

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %4, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.device_node*, %struct.device_node** %5, align 8
  %25 = call i8* @of_property_read_bool(%struct.device_node* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %26 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %4, i32 0, i32 4
  store i8* %25, i8** %26, align 8
  %27 = load %struct.device_node*, %struct.device_node** %5, align 8
  %28 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %4, i32 0, i32 3
  %29 = call i64 @of_property_read_u32(%struct.device_node* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load %struct.device_node*, %struct.device_node** %5, align 8
  %33 = call i32 @of_node_put(%struct.device_node* %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %74

36:                                               ; preds = %22
  %37 = load %struct.device_node*, %struct.device_node** %5, align 8
  %38 = call i8* @of_property_read_bool(%struct.device_node* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %39 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %4, i32 0, i32 2
  store i8* %38, i8** %39, align 8
  %40 = load %struct.device_node*, %struct.device_node** %5, align 8
  %41 = call i8* @of_property_read_bool(%struct.device_node* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %42 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %4, i32 0, i32 1
  store i8* %41, i8** %42, align 8
  %43 = load %struct.device_node*, %struct.device_node** %5, align 8
  %44 = call i32 @of_node_put(%struct.device_node* %43)
  br label %69

45:                                               ; preds = %17
  %46 = load %struct.device_node*, %struct.device_node** %3, align 8
  %47 = getelementptr inbounds [5 x i8*], [5 x i8*]* %6, i64 0, i64 0
  %48 = getelementptr inbounds [5 x i8*], [5 x i8*]* %6, i64 0, i64 0
  %49 = call i32 @ARRAY_SIZE(i8** %48)
  %50 = call i64 @of_property_read_u32_array(%struct.device_node* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %47, i32 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %4, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = getelementptr inbounds [5 x i8*], [5 x i8*]* %6, i64 0, i64 1
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %4, i32 0, i32 4
  store i8* %55, i8** %56, align 8
  %57 = getelementptr inbounds [5 x i8*], [5 x i8*]* %6, i64 0, i64 2
  %58 = load i8*, i8** %57, align 16
  %59 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %4, i32 0, i32 3
  store i8* %58, i8** %59, align 8
  %60 = getelementptr inbounds [5 x i8*], [5 x i8*]* %6, i64 0, i64 3
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %4, i32 0, i32 2
  store i8* %61, i8** %62, align 8
  %63 = getelementptr inbounds [5 x i8*], [5 x i8*]* %6, i64 0, i64 4
  %64 = load i8*, i8** %63, align 16
  %65 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %4, i32 0, i32 1
  store i8* %64, i8** %65, align 8
  br label %69

66:                                               ; preds = %45
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %74

69:                                               ; preds = %52, %36, %16
  %70 = load i32, i32* @PHY_POLL, align 4
  %71 = load %struct.device_node*, %struct.device_node** %3, align 8
  %72 = call i32 @fixed_phy_register(i32 %70, %struct.fixed_phy_status* %4, %struct.device_node* %71)
  %73 = call i32 @PTR_ERR_OR_ZERO(i32 %72)
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %69, %66, %31
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @of_property_read_string(%struct.device_node*, i8*, i8**) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #2

declare dso_local i8* @of_property_read_bool(%struct.device_node*, i8*) #2

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i8**) #2

declare dso_local i32 @of_node_put(%struct.device_node*) #2

declare dso_local i64 @of_property_read_u32_array(%struct.device_node*, i8*, i8**, i32) #2

declare dso_local i32 @ARRAY_SIZE(i8**) #2

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #2

declare dso_local i32 @fixed_phy_register(i32, %struct.fixed_phy_status*, %struct.device_node*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
