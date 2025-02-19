; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_send_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@REG_UTP_TRANSFER_REQ_DOOR_BELL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"send\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_hba*, i32)* @ufshcd_send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufshcd_send_command(%struct.ufs_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.ufs_hba*, align 8
  %4 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @ktime_get()
  %6 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %7 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i32 %5, i32* %12, align 4
  %13 = call i32 @ktime_set(i32 0, i32 0)
  %14 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %15 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %13, i32* %20, align 4
  %21 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %22 = call i32 @ufshcd_clk_scaling_start_busy(%struct.ufs_hba* %21)
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %25 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %24, i32 0, i32 0
  %26 = call i32 @__set_bit(i32 %23, i32* %25)
  %27 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = shl i32 1, %28
  %30 = load i32, i32* @REG_UTP_TRANSFER_REQ_DOOR_BELL, align 4
  %31 = call i32 @ufshcd_writel(%struct.ufs_hba* %27, i32 %29, i32 %30)
  %32 = call i32 (...) @wmb()
  %33 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @ufshcd_add_command_trace(%struct.ufs_hba* %33, i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_set(i32, i32) #1

declare dso_local i32 @ufshcd_clk_scaling_start_busy(%struct.ufs_hba*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @ufshcd_writel(%struct.ufs_hba*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ufshcd_add_command_trace(%struct.ufs_hba*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
