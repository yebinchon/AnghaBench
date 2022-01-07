; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_manage_ss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_manage_ss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i32, i64 }

@RTSX_STAT_IDLE = common dso_local global i64 0, align 8
@POLLING_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_chip*)* @rtsx_manage_ss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtsx_manage_ss(%struct.rtsx_chip* %0) #0 {
  %2 = alloca %struct.rtsx_chip*, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %2, align 8
  %3 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %4 = call i32 @rtsx_is_ss_allowed(%struct.rtsx_chip* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %8 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %1
  br label %38

12:                                               ; preds = %6
  %13 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %14 = call i64 @rtsx_get_stat(%struct.rtsx_chip* %13)
  %15 = load i64, i64* @RTSX_STAT_IDLE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %19 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  br label %38

20:                                               ; preds = %12
  %21 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %22 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %25 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @POLLING_INTERVAL, align 4
  %28 = sdiv i32 %26, %27
  %29 = icmp slt i32 %23, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %32 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  br label %38

35:                                               ; preds = %20
  %36 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %37 = call i32 @rtsx_exclusive_enter_ss(%struct.rtsx_chip* %36)
  br label %38

38:                                               ; preds = %11, %17, %35, %30
  ret void
}

declare dso_local i32 @rtsx_is_ss_allowed(%struct.rtsx_chip*) #1

declare dso_local i64 @rtsx_get_stat(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_exclusive_enter_ss(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
