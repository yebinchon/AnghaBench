; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c___devm_of_phy_provider_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c___devm_of_phy_provider_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_provider = type { i32 }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.module = type { i32 }
%struct.phy = type opaque
%struct.of_phandle_args = type opaque
%struct.phy.0 = type opaque
%struct.of_phandle_args.1 = type opaque

@devm_phy_provider_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.phy_provider* @__devm_of_phy_provider_register(%struct.device* %0, %struct.device_node* %1, %struct.module* %2, %struct.phy* (%struct.device*, %struct.of_phandle_args*)* %3) #0 {
  %5 = alloca %struct.phy_provider*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.module*, align 8
  %9 = alloca %struct.phy* (%struct.device*, %struct.of_phandle_args*)*, align 8
  %10 = alloca %struct.phy_provider**, align 8
  %11 = alloca %struct.phy_provider*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_node* %1, %struct.device_node** %7, align 8
  store %struct.module* %2, %struct.module** %8, align 8
  store %struct.phy* (%struct.device*, %struct.of_phandle_args*)* %3, %struct.phy* (%struct.device*, %struct.of_phandle_args*)** %9, align 8
  %12 = load i32, i32* @devm_phy_provider_release, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.phy_provider** @devres_alloc(i32 %12, i32 8, i32 %13)
  store %struct.phy_provider** %14, %struct.phy_provider*** %10, align 8
  %15 = load %struct.phy_provider**, %struct.phy_provider*** %10, align 8
  %16 = icmp ne %struct.phy_provider** %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.phy_provider* @ERR_PTR(i32 %19)
  store %struct.phy_provider* %20, %struct.phy_provider** %5, align 8
  br label %42

21:                                               ; preds = %4
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = load %struct.device_node*, %struct.device_node** %7, align 8
  %24 = load %struct.module*, %struct.module** %8, align 8
  %25 = load %struct.phy* (%struct.device*, %struct.of_phandle_args*)*, %struct.phy* (%struct.device*, %struct.of_phandle_args*)** %9, align 8
  %26 = bitcast %struct.phy* (%struct.device*, %struct.of_phandle_args*)* %25 to %struct.phy.0* (%struct.device*, %struct.of_phandle_args.1*)*
  %27 = call %struct.phy_provider* @__of_phy_provider_register(%struct.device* %22, %struct.device_node* %23, %struct.module* %24, %struct.phy.0* (%struct.device*, %struct.of_phandle_args.1*)* %26)
  store %struct.phy_provider* %27, %struct.phy_provider** %11, align 8
  %28 = load %struct.phy_provider*, %struct.phy_provider** %11, align 8
  %29 = call i32 @IS_ERR(%struct.phy_provider* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %21
  %32 = load %struct.phy_provider*, %struct.phy_provider** %11, align 8
  %33 = load %struct.phy_provider**, %struct.phy_provider*** %10, align 8
  store %struct.phy_provider* %32, %struct.phy_provider** %33, align 8
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = load %struct.phy_provider**, %struct.phy_provider*** %10, align 8
  %36 = call i32 @devres_add(%struct.device* %34, %struct.phy_provider** %35)
  br label %40

37:                                               ; preds = %21
  %38 = load %struct.phy_provider**, %struct.phy_provider*** %10, align 8
  %39 = call i32 @devres_free(%struct.phy_provider** %38)
  br label %40

40:                                               ; preds = %37, %31
  %41 = load %struct.phy_provider*, %struct.phy_provider** %11, align 8
  store %struct.phy_provider* %41, %struct.phy_provider** %5, align 8
  br label %42

42:                                               ; preds = %40, %17
  %43 = load %struct.phy_provider*, %struct.phy_provider** %5, align 8
  ret %struct.phy_provider* %43
}

declare dso_local %struct.phy_provider** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.phy_provider* @ERR_PTR(i32) #1

declare dso_local %struct.phy_provider* @__of_phy_provider_register(%struct.device*, %struct.device_node*, %struct.module*, %struct.phy.0* (%struct.device*, %struct.of_phandle_args.1*)*) #1

declare dso_local i32 @IS_ERR(%struct.phy_provider*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.phy_provider**) #1

declare dso_local i32 @devres_free(%struct.phy_provider**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
