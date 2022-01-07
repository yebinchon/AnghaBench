; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_enable_aspm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_enable_aspm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i32, i32*, i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"Try to enable ASPM\0A\00", align 1
@ASPM_FORCE_CTL = common dso_local global i32 0, align 4
@LCTLR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtsx_enable_aspm(%struct.rtsx_chip* %0) #0 {
  %2 = alloca %struct.rtsx_chip*, align 8
  %3 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %2, align 8
  %4 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %5 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %74

8:                                                ; preds = %1
  %9 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %10 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %74

13:                                               ; preds = %8
  %14 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %15 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %74, label %18

18:                                               ; preds = %13
  %19 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %20 = call i32 @rtsx_dev(%struct.rtsx_chip* %19)
  %21 = call i32 @dev_dbg(i32 %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %23 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %25 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %18
  %29 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %30 = call i64 @CHECK_PID(%struct.rtsx_chip* %29, i32 21000)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %34 = call i32 @rtsx_write_phy_register(%struct.rtsx_chip* %33, i32 7, i32 0)
  br label %35

35:                                               ; preds = %32, %28, %18
  %36 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %37 = call i64 @CHECK_PID(%struct.rtsx_chip* %36, i32 21000)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %41 = load i32, i32* @ASPM_FORCE_CTL, align 4
  %42 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %43 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 48, %46
  %48 = call i32 @rtsx_write_register(%struct.rtsx_chip* %40, i32 %41, i32 243, i32 %47)
  br label %56

49:                                               ; preds = %35
  %50 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %51 = load i32, i32* @LCTLR, align 4
  %52 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %53 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @rtsx_write_config_byte(%struct.rtsx_chip* %50, i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %49, %39
  %57 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %58 = call i64 @CHK_SDIO_EXIST(%struct.rtsx_chip* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %62 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, 256
  store i32 %64, i32* %3, align 4
  %65 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %66 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %67 = call i64 @CHECK_PID(%struct.rtsx_chip* %66, i32 21128)
  %68 = icmp ne i64 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 2, i32 1
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @rtsx_write_cfg_dw(%struct.rtsx_chip* %65, i32 %70, i32 192, i32 4095, i32 %71)
  br label %73

73:                                               ; preds = %60, %56
  br label %74

74:                                               ; preds = %73, %13, %8, %1
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i64 @CHECK_PID(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_write_phy_register(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @rtsx_write_config_byte(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i64 @CHK_SDIO_EXIST(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_write_cfg_dw(%struct.rtsx_chip*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
