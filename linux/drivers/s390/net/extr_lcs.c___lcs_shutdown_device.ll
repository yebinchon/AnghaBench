; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c___lcs_shutdown_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c___lcs_shutdown_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { i32 }
%struct.lcs_card = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@setup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"shtdndev\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@LCS_SET_MC_THREAD = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"1err:%d\00", align 1
@DEV_STATE_UP = common dso_local global i32 0, align 4
@DEV_STATE_RECOVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwgroup_device*, i32)* @__lcs_shutdown_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__lcs_shutdown_device(%struct.ccwgroup_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccwgroup_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lcs_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @setup, align 4
  %12 = call i32 @LCS_DBF_TEXT(i32 3, i32 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %4, align 8
  %14 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %13, i32 0, i32 0
  %15 = call %struct.lcs_card* @dev_get_drvdata(i32* %14)
  store %struct.lcs_card* %15, %struct.lcs_card** %6, align 8
  %16 = load %struct.lcs_card*, %struct.lcs_card** %6, align 8
  %17 = icmp ne %struct.lcs_card* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %82

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load %struct.lcs_card*, %struct.lcs_card** %6, align 8
  %26 = call i32 @lcs_set_allowed_threads(%struct.lcs_card* %25, i32 0)
  %27 = load %struct.lcs_card*, %struct.lcs_card** %6, align 8
  %28 = load i32, i32* @LCS_SET_MC_THREAD, align 4
  %29 = call i64 @lcs_wait_for_threads(%struct.lcs_card* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @ERESTARTSYS, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %82

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %21
  %36 = load i32, i32* @setup, align 4
  %37 = call i32 @LCS_DBF_HEX(i32 3, i32 %36, %struct.lcs_card** %6, i32 8)
  %38 = load %struct.lcs_card*, %struct.lcs_card** %6, align 8
  %39 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  %41 = load %struct.lcs_card*, %struct.lcs_card** %6, align 8
  %42 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @lcs_stop_device(i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load %struct.lcs_card*, %struct.lcs_card** %6, align 8
  %46 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ccw_device_set_offline(i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load %struct.lcs_card*, %struct.lcs_card** %6, align 8
  %51 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ccw_device_set_offline(i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %35
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  br label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %10, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %64, %35
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* @setup, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @LCS_DBF_TEXT_(i32 3, i32 %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %69, %66
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @DEV_STATE_UP, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load i32, i32* @DEV_STATE_RECOVER, align 4
  %79 = load %struct.lcs_card*, %struct.lcs_card** %6, align 8
  %80 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %77, %73
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %31, %18
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.lcs_card* @dev_get_drvdata(i32*) #1

declare dso_local i32 @lcs_set_allowed_threads(%struct.lcs_card*, i32) #1

declare dso_local i64 @lcs_wait_for_threads(%struct.lcs_card*, i32) #1

declare dso_local i32 @LCS_DBF_HEX(i32, i32, %struct.lcs_card**, i32) #1

declare dso_local i32 @lcs_stop_device(i32) #1

declare dso_local i32 @ccw_device_set_offline(i32) #1

declare dso_local i32 @LCS_DBF_TEXT_(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
