; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_alloc_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_alloc_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32 }
%struct.se_hba = type { i32 }
%struct.tcmu_dev = type { i32, %struct.se_device, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.se_hba*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@TCMU_TIME_OUT = common dso_local global i32 0, align 4
@DATA_BLOCK_BITS_DEF = common dso_local global i32 0, align 4
@tcmu_qfull_timedout = common dso_local global i32 0, align 4
@tcmu_cmd_timedout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.se_device* (%struct.se_hba*, i8*)* @tcmu_alloc_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.se_device* @tcmu_alloc_device(%struct.se_hba* %0, i8* %1) #0 {
  %3 = alloca %struct.se_device*, align 8
  %4 = alloca %struct.se_hba*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tcmu_dev*, align 8
  store %struct.se_hba* %0, %struct.se_hba** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.tcmu_dev* @kzalloc(i32 72, i32 %7)
  store %struct.tcmu_dev* %8, %struct.tcmu_dev** %6, align 8
  %9 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %10 = icmp ne %struct.tcmu_dev* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.se_device* null, %struct.se_device** %3, align 8
  br label %72

12:                                               ; preds = %2
  %13 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %14 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %13, i32 0, i32 15
  %15 = call i32 @kref_init(i32* %14)
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32 @kstrdup(i8* %16, i32 %17)
  %19 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %20 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %19, i32 0, i32 14
  store i32 %18, i32* %20, align 8
  %21 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %22 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %21, i32 0, i32 14
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %12
  %26 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %27 = call i32 @kfree(%struct.tcmu_dev* %26)
  store %struct.se_device* null, %struct.se_device** %3, align 8
  br label %72

28:                                               ; preds = %12
  %29 = load %struct.se_hba*, %struct.se_hba** %4, align 8
  %30 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %31 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %30, i32 0, i32 13
  store %struct.se_hba* %29, %struct.se_hba** %31, align 8
  %32 = load i32, i32* @TCMU_TIME_OUT, align 4
  %33 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %34 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %33, i32 0, i32 12
  store i32 %32, i32* %34, align 8
  %35 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %36 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %35, i32 0, i32 0
  store i32 -1, i32* %36, align 8
  %37 = load i32, i32* @DATA_BLOCK_BITS_DEF, align 4
  %38 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %39 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %38, i32 0, i32 11
  store i32 %37, i32* %39, align 4
  %40 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %41 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %40, i32 0, i32 10
  %42 = call i32 @mutex_init(i32* %41)
  %43 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %44 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %43, i32 0, i32 9
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %47 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %46, i32 0, i32 8
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %50 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %49, i32 0, i32 7
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %53 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %52, i32 0, i32 6
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %56 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %55, i32 0, i32 5
  %57 = call i32 @idr_init(i32* %56)
  %58 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %59 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %58, i32 0, i32 4
  %60 = load i32, i32* @tcmu_qfull_timedout, align 4
  %61 = call i32 @timer_setup(i32* %59, i32 %60, i32 0)
  %62 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %63 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %62, i32 0, i32 3
  %64 = load i32, i32* @tcmu_cmd_timedout, align 4
  %65 = call i32 @timer_setup(i32* %63, i32 %64, i32 0)
  %66 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %67 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %66, i32 0, i32 2
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i32 @INIT_RADIX_TREE(i32* %67, i32 %68)
  %70 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %71 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %70, i32 0, i32 1
  store %struct.se_device* %71, %struct.se_device** %3, align 8
  br label %72

72:                                               ; preds = %28, %25, %11
  %73 = load %struct.se_device*, %struct.se_device** %3, align 8
  ret %struct.se_device* %73
}

declare dso_local %struct.tcmu_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @kfree(%struct.tcmu_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
