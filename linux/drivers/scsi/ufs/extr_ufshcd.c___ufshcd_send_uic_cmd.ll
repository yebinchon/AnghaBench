; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c___ufshcd_send_uic_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c___ufshcd_send_uic_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32 }
%struct.uic_command = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Controller not ready to accept UIC commands\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*, %struct.uic_command*, i32)* @__ufshcd_send_uic_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ufshcd_send_uic_cmd(%struct.ufs_hba* %0, %struct.uic_command* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ufs_hba*, align 8
  %6 = alloca %struct.uic_command*, align 8
  %7 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %5, align 8
  store %struct.uic_command* %1, %struct.uic_command** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %9 = call i32 @ufshcd_ready_for_uic_cmd(%struct.ufs_hba* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %13 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %29

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.uic_command*, %struct.uic_command** %6, align 8
  %23 = getelementptr inbounds %struct.uic_command, %struct.uic_command* %22, i32 0, i32 0
  %24 = call i32 @init_completion(i32* %23)
  br label %25

25:                                               ; preds = %21, %18
  %26 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %27 = load %struct.uic_command*, %struct.uic_command** %6, align 8
  %28 = call i32 @ufshcd_dispatch_uic_cmd(%struct.ufs_hba* %26, %struct.uic_command* %27)
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %25, %11
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @ufshcd_ready_for_uic_cmd(%struct.ufs_hba*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ufshcd_dispatch_uic_cmd(%struct.ufs_hba*, %struct.uic_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
