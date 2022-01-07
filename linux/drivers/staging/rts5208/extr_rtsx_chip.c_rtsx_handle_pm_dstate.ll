; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_handle_pm_dstate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_handle_pm_dstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"%04x set pm_dstate to %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"pm_dstate of function %d: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_chip*, i32)* @rtsx_handle_pm_dstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtsx_handle_pm_dstate(%struct.rtsx_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %8 = call i32 @rtsx_dev(%struct.rtsx_chip* %7)
  %9 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %10 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @dev_dbg(i32 %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %15 = call i64 @CHK_SDIO_EXIST(%struct.rtsx_chip* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %2
  %18 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %19 = call i64 @CHECK_PID(%struct.rtsx_chip* %18, i32 21128)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 2, i32* %6, align 4
  br label %23

22:                                               ; preds = %17
  store i32 1, i32* %6, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @rtsx_read_cfg_dw(%struct.rtsx_chip* %24, i32 %25, i32 132, i32* %5)
  %27 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %28 = call i32 @rtsx_dev(%struct.rtsx_chip* %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @dev_dbg(i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @rtsx_write_cfg_dw(%struct.rtsx_chip* %32, i32 %33, i32 132, i32 255, i32 %34)
  br label %36

36:                                               ; preds = %23, %2
  %37 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @rtsx_write_config_byte(%struct.rtsx_chip* %37, i32 68, i32 %38)
  %40 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %41 = call i32 @rtsx_write_config_byte(%struct.rtsx_chip* %40, i32 69, i32 0)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i64 @CHK_SDIO_EXIST(%struct.rtsx_chip*) #1

declare dso_local i64 @CHECK_PID(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_read_cfg_dw(%struct.rtsx_chip*, i32, i32, i32*) #1

declare dso_local i32 @rtsx_write_cfg_dw(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_write_config_byte(%struct.rtsx_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
