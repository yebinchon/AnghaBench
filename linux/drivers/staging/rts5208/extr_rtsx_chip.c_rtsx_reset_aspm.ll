; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_reset_aspm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_reset_aspm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i32, i32*, i64 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@ASPM_FORCE_CTL = common dso_local global i32 0, align 4
@LCTLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @rtsx_reset_aspm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsx_reset_aspm(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %5 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %6 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %1
  %10 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %11 = call i64 @CHK_SDIO_EXIST(%struct.rtsx_chip* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %15 = call i64 @CHECK_PID(%struct.rtsx_chip* %14, i32 21128)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13, %9
  %18 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %18, i32* %2, align 4
  br label %96

19:                                               ; preds = %13
  %20 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %21 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %22 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @rtsx_write_cfg_dw(%struct.rtsx_chip* %20, i32 2, i32 192, i32 255, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @STATUS_SUCCESS, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %29, i32* %2, align 4
  br label %96

30:                                               ; preds = %19
  %31 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %31, i32* %2, align 4
  br label %96

32:                                               ; preds = %1
  %33 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %34 = call i64 @CHECK_PID(%struct.rtsx_chip* %33, i32 21000)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %38 = load i32, i32* @ASPM_FORCE_CTL, align 4
  %39 = call i32 @rtsx_write_register(%struct.rtsx_chip* %37, i32 %38, i32 255, i32 63)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %96

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %32
  %46 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %47 = load i32, i32* @LCTLR, align 4
  %48 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %49 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @rtsx_write_config_byte(%struct.rtsx_chip* %46, i32 %47, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @STATUS_SUCCESS, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %56, i32* %2, align 4
  br label %96

57:                                               ; preds = %45
  %58 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %59 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %62 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %60, i32* %64, align 4
  %65 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %66 = call i64 @CHK_SDIO_EXIST(%struct.rtsx_chip* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %92

68:                                               ; preds = %57
  %69 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %70 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %73 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 %71, i32* %75, align 4
  %76 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %77 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %78 = call i64 @CHECK_PID(%struct.rtsx_chip* %77, i32 21128)
  %79 = icmp ne i64 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 2, i32 1
  %82 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %83 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @rtsx_write_cfg_dw(%struct.rtsx_chip* %76, i32 %81, i32 192, i32 255, i32 %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @STATUS_SUCCESS, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %68
  %90 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %90, i32* %2, align 4
  br label %96

91:                                               ; preds = %68
  br label %92

92:                                               ; preds = %91, %57
  %93 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %94 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  %95 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %92, %89, %55, %42, %30, %28, %17
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i64 @CHK_SDIO_EXIST(%struct.rtsx_chip*) #1

declare dso_local i64 @CHECK_PID(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_write_cfg_dw(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @rtsx_write_config_byte(%struct.rtsx_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
