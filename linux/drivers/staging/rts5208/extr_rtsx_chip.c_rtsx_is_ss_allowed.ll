; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_is_ss_allowed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_is_ss_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @rtsx_is_ss_allowed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsx_is_ss_allowed(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %5 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %6 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %11 = call i64 @CHECK_PID(%struct.rtsx_chip* %10, i32 21128)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %1
  store i32 0, i32* %2, align 4
  br label %31

14:                                               ; preds = %9
  %15 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %16 = call i64 @CHK_SDIO_EXIST(%struct.rtsx_chip* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %20 = call i32 @CHK_SDIO_IGNORED(%struct.rtsx_chip* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %24 = call i32 @rtsx_read_cfg_dw(%struct.rtsx_chip* %23, i32 1, i32 4, i32* %4)
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 7
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %31

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %18, %14
  store i32 1, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %28, %13
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @CHECK_PID(%struct.rtsx_chip*, i32) #1

declare dso_local i64 @CHK_SDIO_EXIST(%struct.rtsx_chip*) #1

declare dso_local i32 @CHK_SDIO_IGNORED(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_read_cfg_dw(%struct.rtsx_chip*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
