; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_ie.c_uwb_rc_set_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_ie.c_uwb_rc_set_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.uwb_rc_cmd_set_ie = type { i32, i32 }
%struct.uwb_rc_evt_set_ie = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@UWB_RC_CET_GENERAL = common dso_local global i32 0, align 4
@UWB_RC_CMD_SET_IE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"SET-IE\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"SET-IE: not enough data to decode reply (%d bytes received vs %zu needed)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@UWB_RC_RES_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"SET-IE: command execution failed: %s (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uwb_rc_set_ie(%struct.uwb_rc* %0, %struct.uwb_rc_cmd_set_ie* %1) #0 {
  %3 = alloca %struct.uwb_rc*, align 8
  %4 = alloca %struct.uwb_rc_cmd_set_ie*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.uwb_rc_evt_set_ie, align 4
  store %struct.uwb_rc* %0, %struct.uwb_rc** %3, align 8
  store %struct.uwb_rc_cmd_set_ie* %1, %struct.uwb_rc_cmd_set_ie** %4, align 8
  %8 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %9 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load i32, i32* @UWB_RC_CET_GENERAL, align 4
  %12 = getelementptr inbounds %struct.uwb_rc_evt_set_ie, %struct.uwb_rc_evt_set_ie* %7, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @UWB_RC_CMD_SET_IE, align 4
  %15 = getelementptr inbounds %struct.uwb_rc_evt_set_ie, %struct.uwb_rc_evt_set_ie* %7, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %18 = load %struct.uwb_rc_cmd_set_ie*, %struct.uwb_rc_cmd_set_ie** %4, align 8
  %19 = getelementptr inbounds %struct.uwb_rc_cmd_set_ie, %struct.uwb_rc_cmd_set_ie* %18, i32 0, i32 1
  %20 = load %struct.uwb_rc_cmd_set_ie*, %struct.uwb_rc_cmd_set_ie** %4, align 8
  %21 = getelementptr inbounds %struct.uwb_rc_cmd_set_ie, %struct.uwb_rc_cmd_set_ie* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @le16_to_cpu(i32 %22)
  %24 = add i64 8, %23
  %25 = getelementptr inbounds %struct.uwb_rc_evt_set_ie, %struct.uwb_rc_evt_set_ie* %7, i32 0, i32 1
  %26 = call i32 @uwb_rc_cmd(%struct.uwb_rc* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %19, i64 %24, %struct.TYPE_4__* %25, i32 12)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %59

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 12
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 12)
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %57

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.uwb_rc_evt_set_ie, %struct.uwb_rc_evt_set_ie* %7, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @UWB_RC_RES_SUCCESS, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = getelementptr inbounds %struct.uwb_rc_evt_set_ie, %struct.uwb_rc_evt_set_ie* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @uwb_rc_strerror(i32 %48)
  %50 = getelementptr inbounds %struct.uwb_rc_evt_set_ie, %struct.uwb_rc_evt_set_ie* %7, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %51)
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %56

55:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %45
  br label %57

57:                                               ; preds = %56, %34
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58, %29
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @uwb_rc_cmd(%struct.uwb_rc*, i8*, i32*, i64, %struct.TYPE_4__*, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @uwb_rc_strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
