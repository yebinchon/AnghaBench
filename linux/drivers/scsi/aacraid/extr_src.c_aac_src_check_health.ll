; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_src.c_aac_src_check_health.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_src.c_aac_src_check_health.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.aac_dev = type { i32 }

@MUnit = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@KERNEL_PANIC = common dso_local global i32 0, align 4
@SELF_TEST_FAILED = common dso_local global i32 0, align 4
@MONITOR_PANIC = common dso_local global i32 0, align 4
@KERNEL_UP_AND_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_dev*)* @aac_src_check_health to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_src_check_health(%struct.aac_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aac_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.aac_dev* %0, %struct.aac_dev** %3, align 8
  %5 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 0), align 4
  %7 = call i32 @src_readl(%struct.aac_dev* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @KERNEL_PANIC, align 4
  %10 = and i32 %8, %9
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %40

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @SELF_TEST_FAILED, align 4
  %17 = and i32 %15, %16
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %39

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @MONITOR_PANIC, align 4
  %24 = and i32 %22, %23
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %39

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @KERNEL_UP_AND_RUNNING, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32 -3, i32* %2, align 4
  br label %44

38:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %44

39:                                               ; preds = %27, %20
  store i32 -1, i32* %2, align 4
  br label %44

40:                                               ; preds = %13
  %41 = load i32, i32* %4, align 4
  %42 = ashr i32 %41, 16
  %43 = and i32 %42, 255
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %40, %39, %38, %37
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @src_readl(%struct.aac_dev*, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
