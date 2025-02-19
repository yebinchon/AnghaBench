; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_cleanup_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_cleanup_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.ms_info }
%struct.ms_info = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"MS Pro: stop transmission\0A\00", align 1
@MS_CFG = common dso_local global i32 0, align 4
@MS_2K_SECTOR_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ms_cleanup_work(%struct.rtsx_chip* %0) #0 {
  %2 = alloca %struct.rtsx_chip*, align 8
  %3 = alloca %struct.ms_info*, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %2, align 8
  %4 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %5 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %4, i32 0, i32 0
  store %struct.ms_info* %5, %struct.ms_info** %3, align 8
  %6 = load %struct.ms_info*, %struct.ms_info** %3, align 8
  %7 = call i64 @CHK_MSPRO(%struct.ms_info* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %1
  %10 = load %struct.ms_info*, %struct.ms_info** %3, align 8
  %11 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %16 = call i32 @rtsx_dev(%struct.rtsx_chip* %15)
  %17 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %19 = call i32 @mspro_stop_seq_mode(%struct.rtsx_chip* %18)
  %20 = load %struct.ms_info*, %struct.ms_info** %3, align 8
  %21 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %14, %9
  %23 = load %struct.ms_info*, %struct.ms_info** %3, align 8
  %24 = call i64 @CHK_MSHG(%struct.ms_info* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %28 = load i32, i32* @MS_CFG, align 4
  %29 = load i32, i32* @MS_2K_SECTOR_MODE, align 4
  %30 = call i32 @rtsx_write_register(%struct.rtsx_chip* %27, i32 %28, i32 %29, i32 0)
  br label %31

31:                                               ; preds = %26, %22
  br label %32

32:                                               ; preds = %31, %1
  ret void
}

declare dso_local i64 @CHK_MSPRO(%struct.ms_info*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @mspro_stop_seq_mode(%struct.rtsx_chip*) #1

declare dso_local i64 @CHK_MSHG(%struct.ms_info*) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
