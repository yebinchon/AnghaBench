; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_wait_for_device_to_become_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_wait_for_device_to_become_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.CommandList = type { i32 }

@DEFAULT_REPLY_QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"giving up on device.\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"device is ready.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, i8*, i32)* @wait_for_device_to_become_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_device_to_become_ready(%struct.ctlr_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ctlr_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.CommandList*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %13 = call %struct.CommandList* @cmd_alloc(%struct.ctlr_info* %12)
  store %struct.CommandList* %13, %struct.CommandList** %11, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @DEFAULT_REPLY_QUEUE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  %18 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %19 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %8, align 4
  br label %25

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %41, %25
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %33 = load %struct.CommandList*, %struct.CommandList** %11, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @hpsa_wait_for_test_unit_ready(%struct.ctlr_info* %32, %struct.CommandList* %33, i8* %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %44

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %27

44:                                               ; preds = %39, %27
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %49 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @dev_warn(i32* %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %59

53:                                               ; preds = %44
  %54 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %55 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @dev_warn(i32* %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %53, %47
  %60 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %61 = load %struct.CommandList*, %struct.CommandList** %11, align 8
  %62 = call i32 @cmd_free(%struct.ctlr_info* %60, %struct.CommandList* %61)
  %63 = load i32, i32* %10, align 4
  ret i32 %63
}

declare dso_local %struct.CommandList* @cmd_alloc(%struct.ctlr_info*) #1

declare dso_local i32 @hpsa_wait_for_test_unit_ready(%struct.ctlr_info*, %struct.CommandList*, i8*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @cmd_free(%struct.ctlr_info*, %struct.CommandList*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
