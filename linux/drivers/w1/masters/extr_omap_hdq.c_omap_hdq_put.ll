; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_omap_hdq.c_omap_hdq_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_omap_hdq.c_omap_hdq_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdq_data = type { i64, i32, i32 }

@EINTR = common dso_local global i32 0, align 4
@OMAP_HDQ_SYSCONFIG = common dso_local global i32 0, align 4
@OMAP_HDQ_SYSCONFIG_AUTOIDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"attempt to decrement use count when it is zero\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdq_data*)* @omap_hdq_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hdq_put(%struct.hdq_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdq_data*, align 8
  %4 = alloca i32, align 4
  store %struct.hdq_data* %0, %struct.hdq_data** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %6 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %5, i32 0, i32 1
  %7 = call i32 @mutex_lock_interruptible(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EINTR, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %51

13:                                               ; preds = %1
  %14 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %15 = load i32, i32* @OMAP_HDQ_SYSCONFIG, align 4
  %16 = load i32, i32* @OMAP_HDQ_SYSCONFIG_AUTOIDLE, align 4
  %17 = call i32 @hdq_reg_out(%struct.hdq_data* %14, i32 %15, i32 %16)
  %18 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %19 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 0, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %13
  %23 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %24 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %46

29:                                               ; preds = %13
  %30 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %31 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %31, align 8
  %34 = load i32, i32* @THIS_MODULE, align 4
  %35 = call i32 @module_put(i32 %34)
  %36 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %37 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 0, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %29
  %41 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %42 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pm_runtime_put_sync(i32 %43)
  br label %45

45:                                               ; preds = %40, %29
  br label %46

46:                                               ; preds = %45, %22
  %47 = load %struct.hdq_data*, %struct.hdq_data** %3, align 8
  %48 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %47, i32 0, i32 1
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %46, %10
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @hdq_reg_out(%struct.hdq_data*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
