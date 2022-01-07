; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_decpc.c_dt_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_decpc.c_dt_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@STAT_cmd_ready = common dso_local global i32 0, align 4
@speakup_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CMD_control = common dso_local global i32 0, align 4
@CMD_null = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dt_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_ctrl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 10, i32* %4, align 4
  %5 = load i32, i32* @STAT_cmd_ready, align 4
  %6 = call i32 @dt_waitbit(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %39

9:                                                ; preds = %1
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), align 8
  %11 = add nsw i64 %10, 2
  %12 = call i32 @outb_p(i32 0, i64 %11)
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), align 8
  %14 = add nsw i64 %13, 3
  %15 = call i32 @outb_p(i32 0, i64 %14)
  %16 = call i32 (...) @dt_getstatus()
  %17 = load i32, i32* @CMD_control, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @dt_sendcmd(i32 %19)
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), align 8
  %22 = add nsw i64 %21, 6
  %23 = call i32 @outb_p(i32 0, i64 %22)
  br label %24

24:                                               ; preds = %35, %9
  %25 = call i32 (...) @dt_getstatus()
  %26 = load i32, i32* @STAT_cmd_ready, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = call i32 @udelay(i32 20)
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %4, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %36

35:                                               ; preds = %29
  br label %24

36:                                               ; preds = %34, %24
  %37 = load i32, i32* @CMD_null, align 4
  %38 = call i32 @dt_sendcmd(i32 %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %36, %8
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @dt_waitbit(i32) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @dt_getstatus(...) #1

declare dso_local i32 @dt_sendcmd(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
