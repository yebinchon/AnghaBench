; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_process_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_process_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"resetting controller %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Online Firmware Activation for controller %u: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"SUCCESS\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ABORTED\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_ctrl_info*, i32)* @pqi_process_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_process_soft_reset(%struct.pqi_ctrl_info* %0, i32 %1) #0 {
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %51 [
    i32 131, label %7
    i32 128, label %7
    i32 130, label %18
    i32 132, label %35
    i32 129, label %46
  ]

7:                                                ; preds = %2, %2
  %8 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %9 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %13 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %17 = call i32 @sis_soft_reset(%struct.pqi_ctrl_info* %16)
  br label %18

18:                                               ; preds = %2, %7
  %19 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %20 = call i32 @pqi_ofa_ctrl_restart(%struct.pqi_ctrl_info* %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %22 = call i32 @pqi_ofa_free_host_buffer(%struct.pqi_ctrl_info* %21)
  %23 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %24 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %28 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %34 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %26, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %29, i8* %33)
  br label %51

35:                                               ; preds = %2
  %36 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %37 = call i32 @pqi_ofa_ctrl_unquiesce(%struct.pqi_ctrl_info* %36)
  %38 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %39 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %43 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %41, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %51

46:                                               ; preds = %2
  %47 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %48 = call i32 @pqi_ofa_free_host_buffer(%struct.pqi_ctrl_info* %47)
  %49 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %50 = call i32 @pqi_take_ctrl_offline(%struct.pqi_ctrl_info* %49)
  br label %51

51:                                               ; preds = %2, %46, %35, %18
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i32 @sis_soft_reset(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_ofa_ctrl_restart(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_ofa_free_host_buffer(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_ofa_ctrl_unquiesce(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_take_ctrl_offline(%struct.pqi_ctrl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
