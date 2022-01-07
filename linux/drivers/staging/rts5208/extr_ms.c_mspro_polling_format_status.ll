; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_mspro_polling_format_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_mspro_polling_format_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.ms_info }
%struct.ms_info = type { i64, i64 }

@RTSX_STAT_SS = common dso_local global i64 0, align 8
@RTSX_STAT_RUN = common dso_local global i32 0, align 4
@MS_SHORT_DATA_LEN = common dso_local global i32 0, align 4
@FORMAT_IN_PROGRESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mspro_polling_format_status(%struct.rtsx_chip* %0) #0 {
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
  br i1 %10, label %11, label %38

11:                                               ; preds = %1
  %12 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %13 = call i64 @rtsx_get_stat(%struct.rtsx_chip* %12)
  %14 = load i64, i64* @RTSX_STAT_SS, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %11
  %17 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %18 = load i32, i32* @RTSX_STAT_RUN, align 4
  %19 = call i32 @rtsx_set_stat(%struct.rtsx_chip* %17, i32 %18)
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %34, %16
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 65535
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %25 = load i32, i32* @MS_SHORT_DATA_LEN, align 4
  %26 = call i32 @mspro_read_format_progress(%struct.rtsx_chip* %24, i32 %25)
  %27 = load %struct.ms_info*, %struct.ms_info** %3, align 8
  %28 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @FORMAT_IN_PROGRESS, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %37

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %20

37:                                               ; preds = %32, %20
  br label %38

38:                                               ; preds = %37, %11, %1
  ret void
}

declare dso_local i64 @rtsx_get_stat(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_set_stat(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @mspro_read_format_progress(%struct.rtsx_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
