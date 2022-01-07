; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/intel_speed_select_if/extr_isst_if_common.c_isst_if_mbox_cmd_invalid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/intel_speed_select_if/extr_isst_if_common.c_isst_if_mbox_cmd_invalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.isst_if_mbox_cmd = type { i64, i64, i64 }

@nr_cpu_ids = common dso_local global i64 0, align 8
@isst_valid_cmds = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isst_if_mbox_cmd_invalid(%struct.isst_if_mbox_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isst_if_mbox_cmd*, align 8
  %4 = alloca i32, align 4
  store %struct.isst_if_mbox_cmd* %0, %struct.isst_if_mbox_cmd** %3, align 8
  %5 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %3, align 8
  %6 = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @nr_cpu_ids, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %56

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %52, %11
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @isst_valid_cmds, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %55

17:                                               ; preds = %12
  %18 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %3, align 8
  %19 = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @isst_valid_cmds, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %20, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %17
  %29 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %3, align 8
  %30 = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @isst_valid_cmds, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %31, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %28
  %40 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %3, align 8
  %41 = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @isst_valid_cmds, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp sle i64 %42, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %56

51:                                               ; preds = %39, %28, %17
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %12

55:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %50, %10
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
