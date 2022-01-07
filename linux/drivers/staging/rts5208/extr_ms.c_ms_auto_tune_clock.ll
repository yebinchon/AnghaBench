; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_auto_tune_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_auto_tune_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i64, %struct.ms_info }
%struct.ms_info = type { i32 }

@CLK_80 = common dso_local global i32 0, align 4
@CLK_60 = common dso_local global i32 0, align 4
@CLK_40 = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @ms_auto_tune_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_auto_tune_clock(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca %struct.ms_info*, align 8
  %5 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %6 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %7 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %6, i32 0, i32 1
  store %struct.ms_info* %7, %struct.ms_info** %4, align 8
  %8 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %9 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %14 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 30
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %19 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 20
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %17, %12
  br label %45

23:                                               ; preds = %1
  %24 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %25 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CLK_80, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* @CLK_60, align 4
  %31 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %32 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %44

33:                                               ; preds = %23
  %34 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %35 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CLK_60, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* @CLK_40, align 4
  %41 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %42 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %33
  br label %44

44:                                               ; preds = %43, %29
  br label %45

45:                                               ; preds = %44, %22
  %46 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %47 = call i32 @ms_switch_clock(%struct.rtsx_chip* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @STATUS_SUCCESS, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %52, i32* %2, align 4
  br label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @ms_switch_clock(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
