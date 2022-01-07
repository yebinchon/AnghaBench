; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c_devm_of_phy_get_by_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c_devm_of_phy_get_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.device_node = type { i32 }

@devm_phy_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.phy* @devm_of_phy_get_by_index(%struct.device* %0, %struct.device_node* %1, i32 %2) #0 {
  %4 = alloca %struct.phy*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.phy**, align 8
  %9 = alloca %struct.phy*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @devm_phy_release, align 4
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
  br label %54

19:                                               ; preds = %3
  %20 = load %struct.device_node*, %struct.device_node** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.phy* @_of_phy_get(%struct.device_node* %20, i32 %21)
  store %struct.phy* %22, %struct.phy** %9, align 8
  %23 = load %struct.phy*, %struct.phy** %9, align 8
  %24 = call i64 @IS_ERR(%struct.phy* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.phy**, %struct.phy*** %8, align 8
  %28 = call i32 @devres_free(%struct.phy** %27)
  %29 = load %struct.phy*, %struct.phy** %9, align 8
  store %struct.phy* %29, %struct.phy** %4, align 8
  br label %54

30:                                               ; preds = %19
  %31 = load %struct.phy*, %struct.phy** %9, align 8
  %32 = getelementptr inbounds %struct.phy, %struct.phy* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @try_module_get(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %30
  %39 = load %struct.phy**, %struct.phy*** %8, align 8
  %40 = call i32 @devres_free(%struct.phy** %39)
  %41 = load i32, i32* @EPROBE_DEFER, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.phy* @ERR_PTR(i32 %42)
  store %struct.phy* %43, %struct.phy** %4, align 8
  br label %54

44:                                               ; preds = %30
  %45 = load %struct.phy*, %struct.phy** %9, align 8
  %46 = getelementptr inbounds %struct.phy, %struct.phy* %45, i32 0, i32 0
  %47 = call i32 @get_device(i32* %46)
  %48 = load %struct.phy*, %struct.phy** %9, align 8
  %49 = load %struct.phy**, %struct.phy*** %8, align 8
  store %struct.phy* %48, %struct.phy** %49, align 8
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = load %struct.phy**, %struct.phy*** %8, align 8
  %52 = call i32 @devres_add(%struct.device* %50, %struct.phy** %51)
  %53 = load %struct.phy*, %struct.phy** %9, align 8
  store %struct.phy* %53, %struct.phy** %4, align 8
  br label %54

54:                                               ; preds = %44, %38, %26, %15
  %55 = load %struct.phy*, %struct.phy** %4, align 8
  ret %struct.phy* %55
}

declare dso_local %struct.phy** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

declare dso_local %struct.phy* @_of_phy_get(%struct.device_node*, i32) #1

declare dso_local i64 @IS_ERR(%struct.phy*) #1

declare dso_local i32 @devres_free(%struct.phy**) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.phy**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
