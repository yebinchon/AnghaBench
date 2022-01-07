; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_fs_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_fs_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.exfat_mount_options = type { i64 }
%struct.TYPE_2__ = type { %struct.exfat_mount_options }

@EXFAT_ERRORS_PANIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"[EXFAT] Filesystem panic from previous error\0A\00", align 1
@EXFAT_ERRORS_RO = common dso_local global i64 0, align 8
@SB_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"[EXFAT] Filesystem has been set read-only\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fs_error(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.exfat_mount_options*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %4)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.exfat_mount_options* %6, %struct.exfat_mount_options** %3, align 8
  %7 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %3, align 8
  %8 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @EXFAT_ERRORS_PANIC, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %32

14:                                               ; preds = %1
  %15 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %3, align 8
  %16 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @EXFAT_ERRORS_RO, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %14
  %21 = load %struct.super_block*, %struct.super_block** %2, align 8
  %22 = call i32 @sb_rdonly(%struct.super_block* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @SB_RDONLY, align 4
  %26 = load %struct.super_block*, %struct.super_block** %2, align 8
  %27 = getelementptr inbounds %struct.super_block, %struct.super_block* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %24, %20, %14
  br label %32

32:                                               ; preds = %31, %12
  ret void
}

declare dso_local %struct.TYPE_2__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
