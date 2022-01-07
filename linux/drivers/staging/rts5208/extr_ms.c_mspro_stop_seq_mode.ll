; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_mspro_stop_seq_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_mspro_stop_seq_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.ms_info }
%struct.ms_info = type { i64, i64 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@PRO_STOP = common dso_local global i32 0, align 4
@WAIT_INT = common dso_local global i32 0, align 4
@RBCTL = common dso_local global i32 0, align 4
@RB_FLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mspro_stop_seq_mode(%struct.rtsx_chip* %0) #0 {
  %2 = alloca %struct.rtsx_chip*, align 8
  %3 = alloca %struct.ms_info*, align 8
  %4 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %2, align 8
  %5 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %6 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %5, i32 0, i32 0
  store %struct.ms_info* %6, %struct.ms_info** %3, align 8
  %7 = load %struct.ms_info*, %struct.ms_info** %3, align 8
  %8 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %1
  %12 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %13 = call i32 @ms_switch_clock(%struct.rtsx_chip* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @STATUS_SUCCESS, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %32

18:                                               ; preds = %11
  %19 = load %struct.ms_info*, %struct.ms_info** %3, align 8
  %20 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.ms_info*, %struct.ms_info** %3, align 8
  %22 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %24 = load i32, i32* @PRO_STOP, align 4
  %25 = load i32, i32* @WAIT_INT, align 4
  %26 = call i32 @ms_send_cmd(%struct.rtsx_chip* %23, i32 %24, i32 %25)
  %27 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %28 = load i32, i32* @RBCTL, align 4
  %29 = load i32, i32* @RB_FLUSH, align 4
  %30 = load i32, i32* @RB_FLUSH, align 4
  %31 = call i32 @rtsx_write_register(%struct.rtsx_chip* %27, i32 %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %17, %18, %1
  ret void
}

declare dso_local i32 @ms_switch_clock(%struct.rtsx_chip*) #1

declare dso_local i32 @ms_send_cmd(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
