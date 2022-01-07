; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_do_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_do_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hpsa_scsi_dev_t = type { i32, i32 }

@EINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"concurrent reset wait interrupted.\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Controller lockup detected during reset wait\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, %struct.hpsa_scsi_dev_t*, i32, i32)* @hpsa_do_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_do_reset(%struct.ctlr_info* %0, %struct.hpsa_scsi_dev_t* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ctlr_info*, align 8
  %7 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %6, align 8
  store %struct.hpsa_scsi_dev_t* %1, %struct.hpsa_scsi_dev_t** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %12 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock_interruptible(i32* %12)
  %14 = load i32, i32* @EINTR, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %19 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @dev_warn(i32* %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINTR, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %79

25:                                               ; preds = %4
  %26 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %27 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @hpsa_send_reset(%struct.ctlr_info* %26, %struct.hpsa_scsi_dev_t* %27, i32 %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %52, label %33

33:                                               ; preds = %25
  %34 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %35 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %34, i32 0, i32 1
  %36 = call i32 @atomic_dec(i32* %35)
  %37 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %38 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %41 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %40, i32 0, i32 1
  %42 = call i64 @atomic_read(i32* %41)
  %43 = icmp sle i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %33
  %45 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %46 = call i64 @lockup_detected(%struct.ctlr_info* %45)
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %44, %33
  %49 = phi i1 [ true, %33 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @wait_event(i32 %39, i32 %50)
  br label %52

52:                                               ; preds = %48, %25
  %53 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %54 = call i64 @lockup_detected(%struct.ctlr_info* %53)
  %55 = call i64 @unlikely(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %59 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @dev_warn(i32* %61, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %57, %52
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %70 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %71 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @wait_for_device_to_become_ready(%struct.ctlr_info* %69, i32 %72, i32 0)
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %68, %65
  %75 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %76 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %74, %17
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @hpsa_send_reset(%struct.ctlr_info*, %struct.hpsa_scsi_dev_t*, i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @lockup_detected(%struct.ctlr_info*) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @wait_for_device_to_become_ready(%struct.ctlr_info*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
