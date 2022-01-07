; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_wait_for_test_unit_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_wait_for_test_unit_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.CommandList = type { i32 }

@HPSA_TUR_RETRY_LIMIT = common dso_local global i32 0, align 4
@HPSA_MAX_WAIT_INTERVAL_SECS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"waiting %d secs for device to become ready.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, %struct.CommandList*, i8*, i32)* @hpsa_wait_for_test_unit_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_wait_for_test_unit_ready(%struct.ctlr_info* %0, %struct.CommandList* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ctlr_info*, align 8
  %6 = alloca %struct.CommandList*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %5, align 8
  store %struct.CommandList* %1, %struct.CommandList** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %42, %4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @HPSA_TUR_RETRY_LIMIT, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %45

16:                                               ; preds = %12
  %17 = load i32, i32* %11, align 4
  %18 = mul nsw i32 1000, %17
  %19 = call i32 @msleep(i32 %18)
  %20 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %21 = load %struct.CommandList*, %struct.CommandList** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @hpsa_send_test_unit_ready(%struct.ctlr_info* %20, %struct.CommandList* %21, i8* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %16
  br label %45

28:                                               ; preds = %16
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @HPSA_MAX_WAIT_INTERVAL_SECS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* %11, align 4
  %34 = mul nsw i32 %33, 2
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %32, %28
  %36 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %37 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @dev_warn(i32* %39, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %12

45:                                               ; preds = %27, %12
  %46 = load i32, i32* %9, align 4
  ret i32 %46
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hpsa_send_test_unit_ready(%struct.ctlr_info*, %struct.CommandList*, i8*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
