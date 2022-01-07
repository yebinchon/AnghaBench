; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_release_sd_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_release_sd_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i64, i64, i32, i32, i32, %struct.sd_info }
%struct.sd_info = type { i32, i32, i64, i64 }

@SD_CARD = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @release_sd_card(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca %struct.sd_info*, align 8
  %5 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %6 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %7 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %6, i32 0, i32 5
  store %struct.sd_info* %7, %struct.sd_info** %4, align 8
  %8 = load i32, i32* @SD_CARD, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %11 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load i32, i32* @SD_CARD, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %17 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* @SD_CARD, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %23 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %27 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %29 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %31 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memset(i32 %32, i32 0, i32 16)
  %34 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %35 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @memset(i32 %36, i32 0, i32 8)
  %38 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %39 = call i32 @sd_power_off_card3v3(%struct.rtsx_chip* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @STATUS_SUCCESS, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %1
  %44 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %44, i32* %2, align 4
  br label %47

45:                                               ; preds = %1
  %46 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @sd_power_off_card3v3(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
