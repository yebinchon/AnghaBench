; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_wait_if_ctrl_blocked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_wait_if_ctrl_blocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32, i32 }

@NO_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pqi_ctrl_info*, i64)* @pqi_wait_if_ctrl_blocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pqi_wait_if_ctrl_blocked(%struct.pqi_ctrl_info* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pqi_ctrl_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %9 = call i32 @pqi_ctrl_blocked(%struct.pqi_ctrl_info* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  store i64 %12, i64* %3, align 8
  br label %50

13:                                               ; preds = %2
  %14 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %15 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %14, i32 0, i32 0
  %16 = call i32 @atomic_inc(i32* %15)
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @NO_TIMEOUT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %13
  %21 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %22 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %25 = call i32 @pqi_ctrl_blocked(%struct.pqi_ctrl_info* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @wait_event(i32 %23, i32 %28)
  %30 = load i64, i64* %5, align 8
  store i64 %30, i64* %6, align 8
  br label %45

31:                                               ; preds = %13
  %32 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %33 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %36 = call i32 @pqi_ctrl_blocked(%struct.pqi_ctrl_info* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @msecs_to_jiffies(i64 %40)
  %42 = call i64 @wait_event_timeout(i32 %34, i32 %39, i32 %41)
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i64 @jiffies_to_msecs(i64 %43)
  store i64 %44, i64* %6, align 8
  br label %45

45:                                               ; preds = %31, %20
  %46 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %47 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %46, i32 0, i32 0
  %48 = call i32 @atomic_dec(i32* %47)
  %49 = load i64, i64* %6, align 8
  store i64 %49, i64* %3, align 8
  br label %50

50:                                               ; preds = %45, %11
  %51 = load i64, i64* %3, align 8
  ret i64 %51
}

declare dso_local i32 @pqi_ctrl_blocked(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

declare dso_local i64 @jiffies_to_msecs(i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
