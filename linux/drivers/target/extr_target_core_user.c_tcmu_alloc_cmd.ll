; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_alloc_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_alloc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcmu_cmd = type { i32, i32, %struct.tcmu_dev*, %struct.se_cmd*, i32 }
%struct.tcmu_dev = type { i32 }
%struct.se_cmd = type { %struct.se_device* }
%struct.se_device = type { i32 }

@tcmu_cmd_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcmu_cmd* (%struct.se_cmd*)* @tcmu_alloc_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcmu_cmd* @tcmu_alloc_cmd(%struct.se_cmd* %0) #0 {
  %2 = alloca %struct.tcmu_cmd*, align 8
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.se_device*, align 8
  %5 = alloca %struct.tcmu_dev*, align 8
  %6 = alloca %struct.tcmu_cmd*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %7 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %8 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %7, i32 0, i32 0
  %9 = load %struct.se_device*, %struct.se_device** %8, align 8
  store %struct.se_device* %9, %struct.se_device** %4, align 8
  %10 = load %struct.se_device*, %struct.se_device** %4, align 8
  %11 = call %struct.tcmu_dev* @TCMU_DEV(%struct.se_device* %10)
  store %struct.tcmu_dev* %11, %struct.tcmu_dev** %5, align 8
  %12 = load i32, i32* @tcmu_cmd_cache, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.tcmu_cmd* @kmem_cache_zalloc(i32 %12, i32 %13)
  store %struct.tcmu_cmd* %14, %struct.tcmu_cmd** %6, align 8
  %15 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %6, align 8
  %16 = icmp ne %struct.tcmu_cmd* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store %struct.tcmu_cmd* null, %struct.tcmu_cmd** %2, align 8
  br label %51

18:                                               ; preds = %1
  %19 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %6, align 8
  %20 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %19, i32 0, i32 4
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %23 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %6, align 8
  %24 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %23, i32 0, i32 3
  store %struct.se_cmd* %22, %struct.se_cmd** %24, align 8
  %25 = load %struct.tcmu_dev*, %struct.tcmu_dev** %5, align 8
  %26 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %6, align 8
  %27 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %26, i32 0, i32 2
  store %struct.tcmu_dev* %25, %struct.tcmu_dev** %27, align 8
  %28 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %6, align 8
  %29 = call i32 @tcmu_cmd_reset_dbi_cur(%struct.tcmu_cmd* %28)
  %30 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %6, align 8
  %31 = call i32 @tcmu_cmd_get_block_cnt(%struct.tcmu_cmd* %30)
  %32 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %6, align 8
  %33 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %6, align 8
  %35 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32 @kcalloc(i32 %36, i32 4, i32 %37)
  %39 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %6, align 8
  %40 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %6, align 8
  %42 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %18
  %46 = load i32, i32* @tcmu_cmd_cache, align 4
  %47 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %6, align 8
  %48 = call i32 @kmem_cache_free(i32 %46, %struct.tcmu_cmd* %47)
  store %struct.tcmu_cmd* null, %struct.tcmu_cmd** %2, align 8
  br label %51

49:                                               ; preds = %18
  %50 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %6, align 8
  store %struct.tcmu_cmd* %50, %struct.tcmu_cmd** %2, align 8
  br label %51

51:                                               ; preds = %49, %45, %17
  %52 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %2, align 8
  ret %struct.tcmu_cmd* %52
}

declare dso_local %struct.tcmu_dev* @TCMU_DEV(%struct.se_device*) #1

declare dso_local %struct.tcmu_cmd* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @tcmu_cmd_reset_dbi_cur(%struct.tcmu_cmd*) #1

declare dso_local i32 @tcmu_cmd_get_block_cnt(%struct.tcmu_cmd*) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.tcmu_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
