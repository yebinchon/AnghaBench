; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_core.c_devm_nvmem_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_core.c_devm_nvmem_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmem_device = type { i32 }
%struct.device = type { i32 }
%struct.nvmem_config = type { i32 }

@devm_nvmem_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nvmem_device* @devm_nvmem_register(%struct.device* %0, %struct.nvmem_config* %1) #0 {
  %3 = alloca %struct.nvmem_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.nvmem_config*, align 8
  %6 = alloca %struct.nvmem_device**, align 8
  %7 = alloca %struct.nvmem_device*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.nvmem_config* %1, %struct.nvmem_config** %5, align 8
  %8 = load i32, i32* @devm_nvmem_release, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.nvmem_device** @devres_alloc(i32 %8, i32 8, i32 %9)
  store %struct.nvmem_device** %10, %struct.nvmem_device*** %6, align 8
  %11 = load %struct.nvmem_device**, %struct.nvmem_device*** %6, align 8
  %12 = icmp ne %struct.nvmem_device** %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.nvmem_device* @ERR_PTR(i32 %15)
  store %struct.nvmem_device* %16, %struct.nvmem_device** %3, align 8
  br label %34

17:                                               ; preds = %2
  %18 = load %struct.nvmem_config*, %struct.nvmem_config** %5, align 8
  %19 = call %struct.nvmem_device* @nvmem_register(%struct.nvmem_config* %18)
  store %struct.nvmem_device* %19, %struct.nvmem_device** %7, align 8
  %20 = load %struct.nvmem_device*, %struct.nvmem_device** %7, align 8
  %21 = call i32 @IS_ERR(%struct.nvmem_device* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.nvmem_device*, %struct.nvmem_device** %7, align 8
  %25 = load %struct.nvmem_device**, %struct.nvmem_device*** %6, align 8
  store %struct.nvmem_device* %24, %struct.nvmem_device** %25, align 8
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load %struct.nvmem_device**, %struct.nvmem_device*** %6, align 8
  %28 = call i32 @devres_add(%struct.device* %26, %struct.nvmem_device** %27)
  br label %32

29:                                               ; preds = %17
  %30 = load %struct.nvmem_device**, %struct.nvmem_device*** %6, align 8
  %31 = call i32 @devres_free(%struct.nvmem_device** %30)
  br label %32

32:                                               ; preds = %29, %23
  %33 = load %struct.nvmem_device*, %struct.nvmem_device** %7, align 8
  store %struct.nvmem_device* %33, %struct.nvmem_device** %3, align 8
  br label %34

34:                                               ; preds = %32, %13
  %35 = load %struct.nvmem_device*, %struct.nvmem_device** %3, align 8
  ret %struct.nvmem_device* %35
}

declare dso_local %struct.nvmem_device** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.nvmem_device* @ERR_PTR(i32) #1

declare dso_local %struct.nvmem_device* @nvmem_register(%struct.nvmem_config*) #1

declare dso_local i32 @IS_ERR(%struct.nvmem_device*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.nvmem_device**) #1

declare dso_local i32 @devres_free(%struct.nvmem_device**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
