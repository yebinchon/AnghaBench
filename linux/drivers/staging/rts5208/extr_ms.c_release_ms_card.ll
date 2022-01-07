; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_release_ms_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_release_ms_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i32, i32, %struct.ms_info }
%struct.ms_info = type { i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MS_CARD = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @release_ms_card(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca %struct.ms_info*, align 8
  %5 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %6 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %7 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %6, i32 0, i32 3
  store %struct.ms_info* %7, %struct.ms_info** %4, align 8
  %8 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %9 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @MS_CARD, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %13 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load i32, i32* @MS_CARD, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %19 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @MS_CARD, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %25 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %29 = call i32 @ms_free_l2p_tbl(%struct.rtsx_chip* %28)
  %30 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %31 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memset(i32 %32, i32 0, i32 96)
  %34 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %35 = call i32 @ms_power_off_card3v3(%struct.rtsx_chip* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @STATUS_SUCCESS, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %1
  %40 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %40, i32* %2, align 4
  br label %43

41:                                               ; preds = %1
  %42 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @ms_free_l2p_tbl(%struct.rtsx_chip*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ms_power_off_card3v3(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
