; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_poll_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_poll_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@CHECK_REG_CMD = common dso_local global i32 0, align 4
@MS_TRANS_CFG = common dso_local global i32 0, align 4
@MS_INT_CED = common dso_local global i32 0, align 4
@MS_CARD = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@MS_INT_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @ms_poll_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_poll_int(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %6 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %7 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %6)
  %8 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %9 = load i32, i32* @CHECK_REG_CMD, align 4
  %10 = load i32, i32* @MS_TRANS_CFG, align 4
  %11 = load i32, i32* @MS_INT_CED, align 4
  %12 = load i32, i32* @MS_INT_CED, align 4
  %13 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %8, i32 %9, i32 %10, i32 %11, i32 %12)
  %14 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %15 = load i32, i32* @MS_CARD, align 4
  %16 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %14, i32 %15, i32 5000)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @STATUS_SUCCESS, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %21, i32* %2, align 4
  br label %34

22:                                               ; preds = %1
  %23 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %24 = call i32* @rtsx_get_cmd_data(%struct.rtsx_chip* %23)
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @MS_INT_ERR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %31, i32* %2, align 4
  br label %34

32:                                               ; preds = %22
  %33 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %30, %20
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_send_cmd(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32* @rtsx_get_cmd_data(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
