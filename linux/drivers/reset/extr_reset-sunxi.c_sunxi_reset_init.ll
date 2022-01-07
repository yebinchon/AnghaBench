; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-sunxi.c_sunxi_reset_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-sunxi.c_sunxi_reset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.reset_simple_data = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.device_node*, i32*, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@reset_simple_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*)* @sunxi_reset_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_reset_init(%struct.device_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.reset_simple_data*, align 8
  %5 = alloca %struct.resource, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.reset_simple_data* @kzalloc(i32 48, i32 %8)
  store %struct.reset_simple_data* %9, %struct.reset_simple_data** %4, align 8
  %10 = load %struct.reset_simple_data*, %struct.reset_simple_data** %4, align 8
  %11 = icmp ne %struct.reset_simple_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %77

15:                                               ; preds = %1
  %16 = load %struct.device_node*, %struct.device_node** %3, align 8
  %17 = call i32 @of_address_to_resource(%struct.device_node* %16, i32 0, %struct.resource* %5)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %73

21:                                               ; preds = %15
  %22 = call i32 @resource_size(%struct.resource* %5)
  store i32 %22, i32* %6, align 4
  %23 = getelementptr inbounds %struct.resource, %struct.resource* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.device_node*, %struct.device_node** %3, align 8
  %27 = getelementptr inbounds %struct.device_node, %struct.device_node* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @request_mem_region(i32 %24, i32 %25, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %73

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @ioremap(i32 %36, i32 %37)
  %39 = load %struct.reset_simple_data*, %struct.reset_simple_data** %4, align 8
  %40 = getelementptr inbounds %struct.reset_simple_data, %struct.reset_simple_data* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.reset_simple_data*, %struct.reset_simple_data** %4, align 8
  %42 = getelementptr inbounds %struct.reset_simple_data, %struct.reset_simple_data* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %34
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %73

48:                                               ; preds = %34
  %49 = load %struct.reset_simple_data*, %struct.reset_simple_data** %4, align 8
  %50 = getelementptr inbounds %struct.reset_simple_data, %struct.reset_simple_data* %49, i32 0, i32 2
  %51 = call i32 @spin_lock_init(i32* %50)
  %52 = load i32, i32* @THIS_MODULE, align 4
  %53 = load %struct.reset_simple_data*, %struct.reset_simple_data** %4, align 8
  %54 = getelementptr inbounds %struct.reset_simple_data, %struct.reset_simple_data* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  store i32 %52, i32* %55, align 8
  %56 = load i32, i32* %6, align 4
  %57 = mul nsw i32 %56, 8
  %58 = load %struct.reset_simple_data*, %struct.reset_simple_data** %4, align 8
  %59 = getelementptr inbounds %struct.reset_simple_data, %struct.reset_simple_data* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load %struct.reset_simple_data*, %struct.reset_simple_data** %4, align 8
  %62 = getelementptr inbounds %struct.reset_simple_data, %struct.reset_simple_data* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i32* @reset_simple_ops, i32** %63, align 8
  %64 = load %struct.device_node*, %struct.device_node** %3, align 8
  %65 = load %struct.reset_simple_data*, %struct.reset_simple_data** %4, align 8
  %66 = getelementptr inbounds %struct.reset_simple_data, %struct.reset_simple_data* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store %struct.device_node* %64, %struct.device_node** %67, align 8
  %68 = load %struct.reset_simple_data*, %struct.reset_simple_data** %4, align 8
  %69 = getelementptr inbounds %struct.reset_simple_data, %struct.reset_simple_data* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.reset_simple_data*, %struct.reset_simple_data** %4, align 8
  %71 = getelementptr inbounds %struct.reset_simple_data, %struct.reset_simple_data* %70, i32 0, i32 1
  %72 = call i32 @reset_controller_register(%struct.TYPE_2__* %71)
  store i32 %72, i32* %2, align 4
  br label %77

73:                                               ; preds = %45, %31, %20
  %74 = load %struct.reset_simple_data*, %struct.reset_simple_data** %4, align 8
  %75 = call i32 @kfree(%struct.reset_simple_data* %74)
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %73, %48, %12
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.reset_simple_data* @kzalloc(i32, i32) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @reset_controller_register(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.reset_simple_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
