; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_remove_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { i64, i32 }
%struct.lcs_card = type { i64 }

@setup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"remdev\00", align 1
@CCWGROUP_ONLINE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccwgroup_device*)* @lcs_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcs_remove_device(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca %struct.ccwgroup_device*, align 8
  %3 = alloca %struct.lcs_card*, align 8
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %2, align 8
  %4 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %5 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %4, i32 0, i32 1
  %6 = call %struct.lcs_card* @dev_get_drvdata(i32* %5)
  store %struct.lcs_card* %6, %struct.lcs_card** %3, align 8
  %7 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %8 = icmp ne %struct.lcs_card* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %44

10:                                               ; preds = %1
  %11 = load i32, i32* @setup, align 4
  %12 = call i32 @LCS_DBF_TEXT(i32 3, i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @setup, align 4
  %14 = call i32 @LCS_DBF_HEX(i32 3, i32 %13, %struct.lcs_card** %3, i32 8)
  %15 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %16 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CCWGROUP_ONLINE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %10
  %21 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %22 = call i32 @lcs_shutdown_device(%struct.ccwgroup_device* %21)
  br label %23

23:                                               ; preds = %20, %10
  %24 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %25 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %30 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @unregister_netdev(i64 %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %35 = call i32 @lcs_cleanup_card(%struct.lcs_card* %34)
  %36 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %37 = call i32 @lcs_free_card(%struct.lcs_card* %36)
  %38 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %39 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %38, i32 0, i32 1
  %40 = call i32 @dev_set_drvdata(i32* %39, i32* null)
  %41 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %42 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %41, i32 0, i32 1
  %43 = call i32 @put_device(i32* %42)
  br label %44

44:                                               ; preds = %33, %9
  ret void
}

declare dso_local %struct.lcs_card* @dev_get_drvdata(i32*) #1

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @LCS_DBF_HEX(i32, i32, %struct.lcs_card**, i32) #1

declare dso_local i32 @lcs_shutdown_device(%struct.ccwgroup_device*) #1

declare dso_local i32 @unregister_netdev(i64) #1

declare dso_local i32 @lcs_cleanup_card(%struct.lcs_card*) #1

declare dso_local i32 @lcs_free_card(%struct.lcs_card*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
