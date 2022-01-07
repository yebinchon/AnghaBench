; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-socfpga.c_a10_reset_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-socfpga.c_a10_reset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.reset_simple_data = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.device_node*, i32*, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"altr,modrst-offset\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"missing altr,modrst-offset property, assuming 0x10\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@SOCFPGA_NR_BANKS = common dso_local global i32 0, align 4
@reset_simple_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*)* @a10_reset_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a10_reset_init(%struct.device_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.reset_simple_data*, align 8
  %5 = alloca %struct.resource, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store i32 16, i32* %8, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.reset_simple_data* @kzalloc(i32 48, i32 %9)
  store %struct.reset_simple_data* %10, %struct.reset_simple_data** %4, align 8
  %11 = load %struct.reset_simple_data*, %struct.reset_simple_data** %4, align 8
  %12 = icmp ne %struct.reset_simple_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %89

16:                                               ; preds = %1
  %17 = load %struct.device_node*, %struct.device_node** %3, align 8
  %18 = call i32 @of_address_to_resource(%struct.device_node* %17, i32 0, %struct.resource* %5)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %85

22:                                               ; preds = %16
  %23 = call i32 @resource_size(%struct.resource* %5)
  store i32 %23, i32* %6, align 4
  %24 = getelementptr inbounds %struct.resource, %struct.resource* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.device_node*, %struct.device_node** %3, align 8
  %28 = getelementptr inbounds %struct.device_node, %struct.device_node* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @request_mem_region(i32 %25, i32 %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %22
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %85

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.resource, %struct.resource* %5, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @ioremap(i32 %37, i32 %38)
  %40 = load %struct.reset_simple_data*, %struct.reset_simple_data** %4, align 8
  %41 = getelementptr inbounds %struct.reset_simple_data, %struct.reset_simple_data* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.reset_simple_data*, %struct.reset_simple_data** %4, align 8
  %43 = getelementptr inbounds %struct.reset_simple_data, %struct.reset_simple_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %35
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %85

49:                                               ; preds = %35
  %50 = load %struct.device_node*, %struct.device_node** %3, align 8
  %51 = call i64 @of_property_read_u32(%struct.device_node* %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %8)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 @pr_warn(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %49
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.reset_simple_data*, %struct.reset_simple_data** %4, align 8
  %58 = getelementptr inbounds %struct.reset_simple_data, %struct.reset_simple_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.reset_simple_data*, %struct.reset_simple_data** %4, align 8
  %62 = getelementptr inbounds %struct.reset_simple_data, %struct.reset_simple_data* %61, i32 0, i32 3
  %63 = call i32 @spin_lock_init(i32* %62)
  %64 = load i32, i32* @THIS_MODULE, align 4
  %65 = load %struct.reset_simple_data*, %struct.reset_simple_data** %4, align 8
  %66 = getelementptr inbounds %struct.reset_simple_data, %struct.reset_simple_data* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  store i32 %64, i32* %67, align 8
  %68 = load i32, i32* @SOCFPGA_NR_BANKS, align 4
  %69 = mul nsw i32 %68, 32
  %70 = load %struct.reset_simple_data*, %struct.reset_simple_data** %4, align 8
  %71 = getelementptr inbounds %struct.reset_simple_data, %struct.reset_simple_data* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = load %struct.reset_simple_data*, %struct.reset_simple_data** %4, align 8
  %74 = getelementptr inbounds %struct.reset_simple_data, %struct.reset_simple_data* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  store i32* @reset_simple_ops, i32** %75, align 8
  %76 = load %struct.device_node*, %struct.device_node** %3, align 8
  %77 = load %struct.reset_simple_data*, %struct.reset_simple_data** %4, align 8
  %78 = getelementptr inbounds %struct.reset_simple_data, %struct.reset_simple_data* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store %struct.device_node* %76, %struct.device_node** %79, align 8
  %80 = load %struct.reset_simple_data*, %struct.reset_simple_data** %4, align 8
  %81 = getelementptr inbounds %struct.reset_simple_data, %struct.reset_simple_data* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  %82 = load %struct.reset_simple_data*, %struct.reset_simple_data** %4, align 8
  %83 = getelementptr inbounds %struct.reset_simple_data, %struct.reset_simple_data* %82, i32 0, i32 2
  %84 = call i32 @reset_controller_register(%struct.TYPE_2__* %83)
  store i32 %84, i32* %2, align 4
  br label %89

85:                                               ; preds = %46, %32, %21
  %86 = load %struct.reset_simple_data*, %struct.reset_simple_data** %4, align 8
  %87 = call i32 @kfree(%struct.reset_simple_data* %86)
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %85, %55, %13
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.reset_simple_data* @kzalloc(i32, i32) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @reset_controller_register(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.reset_simple_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
