; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chp.c_info_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chp.c_info_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@info_lock = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@chp_info_expires = common dso_local global i64 0, align 8
@chp_info = common dso_local global i32 0, align 4
@CHP_INFO_UPDATE_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @info_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @info_update() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @mutex_lock(i32* @info_lock)
  store i32 0, i32* %1, align 4
  %3 = load i64, i64* @jiffies, align 8
  %4 = load i64, i64* @chp_info_expires, align 8
  %5 = call i64 @time_after(i64 %3, i64 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %0
  %8 = call i32 @sclp_chp_read_info(i32* @chp_info)
  store i32 %8, i32* %1, align 4
  %9 = load i64, i64* @jiffies, align 8
  %10 = load i64, i64* @CHP_INFO_UPDATE_INTERVAL, align 8
  %11 = add nsw i64 %9, %10
  store i64 %11, i64* @chp_info_expires, align 8
  br label %12

12:                                               ; preds = %7, %0
  %13 = call i32 @mutex_unlock(i32* @info_lock)
  %14 = load i32, i32* %1, align 4
  ret i32 %14
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @sclp_chp_read_info(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
