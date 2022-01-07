; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_cmd.c_do_core_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_cmd.c_do_core_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_configure_sccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SCLP_HAS_CPU_RECONFIG = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCLP_QUEUE_INTERVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"configure cpu failed (cmd=0x%08x, response=0x%04x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @do_core_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_core_configure(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpu_configure_sccb*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @SCLP_HAS_CPU_RECONFIG, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EOPNOTSUPP, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %52

11:                                               ; preds = %1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = load i32, i32* @GFP_DMA, align 4
  %14 = or i32 %12, %13
  %15 = call %struct.cpu_configure_sccb* @kzalloc(i32 8, i32 %14)
  store %struct.cpu_configure_sccb* %15, %struct.cpu_configure_sccb** %4, align 8
  %16 = load %struct.cpu_configure_sccb*, %struct.cpu_configure_sccb** %4, align 8
  %17 = icmp ne %struct.cpu_configure_sccb* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %52

21:                                               ; preds = %11
  %22 = load %struct.cpu_configure_sccb*, %struct.cpu_configure_sccb** %4, align 8
  %23 = getelementptr inbounds %struct.cpu_configure_sccb, %struct.cpu_configure_sccb* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 8, i32* %24, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.cpu_configure_sccb*, %struct.cpu_configure_sccb** %4, align 8
  %27 = load i32, i32* @SCLP_QUEUE_INTERVAL, align 4
  %28 = call i32 @sclp_sync_request_timeout(i32 %25, %struct.cpu_configure_sccb* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %48

32:                                               ; preds = %21
  %33 = load %struct.cpu_configure_sccb*, %struct.cpu_configure_sccb** %4, align 8
  %34 = getelementptr inbounds %struct.cpu_configure_sccb, %struct.cpu_configure_sccb* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %38 [
    i32 32, label %37
    i32 288, label %37
  ]

37:                                               ; preds = %32, %32
  br label %47

38:                                               ; preds = %32
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.cpu_configure_sccb*, %struct.cpu_configure_sccb** %4, align 8
  %41 = getelementptr inbounds %struct.cpu_configure_sccb, %struct.cpu_configure_sccb* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pr_warn(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %43)
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %38, %37
  br label %48

48:                                               ; preds = %47, %31
  %49 = load %struct.cpu_configure_sccb*, %struct.cpu_configure_sccb** %4, align 8
  %50 = call i32 @kfree(%struct.cpu_configure_sccb* %49)
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %18, %8
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.cpu_configure_sccb* @kzalloc(i32, i32) #1

declare dso_local i32 @sclp_sync_request_timeout(i32, %struct.cpu_configure_sccb*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.cpu_configure_sccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
