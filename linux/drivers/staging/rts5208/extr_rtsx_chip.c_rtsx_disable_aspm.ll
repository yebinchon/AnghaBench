; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_disable_aspm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_disable_aspm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c"Try to disable ASPM\0A\00", align 1
@ASPM_FORCE_CTL = common dso_local global i32 0, align 4
@LCTLR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtsx_disable_aspm(%struct.rtsx_chip* %0) #0 {
  %2 = alloca %struct.rtsx_chip*, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %2, align 8
  %3 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %4 = call i64 @CHECK_PID(%struct.rtsx_chip* %3, i32 21000)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %8 = call i32 @rtsx_monitor_aspm_config(%struct.rtsx_chip* %7)
  br label %9

9:                                                ; preds = %6, %1
  %10 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %11 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %55

14:                                               ; preds = %9
  %15 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %16 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %55

19:                                               ; preds = %14
  %20 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %21 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %19
  %25 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %26 = call i32 @rtsx_dev(%struct.rtsx_chip* %25)
  %27 = call i32 @dev_dbg(i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %29 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %31 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %24
  %35 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %36 = call i64 @CHECK_PID(%struct.rtsx_chip* %35, i32 21000)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %40 = call i32 @rtsx_write_phy_register(%struct.rtsx_chip* %39, i32 7, i32 297)
  br label %41

41:                                               ; preds = %38, %34, %24
  %42 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %43 = call i64 @CHECK_PID(%struct.rtsx_chip* %42, i32 21000)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %47 = load i32, i32* @ASPM_FORCE_CTL, align 4
  %48 = call i32 @rtsx_write_register(%struct.rtsx_chip* %46, i32 %47, i32 243, i32 48)
  br label %53

49:                                               ; preds = %41
  %50 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %51 = load i32, i32* @LCTLR, align 4
  %52 = call i32 @rtsx_write_config_byte(%struct.rtsx_chip* %50, i32 %51, i32 0)
  br label %53

53:                                               ; preds = %49, %45
  %54 = call i32 @wait_timeout(i32 1)
  br label %55

55:                                               ; preds = %53, %19, %14, %9
  ret void
}

declare dso_local i64 @CHECK_PID(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_monitor_aspm_config(%struct.rtsx_chip*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_write_phy_register(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @rtsx_write_config_byte(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @wait_timeout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
