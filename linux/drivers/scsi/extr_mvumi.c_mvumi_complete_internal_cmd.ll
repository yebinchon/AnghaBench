; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_complete_internal_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_complete_internal_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { i32 }
%struct.mvumi_cmd = type { i64, i32, i64 }
%struct.mvumi_rsp_frame = type { i64, i32, i32 }

@SAM_STAT_CHECK_CONDITION = common dso_local global i64 0, align 8
@CL_RSP_FLAG_SENSEDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvumi_hba*, %struct.mvumi_cmd*, %struct.mvumi_rsp_frame*)* @mvumi_complete_internal_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvumi_complete_internal_cmd(%struct.mvumi_hba* %0, %struct.mvumi_cmd* %1, %struct.mvumi_rsp_frame* %2) #0 {
  %4 = alloca %struct.mvumi_hba*, align 8
  %5 = alloca %struct.mvumi_cmd*, align 8
  %6 = alloca %struct.mvumi_rsp_frame*, align 8
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %4, align 8
  store %struct.mvumi_cmd* %1, %struct.mvumi_cmd** %5, align 8
  store %struct.mvumi_rsp_frame* %2, %struct.mvumi_rsp_frame** %6, align 8
  %7 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %5, align 8
  %8 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %7, i32 0, i32 1
  %9 = call i64 @atomic_read(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %49

11:                                               ; preds = %3
  %12 = load %struct.mvumi_rsp_frame*, %struct.mvumi_rsp_frame** %6, align 8
  %13 = getelementptr inbounds %struct.mvumi_rsp_frame, %struct.mvumi_rsp_frame* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %5, align 8
  %16 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.mvumi_rsp_frame*, %struct.mvumi_rsp_frame** %6, align 8
  %18 = getelementptr inbounds %struct.mvumi_rsp_frame, %struct.mvumi_rsp_frame* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SAM_STAT_CHECK_CONDITION, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %11
  %23 = load %struct.mvumi_rsp_frame*, %struct.mvumi_rsp_frame** %6, align 8
  %24 = getelementptr inbounds %struct.mvumi_rsp_frame, %struct.mvumi_rsp_frame* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @CL_RSP_FLAG_SENSEDATA, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %22
  %30 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %5, align 8
  %31 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %5, align 8
  %36 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.mvumi_rsp_frame*, %struct.mvumi_rsp_frame** %6, align 8
  %39 = getelementptr inbounds %struct.mvumi_rsp_frame, %struct.mvumi_rsp_frame* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy(i64 %37, i32 %40, i32 4)
  br label %42

42:                                               ; preds = %34, %29, %22, %11
  %43 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %5, align 8
  %44 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %43, i32 0, i32 1
  %45 = call i32 @atomic_dec(i32* %44)
  %46 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %47 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %46, i32 0, i32 0
  %48 = call i32 @wake_up(i32* %47)
  br label %49

49:                                               ; preds = %42, %3
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
