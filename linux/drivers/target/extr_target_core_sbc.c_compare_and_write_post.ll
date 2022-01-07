; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_sbc.c_compare_and_write_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_sbc.c_compare_and_write_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i64, i32, %struct.se_device* }
%struct.se_device = type { i32 }

@TCM_NO_SENSE = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i64 0, align 8
@TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*, i32, i32*)* @compare_and_write_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_and_write_post(%struct.se_cmd* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.se_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.se_device*, align 8
  %8 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %10 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %9, i32 0, i32 2
  %11 = load %struct.se_device*, %struct.se_device** %10, align 8
  store %struct.se_device* %11, %struct.se_device** %7, align 8
  %12 = load i32, i32* @TCM_NO_SENSE, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %13, i32 0, i32 1
  %15 = call i32 @spin_lock_irq(i32* %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load i32*, i32** %6, align 8
  store i32 1, i32* %19, align 4
  %20 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %21 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SAM_STAT_CHECK_CONDITION, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 4
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %25, %18
  br label %28

28:                                               ; preds = %27, %3
  %29 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %30 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %29, i32 0, i32 1
  %31 = call i32 @spin_unlock_irq(i32* %30)
  %32 = load %struct.se_device*, %struct.se_device** %7, align 8
  %33 = getelementptr inbounds %struct.se_device, %struct.se_device* %32, i32 0, i32 0
  %34 = call i32 @up(i32* %33)
  %35 = load i32, i32* %8, align 4
  ret i32 %35
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
