; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-single.c_pcs_add_conf4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-single.c_pcs_add_conf4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcs_device = type { i32 }
%struct.device_node = type { i32 }
%struct.pcs_conf_vals = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"mask field of the property can't be 0\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to match enable or disable bits\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcs_device*, %struct.device_node*, i8*, i32, %struct.pcs_conf_vals**, i64**)* @pcs_add_conf4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcs_add_conf4(%struct.pcs_device* %0, %struct.device_node* %1, i8* %2, i32 %3, %struct.pcs_conf_vals** %4, i64** %5) #0 {
  %7 = alloca %struct.pcs_device*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pcs_conf_vals**, align 8
  %12 = alloca i64**, align 8
  %13 = alloca [4 x i32], align 16
  %14 = alloca i32, align 4
  store %struct.pcs_device* %0, %struct.pcs_device** %7, align 8
  store %struct.device_node* %1, %struct.device_node** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.pcs_conf_vals** %4, %struct.pcs_conf_vals*** %11, align 8
  store i64** %5, i64*** %12, align 8
  %15 = load %struct.device_node*, %struct.device_node** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %18 = call i32 @of_property_read_u32_array(%struct.device_node* %15, i8* %16, i32* %17, i32 4)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  br label %77

22:                                               ; preds = %6
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %28 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %77

31:                                               ; preds = %22
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %35 = load i32, i32* %34, align 16
  %36 = and i32 %35, %33
  store i32 %36, i32* %34, align 16
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %38
  store i32 %41, i32* %39, align 4
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %43
  store i32 %46, i32* %44, align 8
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %48 = load i32, i32* %47, align 16
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @pcs_config_match(i32 %48, i32 %50, i32 %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %31
  %57 = load %struct.pcs_device*, %struct.pcs_device** %7, align 8
  %58 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_dbg(i32 %59, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %56, %31
  %62 = load %struct.pcs_conf_vals**, %struct.pcs_conf_vals*** %11, align 8
  %63 = load i32, i32* %10, align 4
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %65 = load i32, i32* %64, align 16
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @add_config(%struct.pcs_conf_vals** %62, i32 %63, i32 %65, i32 %67, i32 %69, i32 %71)
  %73 = load i64**, i64*** %12, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @add_setting(i64** %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %61, %26, %21
  ret void
}

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @pcs_config_match(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @add_config(%struct.pcs_conf_vals**, i32, i32, i32, i32, i32) #1

declare dso_local i32 @add_setting(i64**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
