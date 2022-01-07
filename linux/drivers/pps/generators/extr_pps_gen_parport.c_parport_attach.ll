; ModuleID = '/home/carl/AnghaBench/linux/drivers/pps/generators/extr_pps_gen_parport.c_parport_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pps/generators/extr_pps_gen_parport.c_parport_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.parport = type { i32 }
%struct.pardev_cb = type { i32, %struct.TYPE_6__* }

@attached = common dso_local global i32 0, align 4
@device = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@PARPORT_FLAG_EXCL = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"couldn't register with %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"couldn't claim %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"attached to %s\0A\00", align 1
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@hrtimer_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*)* @parport_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parport_attach(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca %struct.pardev_cb, align 8
  store %struct.parport* %0, %struct.parport** %2, align 8
  %4 = load i32, i32* @attached, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %47

7:                                                ; preds = %1
  %8 = call i32 @memset(%struct.pardev_cb* %3, i32 0, i32 16)
  %9 = getelementptr inbounds %struct.pardev_cb, %struct.pardev_cb* %3, i32 0, i32 1
  store %struct.TYPE_6__* @device, %struct.TYPE_6__** %9, align 8
  %10 = load i32, i32* @PARPORT_FLAG_EXCL, align 4
  %11 = getelementptr inbounds %struct.pardev_cb, %struct.pardev_cb* %3, i32 0, i32 0
  store i32 %10, i32* %11, align 8
  %12 = load %struct.parport*, %struct.parport** %2, align 8
  %13 = load i32, i32* @KBUILD_MODNAME, align 4
  %14 = call i32 @parport_register_dev_model(%struct.parport* %12, i32 %13, %struct.pardev_cb* %3, i32 0)
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @device, i32 0, i32 0), align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @device, i32 0, i32 0), align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %7
  %18 = load %struct.parport*, %struct.parport** %2, align 8
  %19 = getelementptr inbounds %struct.parport, %struct.parport* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %47

22:                                               ; preds = %7
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @device, i32 0, i32 0), align 4
  %24 = call i64 @parport_claim_or_block(i32 %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.parport*, %struct.parport** %2, align 8
  %28 = getelementptr inbounds %struct.parport, %struct.parport* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %44

31:                                               ; preds = %22
  %32 = load %struct.parport*, %struct.parport** %2, align 8
  %33 = getelementptr inbounds %struct.parport, %struct.parport* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  store i32 1, i32* @attached, align 4
  %36 = call i32 @calibrate_port(%struct.TYPE_6__* @device)
  %37 = load i32, i32* @CLOCK_REALTIME, align 4
  %38 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %39 = call i32 @hrtimer_init(%struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @device, i32 0, i32 1), i32 %37, i32 %38)
  %40 = load i32, i32* @hrtimer_event, align 4
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @device, i32 0, i32 1, i32 0), align 4
  %41 = call i32 @next_intr_time(%struct.TYPE_6__* @device)
  %42 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %43 = call i32 @hrtimer_start(%struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @device, i32 0, i32 1), i32 %41, i32 %42)
  br label %47

44:                                               ; preds = %26
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @device, i32 0, i32 0), align 4
  %46 = call i32 @parport_unregister_device(i32 %45)
  br label %47

47:                                               ; preds = %44, %31, %17, %6
  ret void
}

declare dso_local i32 @memset(%struct.pardev_cb*, i32, i32) #1

declare dso_local i32 @parport_register_dev_model(%struct.parport*, i32, %struct.pardev_cb*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i64 @parport_claim_or_block(i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @calibrate_port(%struct.TYPE_6__*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @hrtimer_start(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @next_intr_time(%struct.TYPE_6__*) #1

declare dso_local i32 @parport_unregister_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
