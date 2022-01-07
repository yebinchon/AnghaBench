; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_alua.c_core_alua_allocate_tg_pt_gp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_alua.c_core_alua_allocate_tg_pt_gp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t10_alua_tg_pt_gp = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, %struct.se_device*, i32, i32, i32, i32 }
%struct.se_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@t10_alua_tg_pt_gp_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Unable to allocate struct t10_alua_tg_pt_gp\0A\00", align 1
@ALUA_ACCESS_STATE_ACTIVE_OPTIMIZED = common dso_local global i32 0, align 4
@TPGS_EXPLICIT_ALUA = common dso_local global i32 0, align 4
@TPGS_IMPLICIT_ALUA = common dso_local global i32 0, align 4
@ALUA_DEFAULT_NONOP_DELAY_MSECS = common dso_local global i32 0, align 4
@ALUA_DEFAULT_TRANS_DELAY_MSECS = common dso_local global i32 0, align 4
@ALUA_DEFAULT_IMPLICIT_TRANS_SECS = common dso_local global i32 0, align 4
@ALUA_T_SUP = common dso_local global i32 0, align 4
@ALUA_O_SUP = common dso_local global i32 0, align 4
@ALUA_U_SUP = common dso_local global i32 0, align 4
@ALUA_S_SUP = common dso_local global i32 0, align 4
@ALUA_AN_SUP = common dso_local global i32 0, align 4
@ALUA_AO_SUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.t10_alua_tg_pt_gp* @core_alua_allocate_tg_pt_gp(%struct.se_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.t10_alua_tg_pt_gp*, align 8
  %5 = alloca %struct.se_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.t10_alua_tg_pt_gp*, align 8
  store %struct.se_device* %0, %struct.se_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @t10_alua_tg_pt_gp_cache, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.t10_alua_tg_pt_gp* @kmem_cache_zalloc(i32 %9, i32 %10)
  store %struct.t10_alua_tg_pt_gp* %11, %struct.t10_alua_tg_pt_gp** %8, align 8
  %12 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %13 = icmp ne %struct.t10_alua_tg_pt_gp* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store %struct.t10_alua_tg_pt_gp* null, %struct.t10_alua_tg_pt_gp** %4, align 8
  br label %99

16:                                               ; preds = %3
  %17 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %18 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %17, i32 0, i32 3
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %21 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %20, i32 0, i32 13
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %24 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %23, i32 0, i32 12
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %27 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %26, i32 0, i32 11
  %28 = call i32 @spin_lock_init(i32* %27)
  %29 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %30 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %29, i32 0, i32 10
  %31 = call i32 @atomic_set(i32* %30, i32 0)
  %32 = load %struct.se_device*, %struct.se_device** %5, align 8
  %33 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %34 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %33, i32 0, i32 9
  store %struct.se_device* %32, %struct.se_device** %34, align 8
  %35 = load i32, i32* @ALUA_ACCESS_STATE_ACTIVE_OPTIMIZED, align 4
  %36 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %37 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %36, i32 0, i32 8
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @TPGS_EXPLICIT_ALUA, align 4
  %39 = load i32, i32* @TPGS_IMPLICIT_ALUA, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %42 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @ALUA_DEFAULT_NONOP_DELAY_MSECS, align 4
  %44 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %45 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %44, i32 0, i32 7
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @ALUA_DEFAULT_TRANS_DELAY_MSECS, align 4
  %47 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %48 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @ALUA_DEFAULT_IMPLICIT_TRANS_SECS, align 4
  %50 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %51 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @ALUA_T_SUP, align 4
  %53 = load i32, i32* @ALUA_O_SUP, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @ALUA_U_SUP, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @ALUA_S_SUP, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @ALUA_AN_SUP, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @ALUA_AO_SUP, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %64 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %97

67:                                               ; preds = %16
  %68 = load %struct.se_device*, %struct.se_device** %5, align 8
  %69 = getelementptr inbounds %struct.se_device, %struct.se_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @spin_lock(i32* %70)
  %72 = load %struct.se_device*, %struct.se_device** %5, align 8
  %73 = getelementptr inbounds %struct.se_device, %struct.se_device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = sext i32 %75 to i64
  %78 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %79 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %78, i32 0, i32 4
  store i64 %77, i64* %79, align 8
  %80 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %81 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %80, i32 0, i32 2
  store i32 1, i32* %81, align 8
  %82 = load %struct.se_device*, %struct.se_device** %5, align 8
  %83 = getelementptr inbounds %struct.se_device, %struct.se_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %88 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %87, i32 0, i32 3
  %89 = load %struct.se_device*, %struct.se_device** %5, align 8
  %90 = getelementptr inbounds %struct.se_device, %struct.se_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = call i32 @list_add_tail(i32* %88, i32* %91)
  %93 = load %struct.se_device*, %struct.se_device** %5, align 8
  %94 = getelementptr inbounds %struct.se_device, %struct.se_device* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = call i32 @spin_unlock(i32* %95)
  br label %97

97:                                               ; preds = %67, %16
  %98 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  store %struct.t10_alua_tg_pt_gp* %98, %struct.t10_alua_tg_pt_gp** %4, align 8
  br label %99

99:                                               ; preds = %97, %14
  %100 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %4, align 8
  ret %struct.t10_alua_tg_pt_gp* %100
}

declare dso_local %struct.t10_alua_tg_pt_gp* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
