; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c_free_mcc_wrb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c_free_mcc_wrb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_ctrl_info = type { i32*, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.be_queue_info }
%struct.be_queue_info = type { i32 }

@MCC_Q_CMD_TAG_MASK = common dso_local global i32 0, align 4
@MAX_MCC_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mcc_wrb(%struct.be_ctrl_info* %0, i32 %1) #0 {
  %3 = alloca %struct.be_ctrl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.be_queue_info*, align 8
  store %struct.be_ctrl_info* %0, %struct.be_ctrl_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %7 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.be_queue_info* %8, %struct.be_queue_info** %5, align 8
  %9 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %10 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %9, i32 0, i32 2
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @MCC_Q_CMD_TAG_MASK, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %17 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %20 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  store i32 %15, i32* %22, align 4
  %23 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %24 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @MAX_MCC_CMD, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %32 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  br label %38

33:                                               ; preds = %2
  %34 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %35 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %35, align 8
  br label %38

38:                                               ; preds = %33, %30
  %39 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %40 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load %struct.be_queue_info*, %struct.be_queue_info** %5, align 8
  %44 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %48 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %47, i32 0, i32 2
  %49 = call i32 @spin_unlock(i32* %48)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
