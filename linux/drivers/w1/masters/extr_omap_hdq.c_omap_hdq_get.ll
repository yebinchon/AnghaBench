; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_omap_hdq.c_omap_hdq_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_omap_hdq.c_omap_hdq_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdq_data = type { i32, i32, i32, i32 }

@EINTR = common dso_local global i32 0, align 4
@OMAP_HDQ_MAX_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"attempt to exceed the max use count\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@OMAP_HDQ_SYSSTATUS = common dso_local global i32 0, align 4
@OMAP_HDQ_SYSSTATUS_RESETDONE = common dso_local global i32 0, align 4
@OMAP_HDQ_CTRL_STATUS = common dso_local global i32 0, align 4
@OMAP_HDQ_CTRL_STATUS_CLOCKENABLE = common dso_local global i32 0, align 4
@OMAP_HDQ_CTRL_STATUS_INTERRUPTMASK = common dso_local global i32 0, align 4
@OMAP_HDQ_SYSCONFIG = common dso_local global i32 0, align 4
@OMAP_HDQ_SYSCONFIG_NOIDLE = common dso_local global i32 0, align 4
@OMAP_HDQ_INT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdq_data*)* @omap_hdq_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hdq_get(%struct.hdq_data* %0) #0 {
  %2 = alloca %struct.hdq_data*, align 8
  %3 = alloca i32, align 4
  store %struct.hdq_data* %0, %struct.hdq_data** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %5 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %4, i32 0, i32 2
  %6 = call i32 @mutex_lock_interruptible(i32* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EINTR, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %83

12:                                               ; preds = %1
  %13 = load i32, i32* @OMAP_HDQ_MAX_USER, align 4
  %14 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %15 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %20 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %79

25:                                               ; preds = %12
  %26 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %27 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @THIS_MODULE, align 4
  %31 = call i32 @try_module_get(i32 %30)
  %32 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %33 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 1, %34
  br i1 %35, label %36, label %77

36:                                               ; preds = %25
  %37 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %38 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pm_runtime_get_sync(i32 %39)
  %41 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %42 = load i32, i32* @OMAP_HDQ_SYSSTATUS, align 4
  %43 = call i32 @hdq_reg_in(%struct.hdq_data* %41, i32 %42)
  %44 = load i32, i32* @OMAP_HDQ_SYSSTATUS_RESETDONE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %36
  %48 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %49 = call i32 @_omap_hdq_reset(%struct.hdq_data* %48)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %54 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %52, %47
  br label %76

58:                                               ; preds = %36
  %59 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %60 = load i32, i32* @OMAP_HDQ_CTRL_STATUS, align 4
  %61 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_CLOCKENABLE, align 4
  %62 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_INTERRUPTMASK, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %65 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %63, %66
  %68 = call i32 @hdq_reg_out(%struct.hdq_data* %59, i32 %60, i32 %67)
  %69 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %70 = load i32, i32* @OMAP_HDQ_SYSCONFIG, align 4
  %71 = load i32, i32* @OMAP_HDQ_SYSCONFIG_NOIDLE, align 4
  %72 = call i32 @hdq_reg_out(%struct.hdq_data* %69, i32 %70, i32 %71)
  %73 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %74 = load i32, i32* @OMAP_HDQ_INT_STATUS, align 4
  %75 = call i32 @hdq_reg_in(%struct.hdq_data* %73, i32 %74)
  br label %76

76:                                               ; preds = %58, %57
  br label %77

77:                                               ; preds = %76, %25
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78, %18
  %80 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %81 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %80, i32 0, i32 2
  %82 = call i32 @mutex_unlock(i32* %81)
  br label %83

83:                                               ; preds = %79, %9
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @hdq_reg_in(%struct.hdq_data*, i32) #1

declare dso_local i32 @_omap_hdq_reset(%struct.hdq_data*) #1

declare dso_local i32 @hdq_reg_out(%struct.hdq_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
