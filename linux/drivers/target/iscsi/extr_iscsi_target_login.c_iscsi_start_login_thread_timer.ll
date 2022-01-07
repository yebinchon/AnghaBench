; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsi_start_login_thread_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsi_start_login_thread_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_np = type { i32, i32, i32 }

@ISCSI_TF_STOP = common dso_local global i32 0, align 4
@ISCSI_TF_RUNNING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TA_LOGIN_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Added timeout timer to iSCSI login request for %u seconds.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_np*)* @iscsi_start_login_thread_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_start_login_thread_timer(%struct.iscsi_np* %0) #0 {
  %2 = alloca %struct.iscsi_np*, align 8
  store %struct.iscsi_np* %0, %struct.iscsi_np** %2, align 8
  %3 = load %struct.iscsi_np*, %struct.iscsi_np** %2, align 8
  %4 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %3, i32 0, i32 0
  %5 = call i32 @spin_lock_bh(i32* %4)
  %6 = load i32, i32* @ISCSI_TF_STOP, align 4
  %7 = xor i32 %6, -1
  %8 = load %struct.iscsi_np*, %struct.iscsi_np** %2, align 8
  %9 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @ISCSI_TF_RUNNING, align 4
  %13 = load %struct.iscsi_np*, %struct.iscsi_np** %2, align 8
  %14 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.iscsi_np*, %struct.iscsi_np** %2, align 8
  %18 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %17, i32 0, i32 1
  %19 = load i64, i64* @jiffies, align 8
  %20 = load i32, i32* @TA_LOGIN_TIMEOUT, align 4
  %21 = load i32, i32* @HZ, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %19, %23
  %25 = call i32 @mod_timer(i32* %18, i64 %24)
  %26 = load i32, i32* @TA_LOGIN_TIMEOUT, align 4
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.iscsi_np*, %struct.iscsi_np** %2, align 8
  %29 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock_bh(i32* %29)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
