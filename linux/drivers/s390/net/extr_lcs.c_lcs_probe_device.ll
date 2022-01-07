; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_probe_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_probe_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { %struct.TYPE_6__, %struct.TYPE_5__** }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i8* }
%struct.lcs_card = type { i64, i64, i64, i32, %struct.ccwgroup_device* }

@ENODEV = common dso_local global i32 0, align 4
@setup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"add_dev\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"  rc%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@lcs_irq = common dso_local global i8* null, align 8
@lcs_start_kernel_thread = common dso_local global i32 0, align 4
@lcs_devtype = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwgroup_device*)* @lcs_probe_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcs_probe_device(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccwgroup_device*, align 8
  %4 = alloca %struct.lcs_card*, align 8
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %3, align 8
  %5 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %6 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %5, i32 0, i32 0
  %7 = call i32 @get_device(%struct.TYPE_6__* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %63

12:                                               ; preds = %1
  %13 = load i32, i32* @setup, align 4
  %14 = call i32 @LCS_DBF_TEXT(i32 2, i32 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %15 = call %struct.lcs_card* (...) @lcs_alloc_card()
  store %struct.lcs_card* %15, %struct.lcs_card** %4, align 8
  %16 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %17 = icmp ne %struct.lcs_card* %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @setup, align 4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call i32 @LCS_DBF_TEXT_(i32 2, i32 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %24 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %23, i32 0, i32 0
  %25 = call i32 @put_device(%struct.TYPE_6__* %24)
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %63

28:                                               ; preds = %12
  %29 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %30 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %29, i32 0, i32 0
  %31 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %32 = call i32 @dev_set_drvdata(%struct.TYPE_6__* %30, %struct.lcs_card* %31)
  %33 = load i8*, i8** @lcs_irq, align 8
  %34 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %35 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %36, i64 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i8* %33, i8** %39, align 8
  %40 = load i8*, i8** @lcs_irq, align 8
  %41 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %42 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %43, i64 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i8* %40, i8** %46, align 8
  %47 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %48 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %49 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %48, i32 0, i32 4
  store %struct.ccwgroup_device* %47, %struct.ccwgroup_device** %49, align 8
  %50 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %51 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %50, i32 0, i32 3
  %52 = load i32, i32* @lcs_start_kernel_thread, align 4
  %53 = call i32 @INIT_WORK(i32* %51, i32 %52)
  %54 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %55 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %57 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %59 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %61 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32* @lcs_devtype, i32** %62, align 8
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %28, %18, %9
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @get_device(%struct.TYPE_6__*) #1

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.lcs_card* @lcs_alloc_card(...) #1

declare dso_local i32 @LCS_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @put_device(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_6__*, %struct.lcs_card*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
