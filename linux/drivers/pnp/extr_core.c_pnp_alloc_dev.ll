; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/extr_core.c_pnp_alloc_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/extr_core.c_pnp_alloc_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32, %struct.pnp_protocol*, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32*, i32, i32*, i32*, i32* }
%struct.pnp_protocol = type { i32, i32 }
%struct.pnp_id = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@pnp_bus_type = common dso_local global i32 0, align 4
@pnp_release_device = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%02x:%02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pnp_dev* @pnp_alloc_dev(%struct.pnp_protocol* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.pnp_dev*, align 8
  %5 = alloca %struct.pnp_protocol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pnp_dev*, align 8
  %9 = alloca %struct.pnp_id*, align 8
  store %struct.pnp_protocol* %0, %struct.pnp_protocol** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.pnp_dev* @kzalloc(i32 72, i32 %10)
  store %struct.pnp_dev* %11, %struct.pnp_dev** %8, align 8
  %12 = load %struct.pnp_dev*, %struct.pnp_dev** %8, align 8
  %13 = icmp ne %struct.pnp_dev* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.pnp_dev* null, %struct.pnp_dev** %4, align 8
  br label %76

15:                                               ; preds = %3
  %16 = load %struct.pnp_dev*, %struct.pnp_dev** %8, align 8
  %17 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %16, i32 0, i32 5
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.pnp_dev*, %struct.pnp_dev** %8, align 8
  %20 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %19, i32 0, i32 4
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.pnp_protocol*, %struct.pnp_protocol** %5, align 8
  %23 = load %struct.pnp_dev*, %struct.pnp_dev** %8, align 8
  %24 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %23, i32 0, i32 1
  store %struct.pnp_protocol* %22, %struct.pnp_protocol** %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.pnp_dev*, %struct.pnp_dev** %8, align 8
  %27 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = call i32 @DMA_BIT_MASK(i32 24)
  %29 = load %struct.pnp_dev*, %struct.pnp_dev** %8, align 8
  %30 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.pnp_dev*, %struct.pnp_dev** %8, align 8
  %32 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %31, i32 0, i32 1
  %33 = load %struct.pnp_protocol*, %struct.pnp_protocol** %32, align 8
  %34 = getelementptr inbounds %struct.pnp_protocol, %struct.pnp_protocol* %33, i32 0, i32 1
  %35 = load %struct.pnp_dev*, %struct.pnp_dev** %8, align 8
  %36 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  store i32* %34, i32** %37, align 8
  %38 = load %struct.pnp_dev*, %struct.pnp_dev** %8, align 8
  %39 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  store i32* @pnp_bus_type, i32** %40, align 8
  %41 = load %struct.pnp_dev*, %struct.pnp_dev** %8, align 8
  %42 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %41, i32 0, i32 3
  %43 = load %struct.pnp_dev*, %struct.pnp_dev** %8, align 8
  %44 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store i32* %42, i32** %45, align 8
  %46 = load %struct.pnp_dev*, %struct.pnp_dev** %8, align 8
  %47 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.pnp_dev*, %struct.pnp_dev** %8, align 8
  %50 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 8
  %52 = load %struct.pnp_dev*, %struct.pnp_dev** %8, align 8
  %53 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32* @pnp_release_device, i32** %54, align 8
  %55 = load %struct.pnp_dev*, %struct.pnp_dev** %8, align 8
  %56 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %55, i32 0, i32 2
  %57 = load %struct.pnp_dev*, %struct.pnp_dev** %8, align 8
  %58 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %57, i32 0, i32 1
  %59 = load %struct.pnp_protocol*, %struct.pnp_protocol** %58, align 8
  %60 = getelementptr inbounds %struct.pnp_protocol, %struct.pnp_protocol* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.pnp_dev*, %struct.pnp_dev** %8, align 8
  %63 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dev_set_name(%struct.TYPE_2__* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %64)
  %66 = load %struct.pnp_dev*, %struct.pnp_dev** %8, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call %struct.pnp_id* @pnp_add_id(%struct.pnp_dev* %66, i8* %67)
  store %struct.pnp_id* %68, %struct.pnp_id** %9, align 8
  %69 = load %struct.pnp_id*, %struct.pnp_id** %9, align 8
  %70 = icmp ne %struct.pnp_id* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %15
  %72 = load %struct.pnp_dev*, %struct.pnp_dev** %8, align 8
  %73 = call i32 @kfree(%struct.pnp_dev* %72)
  store %struct.pnp_dev* null, %struct.pnp_dev** %4, align 8
  br label %76

74:                                               ; preds = %15
  %75 = load %struct.pnp_dev*, %struct.pnp_dev** %8, align 8
  store %struct.pnp_dev* %75, %struct.pnp_dev** %4, align 8
  br label %76

76:                                               ; preds = %74, %71, %14
  %77 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  ret %struct.pnp_dev* %77
}

declare dso_local %struct.pnp_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_2__*, i8*, i32, i32) #1

declare dso_local %struct.pnp_id* @pnp_add_id(%struct.pnp_dev*, i8*) #1

declare dso_local i32 @kfree(%struct.pnp_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
