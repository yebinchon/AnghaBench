; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c_devm_phy_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c_devm_phy_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.phy_ops = type { i32 }

@devm_phy_consume = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.phy* @devm_phy_create(%struct.device* %0, %struct.device_node* %1, %struct.phy_ops* %2) #0 {
  %4 = alloca %struct.phy*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.phy_ops*, align 8
  %8 = alloca %struct.phy**, align 8
  %9 = alloca %struct.phy*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.phy_ops* %2, %struct.phy_ops** %7, align 8
  %10 = load i32, i32* @devm_phy_consume, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.phy** @devres_alloc(i32 %10, i32 8, i32 %11)
  store %struct.phy** %12, %struct.phy*** %8, align 8
  %13 = load %struct.phy**, %struct.phy*** %8, align 8
  %14 = icmp ne %struct.phy** %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.phy* @ERR_PTR(i32 %17)
  store %struct.phy* %18, %struct.phy** %4, align 8
  br label %38

19:                                               ; preds = %3
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = load %struct.device_node*, %struct.device_node** %6, align 8
  %22 = load %struct.phy_ops*, %struct.phy_ops** %7, align 8
  %23 = call %struct.phy* @phy_create(%struct.device* %20, %struct.device_node* %21, %struct.phy_ops* %22)
  store %struct.phy* %23, %struct.phy** %9, align 8
  %24 = load %struct.phy*, %struct.phy** %9, align 8
  %25 = call i32 @IS_ERR(%struct.phy* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %19
  %28 = load %struct.phy*, %struct.phy** %9, align 8
  %29 = load %struct.phy**, %struct.phy*** %8, align 8
  store %struct.phy* %28, %struct.phy** %29, align 8
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load %struct.phy**, %struct.phy*** %8, align 8
  %32 = call i32 @devres_add(%struct.device* %30, %struct.phy** %31)
  br label %36

33:                                               ; preds = %19
  %34 = load %struct.phy**, %struct.phy*** %8, align 8
  %35 = call i32 @devres_free(%struct.phy** %34)
  br label %36

36:                                               ; preds = %33, %27
  %37 = load %struct.phy*, %struct.phy** %9, align 8
  store %struct.phy* %37, %struct.phy** %4, align 8
  br label %38

38:                                               ; preds = %36, %15
  %39 = load %struct.phy*, %struct.phy** %4, align 8
  ret %struct.phy* %39
}

declare dso_local %struct.phy** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

declare dso_local %struct.phy* @phy_create(%struct.device*, %struct.device_node*, %struct.phy_ops*) #1

declare dso_local i32 @IS_ERR(%struct.phy*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.phy**) #1

declare dso_local i32 @devres_free(%struct.phy**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
