; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_whc-rc.c_whcrc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_whc-rc.c_whcrc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umc_dev = type { %struct.device }
%struct.device = type { i32 }
%struct.uwb_rc = type { i32, i32, i32, i32, i32 }
%struct.whcrc = type { %struct.uwb_rc*, %struct.umc_dev* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unable to allocate RC instance\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"unable to allocate WHC-RC instance\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Can't setup RC UMC interface: %d\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@whcrc_cmd = common dso_local global i32 0, align 4
@whcrc_reset = common dso_local global i32 0, align 4
@whcrc_start_rc = common dso_local global i32 0, align 4
@whcrc_stop_rc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.umc_dev*)* @whcrc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whcrc_probe(%struct.umc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.umc_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uwb_rc*, align 8
  %6 = alloca %struct.whcrc*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.umc_dev* %0, %struct.umc_dev** %3, align 8
  %8 = load %struct.umc_dev*, %struct.umc_dev** %3, align 8
  %9 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %7, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %4, align 4
  %12 = call %struct.uwb_rc* (...) @uwb_rc_alloc()
  store %struct.uwb_rc* %12, %struct.uwb_rc** %5, align 8
  %13 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %14 = icmp eq %struct.uwb_rc* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %79

18:                                               ; preds = %1
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.whcrc* @kzalloc(i32 16, i32 %19)
  store %struct.whcrc* %20, %struct.whcrc** %6, align 8
  %21 = load %struct.whcrc*, %struct.whcrc** %6, align 8
  %22 = icmp eq %struct.whcrc* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.device*, %struct.device** %7, align 8
  %25 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %76

26:                                               ; preds = %18
  %27 = load %struct.whcrc*, %struct.whcrc** %6, align 8
  %28 = call i32 @whcrc_init(%struct.whcrc* %27)
  %29 = load %struct.umc_dev*, %struct.umc_dev** %3, align 8
  %30 = load %struct.whcrc*, %struct.whcrc** %6, align 8
  %31 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %30, i32 0, i32 1
  store %struct.umc_dev* %29, %struct.umc_dev** %31, align 8
  %32 = load %struct.whcrc*, %struct.whcrc** %6, align 8
  %33 = call i32 @whcrc_setup_rc_umc(%struct.whcrc* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = load %struct.device*, %struct.device** %7, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  br label %73

40:                                               ; preds = %26
  %41 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %42 = load %struct.whcrc*, %struct.whcrc** %6, align 8
  %43 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %42, i32 0, i32 0
  store %struct.uwb_rc* %41, %struct.uwb_rc** %43, align 8
  %44 = load i32, i32* @THIS_MODULE, align 4
  %45 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %46 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @whcrc_cmd, align 4
  %48 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %49 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @whcrc_reset, align 4
  %51 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %52 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @whcrc_start_rc, align 4
  %54 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %55 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @whcrc_stop_rc, align 4
  %57 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %58 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %60 = load %struct.device*, %struct.device** %7, align 8
  %61 = load %struct.whcrc*, %struct.whcrc** %6, align 8
  %62 = call i32 @uwb_rc_add(%struct.uwb_rc* %59, %struct.device* %60, %struct.whcrc* %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %40
  br label %70

66:                                               ; preds = %40
  %67 = load %struct.umc_dev*, %struct.umc_dev** %3, align 8
  %68 = load %struct.whcrc*, %struct.whcrc** %6, align 8
  %69 = call i32 @umc_set_drvdata(%struct.umc_dev* %67, %struct.whcrc* %68)
  store i32 0, i32* %2, align 4
  br label %81

70:                                               ; preds = %65
  %71 = load %struct.whcrc*, %struct.whcrc** %6, align 8
  %72 = call i32 @whcrc_release_rc_umc(%struct.whcrc* %71)
  br label %73

73:                                               ; preds = %70, %36
  %74 = load %struct.whcrc*, %struct.whcrc** %6, align 8
  %75 = call i32 @kfree(%struct.whcrc* %74)
  br label %76

76:                                               ; preds = %73, %23
  %77 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %78 = call i32 @uwb_rc_put(%struct.uwb_rc* %77)
  br label %79

79:                                               ; preds = %76, %15
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %66
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.uwb_rc* @uwb_rc_alloc(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.whcrc* @kzalloc(i32, i32) #1

declare dso_local i32 @whcrc_init(%struct.whcrc*) #1

declare dso_local i32 @whcrc_setup_rc_umc(%struct.whcrc*) #1

declare dso_local i32 @uwb_rc_add(%struct.uwb_rc*, %struct.device*, %struct.whcrc*) #1

declare dso_local i32 @umc_set_drvdata(%struct.umc_dev*, %struct.whcrc*) #1

declare dso_local i32 @whcrc_release_rc_umc(%struct.whcrc*) #1

declare dso_local i32 @kfree(%struct.whcrc*) #1

declare dso_local i32 @uwb_rc_put(%struct.uwb_rc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
