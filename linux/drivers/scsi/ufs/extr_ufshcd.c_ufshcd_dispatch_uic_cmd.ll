; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_dispatch_uic_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_dispatch_uic_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { %struct.uic_command* }
%struct.uic_command = type { i32, i32, i32, i32 }

@REG_UIC_COMMAND_ARG_1 = common dso_local global i32 0, align 4
@REG_UIC_COMMAND_ARG_2 = common dso_local global i32 0, align 4
@REG_UIC_COMMAND_ARG_3 = common dso_local global i32 0, align 4
@COMMAND_OPCODE_MASK = common dso_local global i32 0, align 4
@REG_UIC_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_hba*, %struct.uic_command*)* @ufshcd_dispatch_uic_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufshcd_dispatch_uic_cmd(%struct.ufs_hba* %0, %struct.uic_command* %1) #0 {
  %3 = alloca %struct.ufs_hba*, align 8
  %4 = alloca %struct.uic_command*, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %3, align 8
  store %struct.uic_command* %1, %struct.uic_command** %4, align 8
  %5 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %6 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %5, i32 0, i32 0
  %7 = load %struct.uic_command*, %struct.uic_command** %6, align 8
  %8 = call i32 @WARN_ON(%struct.uic_command* %7)
  %9 = load %struct.uic_command*, %struct.uic_command** %4, align 8
  %10 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %11 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %10, i32 0, i32 0
  store %struct.uic_command* %9, %struct.uic_command** %11, align 8
  %12 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %13 = load %struct.uic_command*, %struct.uic_command** %4, align 8
  %14 = getelementptr inbounds %struct.uic_command, %struct.uic_command* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @REG_UIC_COMMAND_ARG_1, align 4
  %17 = call i32 @ufshcd_writel(%struct.ufs_hba* %12, i32 %15, i32 %16)
  %18 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %19 = load %struct.uic_command*, %struct.uic_command** %4, align 8
  %20 = getelementptr inbounds %struct.uic_command, %struct.uic_command* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @REG_UIC_COMMAND_ARG_2, align 4
  %23 = call i32 @ufshcd_writel(%struct.ufs_hba* %18, i32 %21, i32 %22)
  %24 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %25 = load %struct.uic_command*, %struct.uic_command** %4, align 8
  %26 = getelementptr inbounds %struct.uic_command, %struct.uic_command* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @REG_UIC_COMMAND_ARG_3, align 4
  %29 = call i32 @ufshcd_writel(%struct.ufs_hba* %24, i32 %27, i32 %28)
  %30 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %31 = load %struct.uic_command*, %struct.uic_command** %4, align 8
  %32 = getelementptr inbounds %struct.uic_command, %struct.uic_command* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @COMMAND_OPCODE_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @REG_UIC_COMMAND, align 4
  %37 = call i32 @ufshcd_writel(%struct.ufs_hba* %30, i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @WARN_ON(%struct.uic_command*) #1

declare dso_local i32 @ufshcd_writel(%struct.ufs_hba*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
