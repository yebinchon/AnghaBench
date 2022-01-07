; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_auto_tune_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_auto_tune_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i64, %struct.sd_info }
%struct.sd_info = type { i32 }

@CLK_50 = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @sd_auto_tune_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_auto_tune_clock(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca %struct.sd_info*, align 8
  %5 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %6 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %7 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %6, i32 0, i32 1
  store %struct.sd_info* %7, %struct.sd_info** %4, align 8
  %8 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %9 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %14 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 30
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %19 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 20
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %17, %12
  br label %48

23:                                               ; preds = %1
  %24 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %25 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %46 [
    i32 130, label %27
    i32 131, label %30
    i32 132, label %33
    i32 133, label %36
    i32 128, label %39
    i32 129, label %42
  ]

27:                                               ; preds = %23
  %28 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %29 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %28, i32 0, i32 0
  store i32 131, i32* %29, align 4
  br label %47

30:                                               ; preds = %23
  %31 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %32 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %31, i32 0, i32 0
  store i32 132, i32* %32, align 4
  br label %47

33:                                               ; preds = %23
  %34 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %35 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %34, i32 0, i32 0
  store i32 133, i32* %35, align 4
  br label %47

36:                                               ; preds = %23
  %37 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %38 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %37, i32 0, i32 0
  store i32 128, i32* %38, align 4
  br label %47

39:                                               ; preds = %23
  %40 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %41 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %40, i32 0, i32 0
  store i32 129, i32* %41, align 4
  br label %47

42:                                               ; preds = %23
  %43 = load i32, i32* @CLK_50, align 4
  %44 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %45 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %47

46:                                               ; preds = %23
  br label %47

47:                                               ; preds = %46, %42, %39, %36, %33, %30, %27
  br label %48

48:                                               ; preds = %47, %22
  %49 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %50 = call i32 @sd_switch_clock(%struct.rtsx_chip* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @STATUS_SUCCESS, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %55, i32* %2, align 4
  br label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @sd_switch_clock(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
