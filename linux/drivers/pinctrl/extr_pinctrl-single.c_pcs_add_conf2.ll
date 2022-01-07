; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-single.c_pcs_add_conf2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-single.c_pcs_add_conf2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcs_device = type { i32 }
%struct.device_node = type { i32 }
%struct.pcs_conf_vals = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcs_device*, %struct.device_node*, i8*, i32, %struct.pcs_conf_vals**, i64**)* @pcs_add_conf2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcs_add_conf2(%struct.pcs_device* %0, %struct.device_node* %1, i8* %2, i32 %3, %struct.pcs_conf_vals** %4, i64** %5) #0 {
  %7 = alloca %struct.pcs_device*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pcs_conf_vals**, align 8
  %12 = alloca i64**, align 8
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pcs_device* %0, %struct.pcs_device** %7, align 8
  store %struct.device_node* %1, %struct.device_node** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.pcs_conf_vals** %4, %struct.pcs_conf_vals*** %11, align 8
  store i64** %5, i64*** %12, align 8
  %16 = load %struct.device_node*, %struct.device_node** %8, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %19 = call i32 @of_property_read_u32_array(%struct.device_node* %16, i8* %17, i32* %18, i32 2)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  br label %47

23:                                               ; preds = %6
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %25
  store i32 %28, i32* %26, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ffs(i32 %30)
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %14, align 4
  %33 = load %struct.pcs_conf_vals**, %struct.pcs_conf_vals*** %11, align 8
  %34 = load i32, i32* %10, align 4
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @add_config(%struct.pcs_conf_vals** %33, i32 %34, i32 %36, i32 0, i32 0, i32 %38)
  %40 = load i64**, i64*** %12, align 8
  %41 = load i32, i32* %10, align 4
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %14, align 4
  %45 = lshr i32 %43, %44
  %46 = call i32 @add_setting(i64** %40, i32 %41, i32 %45)
  br label %47

47:                                               ; preds = %23, %22
  ret void
}

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i32*, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @add_config(%struct.pcs_conf_vals**, i32, i32, i32, i32, i32) #1

declare dso_local i32 @add_setting(i64**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
