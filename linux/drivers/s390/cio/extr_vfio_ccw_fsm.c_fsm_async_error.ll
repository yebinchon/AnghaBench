; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_fsm.c_fsm_async_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_fsm.c_fsm_async_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_ccw_private = type { i32, %struct.ccw_cmd_region* }
%struct.ccw_cmd_region = type { i64, i32 }

@.str = private unnamed_addr constant [41 x i8] c"vfio-ccw: FSM: %s request from state:%d\0A\00", align 1
@VFIO_CCW_ASYNC_CMD_HSCH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"halt\00", align 1
@VFIO_CCW_ASYNC_CMD_CSCH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfio_ccw_private*, i32)* @fsm_async_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsm_async_error(%struct.vfio_ccw_private* %0, i32 %1) #0 {
  %3 = alloca %struct.vfio_ccw_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ccw_cmd_region*, align 8
  store %struct.vfio_ccw_private* %0, %struct.vfio_ccw_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %7 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %6, i32 0, i32 1
  %8 = load %struct.ccw_cmd_region*, %struct.ccw_cmd_region** %7, align 8
  store %struct.ccw_cmd_region* %8, %struct.ccw_cmd_region** %5, align 8
  %9 = load %struct.ccw_cmd_region*, %struct.ccw_cmd_region** %5, align 8
  %10 = getelementptr inbounds %struct.ccw_cmd_region, %struct.ccw_cmd_region* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @VFIO_CCW_ASYNC_CMD_HSCH, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %23

15:                                               ; preds = %2
  %16 = load %struct.ccw_cmd_region*, %struct.ccw_cmd_region** %5, align 8
  %17 = getelementptr inbounds %struct.ccw_cmd_region, %struct.ccw_cmd_region* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @VFIO_CCW_ASYNC_CMD_CSCH, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  br label %23

23:                                               ; preds = %15, %14
  %24 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %14 ], [ %22, %15 ]
  %25 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %26 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %27)
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  %31 = load %struct.ccw_cmd_region*, %struct.ccw_cmd_region** %5, align 8
  %32 = getelementptr inbounds %struct.ccw_cmd_region, %struct.ccw_cmd_region* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  ret void
}

declare dso_local i32 @pr_err(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
