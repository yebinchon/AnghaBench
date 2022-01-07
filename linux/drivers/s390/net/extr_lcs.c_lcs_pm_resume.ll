; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_pm_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_pm_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_card = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@DEV_STATE_RECOVER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"The lcs device driver failed to recover the device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcs_card*)* @lcs_pm_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcs_pm_resume(%struct.lcs_card* %0) #0 {
  %2 = alloca %struct.lcs_card*, align 8
  %3 = alloca i32, align 4
  store %struct.lcs_card* %0, %struct.lcs_card** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %5 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @DEV_STATE_RECOVER, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %11 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = call i32 @lcs_new_device(%struct.TYPE_2__* %12)
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %16 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %21 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @netif_device_attach(i64 %22)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %29 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @dev_warn(i32* %31, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %27, %24
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @lcs_new_device(%struct.TYPE_2__*) #1

declare dso_local i32 @netif_device_attach(i64) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
