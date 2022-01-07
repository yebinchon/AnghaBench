; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_wait_for_uic_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_wait_for_uic_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.uic_command = type { i32, i32 }

@UIC_CMD_TIMEOUT = common dso_local global i32 0, align 4
@MASK_UIC_COMMAND_RESULT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*, %struct.uic_command*)* @ufshcd_wait_for_uic_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufshcd_wait_for_uic_cmd(%struct.ufs_hba* %0, %struct.uic_command* %1) #0 {
  %3 = alloca %struct.ufs_hba*, align 8
  %4 = alloca %struct.uic_command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %3, align 8
  store %struct.uic_command* %1, %struct.uic_command** %4, align 8
  %7 = load %struct.uic_command*, %struct.uic_command** %4, align 8
  %8 = getelementptr inbounds %struct.uic_command, %struct.uic_command* %7, i32 0, i32 1
  %9 = load i32, i32* @UIC_CMD_TIMEOUT, align 4
  %10 = call i32 @msecs_to_jiffies(i32 %9)
  %11 = call i64 @wait_for_completion_timeout(i32* %8, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.uic_command*, %struct.uic_command** %4, align 8
  %15 = getelementptr inbounds %struct.uic_command, %struct.uic_command* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MASK_UIC_COMMAND_RESULT, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %5, align 4
  br label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ETIMEDOUT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %19, %13
  %23 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %24 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @spin_lock_irqsave(i32 %27, i64 %28)
  %30 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %31 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %33 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32 %36, i64 %37)
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
