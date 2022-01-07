; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_rtsx_power_off_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_rtsx_power_off_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i64 }

@SD_CARD = common dso_local global i32 0, align 4
@XD_CARD = common dso_local global i32 0, align 4
@MS_CARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtsx_power_off_card(%struct.rtsx_chip* %0) #0 {
  %2 = alloca %struct.rtsx_chip*, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %2, align 8
  %3 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %4 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @SD_CARD, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %11 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9, %1
  %15 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %16 = call i32 @sd_cleanup_work(%struct.rtsx_chip* %15)
  %17 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %18 = call i32 @sd_power_off_card3v3(%struct.rtsx_chip* %17)
  br label %19

19:                                               ; preds = %14, %9
  %20 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %21 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @XD_CARD, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %28 = call i32 @xd_cleanup_work(%struct.rtsx_chip* %27)
  %29 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %30 = call i32 @xd_power_off_card3v3(%struct.rtsx_chip* %29)
  br label %31

31:                                               ; preds = %26, %19
  %32 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %33 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MS_CARD, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %40 = call i32 @ms_cleanup_work(%struct.rtsx_chip* %39)
  %41 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %42 = call i32 @ms_power_off_card3v3(%struct.rtsx_chip* %41)
  br label %43

43:                                               ; preds = %38, %31
  ret void
}

declare dso_local i32 @sd_cleanup_work(%struct.rtsx_chip*) #1

declare dso_local i32 @sd_power_off_card3v3(%struct.rtsx_chip*) #1

declare dso_local i32 @xd_cleanup_work(%struct.rtsx_chip*) #1

declare dso_local i32 @xd_power_off_card3v3(%struct.rtsx_chip*) #1

declare dso_local i32 @ms_cleanup_work(%struct.rtsx_chip*) #1

declare dso_local i32 @ms_power_off_card3v3(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
