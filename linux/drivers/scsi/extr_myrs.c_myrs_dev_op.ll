; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_dev_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_dev_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrs_hba = type { i32, %struct.myrs_cmdblk }
%struct.myrs_cmdblk = type { i8, %union.myrs_cmd_mbox }
%union.myrs_cmd_mbox = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@MYRS_CMD_OP_IOCTL = common dso_local global i32 0, align 4
@MYRS_DCMD_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.myrs_hba*, i32, i32)* @myrs_dev_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @myrs_dev_op(%struct.myrs_hba* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.myrs_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.myrs_cmdblk*, align 8
  %8 = alloca %union.myrs_cmd_mbox*, align 8
  %9 = alloca i8, align 1
  store %struct.myrs_hba* %0, %struct.myrs_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.myrs_hba*, %struct.myrs_hba** %4, align 8
  %11 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %10, i32 0, i32 1
  store %struct.myrs_cmdblk* %11, %struct.myrs_cmdblk** %7, align 8
  %12 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %7, align 8
  %13 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %12, i32 0, i32 1
  store %union.myrs_cmd_mbox* %13, %union.myrs_cmd_mbox** %8, align 8
  %14 = load %struct.myrs_hba*, %struct.myrs_hba** %4, align 8
  %15 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %7, align 8
  %18 = call i32 @myrs_reset_cmd(%struct.myrs_cmdblk* %17)
  %19 = load i32, i32* @MYRS_CMD_OP_IOCTL, align 4
  %20 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %8, align 8
  %21 = bitcast %union.myrs_cmd_mbox* %20 to %struct.TYPE_4__*
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 4
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @MYRS_DCMD_TAG, align 4
  %24 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %8, align 8
  %25 = bitcast %union.myrs_cmd_mbox* %24 to %struct.TYPE_4__*
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  store i32 %23, i32* %26, align 4
  %27 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %8, align 8
  %28 = bitcast %union.myrs_cmd_mbox* %27 to %struct.TYPE_4__*
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %8, align 8
  %32 = bitcast %union.myrs_cmd_mbox* %31 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %8, align 8
  %37 = bitcast %union.myrs_cmd_mbox* %36 to %struct.TYPE_4__*
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %8, align 8
  %41 = bitcast %union.myrs_cmd_mbox* %40 to %struct.TYPE_4__*
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load %struct.myrs_hba*, %struct.myrs_hba** %4, align 8
  %44 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %7, align 8
  %45 = call i32 @myrs_exec_cmd(%struct.myrs_hba* %43, %struct.myrs_cmdblk* %44)
  %46 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %7, align 8
  %47 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %46, i32 0, i32 0
  %48 = load i8, i8* %47, align 4
  store i8 %48, i8* %9, align 1
  %49 = load %struct.myrs_hba*, %struct.myrs_hba** %4, align 8
  %50 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i8, i8* %9, align 1
  ret i8 %52
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @myrs_reset_cmd(%struct.myrs_cmdblk*) #1

declare dso_local i32 @myrs_exec_cmd(%struct.myrs_hba*, %struct.myrs_cmdblk*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
