; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_polling_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_polling_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i32, i64 }

@RTSX_STAT_SUSPEND = common dso_local global i32 0, align 4
@RTSX_STAT_DELINK = common dso_local global i32 0, align 4
@RTSX_STAT_SS = common dso_local global i32 0, align 4
@SD_MS_2LUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtsx_polling_func(%struct.rtsx_chip* %0) #0 {
  %2 = alloca %struct.rtsx_chip*, align 8
  %3 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %2, align 8
  %4 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %5 = load i32, i32* @RTSX_STAT_SUSPEND, align 4
  %6 = call i64 @rtsx_chk_stat(%struct.rtsx_chip* %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %79

9:                                                ; preds = %1
  %10 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %11 = load i32, i32* @RTSX_STAT_DELINK, align 4
  %12 = call i64 @rtsx_chk_stat(%struct.rtsx_chip* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %76

15:                                               ; preds = %9
  %16 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %17 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %22 = call i32 @rtsx_read_config_byte(%struct.rtsx_chip* %21, i32 0, i32* %3)
  br label %23

23:                                               ; preds = %20, %15
  %24 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %25 = load i32, i32* @RTSX_STAT_SS, align 4
  %26 = call i64 @rtsx_chk_stat(%struct.rtsx_chip* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %79

29:                                               ; preds = %23
  %30 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %31 = call i32 @rtsx_manage_ocp(%struct.rtsx_chip* %30)
  %32 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %33 = call i32 @rtsx_manage_sd_lock(%struct.rtsx_chip* %32)
  %34 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %35 = call i32 @rtsx_init_cards(%struct.rtsx_chip* %34)
  %36 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %37 = call i32 @rtsx_manage_ss(%struct.rtsx_chip* %36)
  %38 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %39 = call i32 @rtsx_manage_aspm(%struct.rtsx_chip* %38)
  %40 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %41 = call i32 @rtsx_manage_idle(%struct.rtsx_chip* %40)
  %42 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %43 = call i32 @rtsx_get_stat(%struct.rtsx_chip* %42)
  switch i32 %43, label %63 [
    i32 128, label %44
    i32 129, label %47
  ]

44:                                               ; preds = %29
  %45 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %46 = call i32 @do_remaining_work(%struct.rtsx_chip* %45)
  br label %64

47:                                               ; preds = %29
  %48 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %49 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %54 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %59 = call i32 @try_to_switch_sdio_ctrl(%struct.rtsx_chip* %58)
  br label %60

60:                                               ; preds = %57, %52, %47
  %61 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %62 = call i32 @rtsx_enable_aspm(%struct.rtsx_chip* %61)
  br label %64

63:                                               ; preds = %29
  br label %64

64:                                               ; preds = %63, %60, %44
  %65 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %66 = load i32, i32* @SD_MS_2LUN, align 4
  %67 = call i64 @CHECK_LUN_MODE(%struct.rtsx_chip* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %71 = call i32 @rtsx_manage_2lun_mode(%struct.rtsx_chip* %70)
  br label %75

72:                                               ; preds = %64
  %73 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %74 = call i32 @rtsx_manage_1lun_mode(%struct.rtsx_chip* %73)
  br label %75

75:                                               ; preds = %72, %69
  br label %76

76:                                               ; preds = %75, %14
  %77 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %78 = call i32 @rtsx_delink_stage(%struct.rtsx_chip* %77)
  br label %79

79:                                               ; preds = %76, %28, %8
  ret void
}

declare dso_local i64 @rtsx_chk_stat(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_read_config_byte(%struct.rtsx_chip*, i32, i32*) #1

declare dso_local i32 @rtsx_manage_ocp(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_manage_sd_lock(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_init_cards(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_manage_ss(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_manage_aspm(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_manage_idle(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_get_stat(%struct.rtsx_chip*) #1

declare dso_local i32 @do_remaining_work(%struct.rtsx_chip*) #1

declare dso_local i32 @try_to_switch_sdio_ctrl(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_enable_aspm(%struct.rtsx_chip*) #1

declare dso_local i64 @CHECK_LUN_MODE(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_manage_2lun_mode(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_manage_1lun_mode(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_delink_stage(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
