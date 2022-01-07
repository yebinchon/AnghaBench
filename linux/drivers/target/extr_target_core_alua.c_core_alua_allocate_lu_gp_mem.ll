; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_alua.c_core_alua_allocate_lu_gp_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_alua.c_core_alua_allocate_lu_gp_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t10_alua_lu_gp_member = type { %struct.se_device*, i32, i32, i32 }
%struct.se_device = type { %struct.t10_alua_lu_gp_member* }

@t10_alua_lu_gp_mem_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Unable to allocate struct t10_alua_lu_gp_member\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.t10_alua_lu_gp_member* (%struct.se_device*)* @core_alua_allocate_lu_gp_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.t10_alua_lu_gp_member* @core_alua_allocate_lu_gp_mem(%struct.se_device* %0) #0 {
  %2 = alloca %struct.t10_alua_lu_gp_member*, align 8
  %3 = alloca %struct.se_device*, align 8
  %4 = alloca %struct.t10_alua_lu_gp_member*, align 8
  store %struct.se_device* %0, %struct.se_device** %3, align 8
  %5 = load i32, i32* @t10_alua_lu_gp_mem_cache, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.t10_alua_lu_gp_member* @kmem_cache_zalloc(i32 %5, i32 %6)
  store %struct.t10_alua_lu_gp_member* %7, %struct.t10_alua_lu_gp_member** %4, align 8
  %8 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %4, align 8
  %9 = icmp ne %struct.t10_alua_lu_gp_member* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.t10_alua_lu_gp_member* @ERR_PTR(i32 %13)
  store %struct.t10_alua_lu_gp_member* %14, %struct.t10_alua_lu_gp_member** %2, align 8
  br label %32

15:                                               ; preds = %1
  %16 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %4, align 8
  %17 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %16, i32 0, i32 3
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %4, align 8
  %20 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %19, i32 0, i32 2
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %4, align 8
  %23 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %22, i32 0, i32 1
  %24 = call i32 @atomic_set(i32* %23, i32 0)
  %25 = load %struct.se_device*, %struct.se_device** %3, align 8
  %26 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %4, align 8
  %27 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %26, i32 0, i32 0
  store %struct.se_device* %25, %struct.se_device** %27, align 8
  %28 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %4, align 8
  %29 = load %struct.se_device*, %struct.se_device** %3, align 8
  %30 = getelementptr inbounds %struct.se_device, %struct.se_device* %29, i32 0, i32 0
  store %struct.t10_alua_lu_gp_member* %28, %struct.t10_alua_lu_gp_member** %30, align 8
  %31 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %4, align 8
  store %struct.t10_alua_lu_gp_member* %31, %struct.t10_alua_lu_gp_member** %2, align 8
  br label %32

32:                                               ; preds = %15, %10
  %33 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %2, align 8
  ret %struct.t10_alua_lu_gp_member* %33
}

declare dso_local %struct.t10_alua_lu_gp_member* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.t10_alua_lu_gp_member* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
