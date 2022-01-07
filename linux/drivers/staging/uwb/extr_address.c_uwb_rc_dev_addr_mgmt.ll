; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_address.c_uwb_rc_dev_addr_mgmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_address.c_uwb_rc_dev_addr_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.uwb_rc_evt_dev_addr_mgmt = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8* }
%struct.uwb_rc_cmd_dev_addr_mgmt = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@UWB_RC_CET_GENERAL = common dso_local global i8* null, align 8
@UWB_RC_CMD_DEV_ADDR_MGMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"DEV-ADDR-MGMT\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"DEV-ADDR-MGMT: not enough data replied: %d vs %zu bytes needed\0A\00", align 1
@ENOMSG = common dso_local global i32 0, align 4
@UWB_RC_RES_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"DEV-ADDR-MGMT: command execution failed: %s (%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uwb_rc*, i32, i32*, %struct.uwb_rc_evt_dev_addr_mgmt*)* @uwb_rc_dev_addr_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uwb_rc_dev_addr_mgmt(%struct.uwb_rc* %0, i32 %1, i32* %2, %struct.uwb_rc_evt_dev_addr_mgmt* %3) #0 {
  %5 = alloca %struct.uwb_rc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.uwb_rc_evt_dev_addr_mgmt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.uwb_rc_cmd_dev_addr_mgmt*, align 8
  %11 = alloca i64, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.uwb_rc_evt_dev_addr_mgmt* %3, %struct.uwb_rc_evt_dev_addr_mgmt** %8, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.uwb_rc_cmd_dev_addr_mgmt* @kzalloc(i32 32, i32 %14)
  store %struct.uwb_rc_cmd_dev_addr_mgmt* %15, %struct.uwb_rc_cmd_dev_addr_mgmt** %10, align 8
  %16 = load %struct.uwb_rc_cmd_dev_addr_mgmt*, %struct.uwb_rc_cmd_dev_addr_mgmt** %10, align 8
  %17 = icmp eq %struct.uwb_rc_cmd_dev_addr_mgmt* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %104

19:                                               ; preds = %4
  %20 = load i8*, i8** @UWB_RC_CET_GENERAL, align 8
  %21 = load %struct.uwb_rc_cmd_dev_addr_mgmt*, %struct.uwb_rc_cmd_dev_addr_mgmt** %10, align 8
  %22 = getelementptr inbounds %struct.uwb_rc_cmd_dev_addr_mgmt, %struct.uwb_rc_cmd_dev_addr_mgmt* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  store i8* %20, i8** %23, align 8
  %24 = load i32, i32* @UWB_RC_CMD_DEV_ADDR_MGMT, align 4
  %25 = call i32 @cpu_to_le16(i32 %24)
  %26 = load %struct.uwb_rc_cmd_dev_addr_mgmt*, %struct.uwb_rc_cmd_dev_addr_mgmt** %10, align 8
  %27 = getelementptr inbounds %struct.uwb_rc_cmd_dev_addr_mgmt, %struct.uwb_rc_cmd_dev_addr_mgmt* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.uwb_rc_cmd_dev_addr_mgmt*, %struct.uwb_rc_cmd_dev_addr_mgmt** %10, align 8
  %31 = getelementptr inbounds %struct.uwb_rc_cmd_dev_addr_mgmt, %struct.uwb_rc_cmd_dev_addr_mgmt* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %19
  store i64 0, i64* %11, align 8
  %35 = load i32, i32* %6, align 4
  %36 = ashr i32 %35, 1
  switch i32 %36, label %39 [
    i32 0, label %37
    i32 1, label %38
  ]

37:                                               ; preds = %34
  store i64 2, i64* %11, align 8
  br label %41

38:                                               ; preds = %34
  store i64 6, i64* %11, align 8
  br label %41

39:                                               ; preds = %34
  %40 = call i32 (...) @BUG()
  br label %41

41:                                               ; preds = %39, %38, %37
  %42 = load %struct.uwb_rc_cmd_dev_addr_mgmt*, %struct.uwb_rc_cmd_dev_addr_mgmt** %10, align 8
  %43 = getelementptr inbounds %struct.uwb_rc_cmd_dev_addr_mgmt, %struct.uwb_rc_cmd_dev_addr_mgmt* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @memcpy(i32 %44, i32* %45, i64 %46)
  br label %48

48:                                               ; preds = %41, %19
  %49 = load i8*, i8** @UWB_RC_CET_GENERAL, align 8
  %50 = load %struct.uwb_rc_evt_dev_addr_mgmt*, %struct.uwb_rc_evt_dev_addr_mgmt** %8, align 8
  %51 = getelementptr inbounds %struct.uwb_rc_evt_dev_addr_mgmt, %struct.uwb_rc_evt_dev_addr_mgmt* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i8* %49, i8** %52, align 8
  %53 = load i32, i32* @UWB_RC_CMD_DEV_ADDR_MGMT, align 4
  %54 = load %struct.uwb_rc_evt_dev_addr_mgmt*, %struct.uwb_rc_evt_dev_addr_mgmt** %8, align 8
  %55 = getelementptr inbounds %struct.uwb_rc_evt_dev_addr_mgmt, %struct.uwb_rc_evt_dev_addr_mgmt* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %58 = load %struct.uwb_rc_cmd_dev_addr_mgmt*, %struct.uwb_rc_cmd_dev_addr_mgmt** %10, align 8
  %59 = getelementptr inbounds %struct.uwb_rc_cmd_dev_addr_mgmt, %struct.uwb_rc_cmd_dev_addr_mgmt* %58, i32 0, i32 1
  %60 = load %struct.uwb_rc_evt_dev_addr_mgmt*, %struct.uwb_rc_evt_dev_addr_mgmt** %8, align 8
  %61 = getelementptr inbounds %struct.uwb_rc_evt_dev_addr_mgmt, %struct.uwb_rc_evt_dev_addr_mgmt* %60, i32 0, i32 1
  %62 = call i32 @uwb_rc_cmd(%struct.uwb_rc* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %59, i32 32, %struct.TYPE_6__* %61, i32 24)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %48
  br label %101

66:                                               ; preds = %48
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp ult i64 %68, 24
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %72 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 24)
  %76 = load i32, i32* @ENOMSG, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %9, align 4
  br label %100

78:                                               ; preds = %66
  %79 = load %struct.uwb_rc_evt_dev_addr_mgmt*, %struct.uwb_rc_evt_dev_addr_mgmt** %8, align 8
  %80 = getelementptr inbounds %struct.uwb_rc_evt_dev_addr_mgmt, %struct.uwb_rc_evt_dev_addr_mgmt* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @UWB_RC_RES_SUCCESS, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %78
  %85 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %86 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load %struct.uwb_rc_evt_dev_addr_mgmt*, %struct.uwb_rc_evt_dev_addr_mgmt** %8, align 8
  %89 = getelementptr inbounds %struct.uwb_rc_evt_dev_addr_mgmt, %struct.uwb_rc_evt_dev_addr_mgmt* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @uwb_rc_strerror(i32 %90)
  %92 = load %struct.uwb_rc_evt_dev_addr_mgmt*, %struct.uwb_rc_evt_dev_addr_mgmt** %8, align 8
  %93 = getelementptr inbounds %struct.uwb_rc_evt_dev_addr_mgmt, %struct.uwb_rc_evt_dev_addr_mgmt* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %91, i32 %94)
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %9, align 4
  br label %99

98:                                               ; preds = %78
  store i32 0, i32* %9, align 4
  br label %99

99:                                               ; preds = %98, %84
  br label %100

100:                                              ; preds = %99, %70
  br label %101

101:                                              ; preds = %100, %65
  %102 = load %struct.uwb_rc_cmd_dev_addr_mgmt*, %struct.uwb_rc_cmd_dev_addr_mgmt** %10, align 8
  %103 = call i32 @kfree(%struct.uwb_rc_cmd_dev_addr_mgmt* %102)
  br label %104

104:                                              ; preds = %101, %18
  %105 = load i32, i32* %9, align 4
  ret i32 %105
}

declare dso_local %struct.uwb_rc_cmd_dev_addr_mgmt* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @uwb_rc_cmd(%struct.uwb_rc*, i8*, %struct.TYPE_5__*, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @uwb_rc_strerror(i32) #1

declare dso_local i32 @kfree(%struct.uwb_rc_cmd_dev_addr_mgmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
