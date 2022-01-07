; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_pingpong.c_pp_create_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_pingpong.c_pp_create_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_ctx = type { %struct.TYPE_2__, i32, i32, %struct.ntb_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.ntb_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@pp_timer_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pp_ctx* (%struct.ntb_dev*)* @pp_create_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pp_ctx* @pp_create_data(%struct.ntb_dev* %0) #0 {
  %2 = alloca %struct.pp_ctx*, align 8
  %3 = alloca %struct.ntb_dev*, align 8
  %4 = alloca %struct.pp_ctx*, align 8
  store %struct.ntb_dev* %0, %struct.ntb_dev** %3, align 8
  %5 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %6 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %5, i32 0, i32 0
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.pp_ctx* @devm_kzalloc(i32* %6, i32 24, i32 %7)
  store %struct.pp_ctx* %8, %struct.pp_ctx** %4, align 8
  %9 = load %struct.pp_ctx*, %struct.pp_ctx** %4, align 8
  %10 = icmp ne %struct.pp_ctx* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.pp_ctx* @ERR_PTR(i32 %13)
  store %struct.pp_ctx* %14, %struct.pp_ctx** %2, align 8
  br label %35

15:                                               ; preds = %1
  %16 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %17 = load %struct.pp_ctx*, %struct.pp_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %17, i32 0, i32 3
  store %struct.ntb_dev* %16, %struct.ntb_dev** %18, align 8
  %19 = load %struct.pp_ctx*, %struct.pp_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %19, i32 0, i32 2
  %21 = call i32 @atomic_set(i32* %20, i32 0)
  %22 = load %struct.pp_ctx*, %struct.pp_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %22, i32 0, i32 1
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load %struct.pp_ctx*, %struct.pp_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %25, i32 0, i32 0
  %27 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %28 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %29 = call i32 @hrtimer_init(%struct.TYPE_2__* %26, i32 %27, i32 %28)
  %30 = load i32, i32* @pp_timer_func, align 4
  %31 = load %struct.pp_ctx*, %struct.pp_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %struct.pp_ctx*, %struct.pp_ctx** %4, align 8
  store %struct.pp_ctx* %34, %struct.pp_ctx** %2, align 8
  br label %35

35:                                               ; preds = %15, %11
  %36 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  ret %struct.pp_ctx* %36
}

declare dso_local %struct.pp_ctx* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.pp_ctx* @ERR_PTR(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
