; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mem.c_devm_spi_mem_dirmap_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mem.c_devm_spi_mem_dirmap_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_mem_dirmap_desc = type { i32 }
%struct.device = type { i32 }
%struct.spi_mem = type { i32 }
%struct.spi_mem_dirmap_info = type { i32 }

@devm_spi_mem_dirmap_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.spi_mem_dirmap_desc* @devm_spi_mem_dirmap_create(%struct.device* %0, %struct.spi_mem* %1, %struct.spi_mem_dirmap_info* %2) #0 {
  %4 = alloca %struct.spi_mem_dirmap_desc*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.spi_mem*, align 8
  %7 = alloca %struct.spi_mem_dirmap_info*, align 8
  %8 = alloca %struct.spi_mem_dirmap_desc**, align 8
  %9 = alloca %struct.spi_mem_dirmap_desc*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.spi_mem* %1, %struct.spi_mem** %6, align 8
  store %struct.spi_mem_dirmap_info* %2, %struct.spi_mem_dirmap_info** %7, align 8
  %10 = load i32, i32* @devm_spi_mem_dirmap_release, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.spi_mem_dirmap_desc** @devres_alloc(i32 %10, i32 8, i32 %11)
  store %struct.spi_mem_dirmap_desc** %12, %struct.spi_mem_dirmap_desc*** %8, align 8
  %13 = load %struct.spi_mem_dirmap_desc**, %struct.spi_mem_dirmap_desc*** %8, align 8
  %14 = icmp ne %struct.spi_mem_dirmap_desc** %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.spi_mem_dirmap_desc* @ERR_PTR(i32 %17)
  store %struct.spi_mem_dirmap_desc* %18, %struct.spi_mem_dirmap_desc** %4, align 8
  br label %37

19:                                               ; preds = %3
  %20 = load %struct.spi_mem*, %struct.spi_mem** %6, align 8
  %21 = load %struct.spi_mem_dirmap_info*, %struct.spi_mem_dirmap_info** %7, align 8
  %22 = call %struct.spi_mem_dirmap_desc* @spi_mem_dirmap_create(%struct.spi_mem* %20, %struct.spi_mem_dirmap_info* %21)
  store %struct.spi_mem_dirmap_desc* %22, %struct.spi_mem_dirmap_desc** %9, align 8
  %23 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %9, align 8
  %24 = call i64 @IS_ERR(%struct.spi_mem_dirmap_desc* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.spi_mem_dirmap_desc**, %struct.spi_mem_dirmap_desc*** %8, align 8
  %28 = call i32 @devres_free(%struct.spi_mem_dirmap_desc** %27)
  br label %35

29:                                               ; preds = %19
  %30 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %9, align 8
  %31 = load %struct.spi_mem_dirmap_desc**, %struct.spi_mem_dirmap_desc*** %8, align 8
  store %struct.spi_mem_dirmap_desc* %30, %struct.spi_mem_dirmap_desc** %31, align 8
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = load %struct.spi_mem_dirmap_desc**, %struct.spi_mem_dirmap_desc*** %8, align 8
  %34 = call i32 @devres_add(%struct.device* %32, %struct.spi_mem_dirmap_desc** %33)
  br label %35

35:                                               ; preds = %29, %26
  %36 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %9, align 8
  store %struct.spi_mem_dirmap_desc* %36, %struct.spi_mem_dirmap_desc** %4, align 8
  br label %37

37:                                               ; preds = %35, %15
  %38 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %4, align 8
  ret %struct.spi_mem_dirmap_desc* %38
}

declare dso_local %struct.spi_mem_dirmap_desc** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.spi_mem_dirmap_desc* @ERR_PTR(i32) #1

declare dso_local %struct.spi_mem_dirmap_desc* @spi_mem_dirmap_create(%struct.spi_mem*, %struct.spi_mem_dirmap_info*) #1

declare dso_local i64 @IS_ERR(%struct.spi_mem_dirmap_desc*) #1

declare dso_local i32 @devres_free(%struct.spi_mem_dirmap_desc**) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.spi_mem_dirmap_desc**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
