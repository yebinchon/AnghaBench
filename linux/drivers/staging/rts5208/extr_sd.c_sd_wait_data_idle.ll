; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_wait_data_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_wait_data_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@STATUS_TIMEDOUT = common dso_local global i32 0, align 4
@SD_DATA_STATE = common dso_local global i32 0, align 4
@SD_DATA_IDLE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"SD_DATA_STATE: 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @sd_wait_data_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_wait_data_idle(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %7 = load i32, i32* @STATUS_TIMEDOUT, align 4
  store i32 %7, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %28, %1
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 100
  br i1 %10, label %11, label %31

11:                                               ; preds = %8
  %12 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %13 = load i32, i32* @SD_DATA_STATE, align 4
  %14 = call i32 @rtsx_read_register(%struct.rtsx_chip* %12, i32 %13, i32* %6)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %37

19:                                               ; preds = %11
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @SD_DATA_IDLE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %25, i32* %4, align 4
  br label %31

26:                                               ; preds = %19
  %27 = call i32 @udelay(i32 100)
  br label %28

28:                                               ; preds = %26
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %8

31:                                               ; preds = %24, %8
  %32 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %33 = call i32 @rtsx_dev(%struct.rtsx_chip* %32)
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @dev_dbg(i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %31, %17
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @rtsx_read_register(%struct.rtsx_chip*, i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
