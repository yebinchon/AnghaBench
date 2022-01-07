; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_scsi_do_simple_cmd_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_scsi_do_simple_cmd_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.CommandList = type { i32* }

@wait = common dso_local global i32 0, align 4
@NO_TIMEOUT = common dso_local global i64 0, align 8
@IO_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Command timed out.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, %struct.CommandList*, i32, i64)* @hpsa_scsi_do_simple_cmd_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_scsi_do_simple_cmd_core(%struct.ctlr_info* %0, %struct.CommandList* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ctlr_info*, align 8
  %7 = alloca %struct.CommandList*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %6, align 8
  store %struct.CommandList* %1, %struct.CommandList** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %10 = load i32, i32* @wait, align 4
  %11 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %10)
  %12 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %13 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %12, i32 0, i32 0
  store i32* @wait, i32** %13, align 8
  %14 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %15 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @__enqueue_cmd_and_start_io(%struct.ctlr_info* %14, %struct.CommandList* %15, i32 %16)
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @NO_TIMEOUT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = call i32 @wait_for_completion_io(i32* @wait)
  %23 = load i32, i32* @IO_OK, align 4
  store i32 %23, i32* %5, align 4
  br label %39

24:                                               ; preds = %4
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @msecs_to_jiffies(i64 %25)
  %27 = call i32 @wait_for_completion_io_timeout(i32* @wait, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %24
  %30 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %31 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @dev_warn(i32* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ETIMEDOUT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %39

37:                                               ; preds = %24
  %38 = load i32, i32* @IO_OK, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %29, %21
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @__enqueue_cmd_and_start_io(%struct.ctlr_info*, %struct.CommandList*, i32) #1

declare dso_local i32 @wait_for_completion_io(i32*) #1

declare dso_local i32 @wait_for_completion_io_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
