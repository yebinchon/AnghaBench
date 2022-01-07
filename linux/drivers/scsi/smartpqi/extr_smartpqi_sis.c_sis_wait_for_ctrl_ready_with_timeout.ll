; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_sis.c_sis_wait_for_ctrl_ready_with_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_sis.c_sis_wait_for_ctrl_ready_with_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32*, i32 }

@PQI_HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@SIS_CTRL_KERNEL_PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"controller is offline: status code 0x%x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SIS_CTRL_KERNEL_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"controller not ready after %u seconds\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@SIS_CTRL_READY_POLL_INTERVAL_MSECS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*, i32)* @sis_wait_for_ctrl_ready_with_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis_wait_for_ctrl_ready_with_timeout(%struct.pqi_ctrl_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pqi_ctrl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @PQI_HZ, align 4
  %10 = mul i32 %8, %9
  %11 = load i32, i32* @jiffies, align 4
  %12 = add i32 %10, %11
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %6, align 8
  br label %14

14:                                               ; preds = %2, %63
  %15 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %16 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = call i32 @readl(i32* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %49

22:                                               ; preds = %14
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @SIS_CTRL_KERNEL_PANIC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %22
  %28 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %29 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %33 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 7
  %38 = call i32 @readl(i32* %37)
  %39 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %67

42:                                               ; preds = %22
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @SIS_CTRL_KERNEL_UP, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %66

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %14
  %50 = load i32, i32* @jiffies, align 4
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @time_after(i32 %50, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %56 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @ETIMEDOUT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %67

63:                                               ; preds = %49
  %64 = load i32, i32* @SIS_CTRL_READY_POLL_INTERVAL_MSECS, align 4
  %65 = call i32 @msleep(i32 %64)
  br label %14

66:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %54, %27
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
