; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_xcopy.c_target_xcopy_issue_pt_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_xcopy.c_target_xcopy_issue_pt_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xcopy_pt_cmd = type { i32, %struct.se_cmd }
%struct.se_cmd = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"target_xcopy_issue_pt_cmd(): SCSI status: 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xcopy_pt_cmd*)* @target_xcopy_issue_pt_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_xcopy_issue_pt_cmd(%struct.xcopy_pt_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xcopy_pt_cmd*, align 8
  %4 = alloca %struct.se_cmd*, align 8
  %5 = alloca i64, align 8
  store %struct.xcopy_pt_cmd* %0, %struct.xcopy_pt_cmd** %3, align 8
  %6 = load %struct.xcopy_pt_cmd*, %struct.xcopy_pt_cmd** %3, align 8
  %7 = getelementptr inbounds %struct.xcopy_pt_cmd, %struct.xcopy_pt_cmd* %6, i32 0, i32 1
  store %struct.se_cmd* %7, %struct.se_cmd** %4, align 8
  %8 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %9 = call i64 @transport_generic_new_cmd(%struct.se_cmd* %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %42

15:                                               ; preds = %1
  %16 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %17 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DMA_TO_DEVICE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %23 = call i32 @target_execute_cmd(%struct.se_cmd* %22)
  br label %24

24:                                               ; preds = %21, %15
  %25 = load %struct.xcopy_pt_cmd*, %struct.xcopy_pt_cmd** %3, align 8
  %26 = getelementptr inbounds %struct.xcopy_pt_cmd, %struct.xcopy_pt_cmd* %25, i32 0, i32 0
  %27 = call i32 @wait_for_completion_interruptible(i32* %26)
  %28 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %29 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %33 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  br label %40

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39, %36
  %41 = phi i32 [ %38, %36 ], [ 0, %39 ]
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %12
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @transport_generic_new_cmd(%struct.se_cmd*) #1

declare dso_local i32 @target_execute_cmd(%struct.se_cmd*) #1

declare dso_local i32 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
