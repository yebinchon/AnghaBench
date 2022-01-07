; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_omap_hdq.c_omap_w1_read_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_omap_hdq.c_omap_w1_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdq_data = type { i64, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Could not acquire mutex\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@OMAP_HDQ_CTRL_STATUS = common dso_local global i32 0, align 4
@OMAP_HDQ_CTRL_STATUS_INTERRUPTMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @omap_w1_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_w1_read_byte(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hdq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.hdq_data*
  store %struct.hdq_data* %8, %struct.hdq_data** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %10 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %15 = call i32 @omap_hdq_get(%struct.hdq_data* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %18 = call i32 @hdq_read_byte(%struct.hdq_data* %17, i32* %5)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %16
  %22 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %23 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock_interruptible(i32* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %29 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINTR, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %75

34:                                               ; preds = %21
  %35 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %36 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %38 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %37, i32 0, i32 1
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %41 = call i32 @omap_hdq_put(%struct.hdq_data* %40)
  store i32 -1, i32* %2, align 4
  br label %75

42:                                               ; preds = %16
  %43 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %44 = load i32, i32* @OMAP_HDQ_CTRL_STATUS, align 4
  %45 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_INTERRUPTMASK, align 4
  %46 = xor i32 %45, -1
  %47 = call i32 @hdq_disable_interrupt(%struct.hdq_data* %43, i32 %44, i32 %46)
  %48 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %49 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %42
  %53 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %54 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %53, i32 0, i32 1
  %55 = call i32 @mutex_lock_interruptible(i32* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %60 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_dbg(i32 %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* @EINTR, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %75

65:                                               ; preds = %52
  %66 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %67 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %69 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %68, i32 0, i32 1
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load %struct.hdq_data*, %struct.hdq_data** %4, align 8
  %72 = call i32 @omap_hdq_put(%struct.hdq_data* %71)
  br label %73

73:                                               ; preds = %65, %42
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %58, %34, %27
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @omap_hdq_get(%struct.hdq_data*) #1

declare dso_local i32 @hdq_read_byte(%struct.hdq_data*, i32*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @omap_hdq_put(%struct.hdq_data*) #1

declare dso_local i32 @hdq_disable_interrupt(%struct.hdq_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
