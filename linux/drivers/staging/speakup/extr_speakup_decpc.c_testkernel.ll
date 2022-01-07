; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_decpc.c_testkernel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_decpc.c_testkernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@CMD_sync = common dso_local global i32 0, align 4
@STAT_cmd_ready = common dso_local global i32 0, align 4
@dt_stat = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"dec_pc at 0x%x, software not loaded\0A\00", align 1
@speakup_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SYNTH_IO_EXTENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @testkernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @testkernel() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = call i32 (...) @dt_getstatus()
  %4 = icmp eq i32 %3, 65535
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 -1, i32* %2, align 4
  br label %27

6:                                                ; preds = %0
  %7 = load i32, i32* @CMD_sync, align 4
  %8 = call i32 @dt_sendcmd(i32 %7)
  %9 = load i32, i32* @STAT_cmd_ready, align 4
  %10 = call i32 @dt_waitbit(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  store i32 -2, i32* %2, align 4
  br label %26

13:                                               ; preds = %6
  %14 = load i32, i32* @dt_stat, align 4
  %15 = and i32 %14, 32768
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %32

18:                                               ; preds = %13
  %19 = load i32, i32* @dt_stat, align 4
  %20 = icmp eq i32 %19, 3564
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), align 8
  %23 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %22)
  br label %24

24:                                               ; preds = %21, %18
  br label %25

25:                                               ; preds = %24
  br label %26

26:                                               ; preds = %25, %12
  store i32 -3, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %5
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), align 8
  %29 = load i32, i32* @SYNTH_IO_EXTENT, align 4
  %30 = call i32 @synth_release_region(i64 %28, i32 %29)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), align 8
  %31 = load i32, i32* %2, align 4
  store i32 %31, i32* %1, align 4
  br label %32

32:                                               ; preds = %27, %17
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local i32 @dt_getstatus(...) #1

declare dso_local i32 @dt_sendcmd(i32) #1

declare dso_local i32 @dt_waitbit(i32) #1

declare dso_local i32 @pr_warn(i8*, i64) #1

declare dso_local i32 @synth_release_region(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
