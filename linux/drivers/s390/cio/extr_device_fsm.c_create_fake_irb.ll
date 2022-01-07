; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_fsm.c_create_fake_irb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_fsm.c_create_fake_irb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tm_scsw, %struct.cmd_scsw }
%struct.tm_scsw = type { i32, i32, i8*, i8*, i8* }
%struct.cmd_scsw = type { i32, i8*, i8*, i8* }

@FAKE_CMD_IRB = common dso_local global i32 0, align 4
@SCSW_FCTL_START_FUNC = common dso_local global i8* null, align 8
@SCSW_ACTL_START_PEND = common dso_local global i8* null, align 8
@SCSW_STCTL_STATUS_PEND = common dso_local global i8* null, align 8
@FAKE_TM_IRB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irb*, i32)* @create_fake_irb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_fake_irb(%struct.irb* %0, i32 %1) #0 {
  %3 = alloca %struct.irb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmd_scsw*, align 8
  %6 = alloca %struct.tm_scsw*, align 8
  store %struct.irb* %0, %struct.irb** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.irb*, %struct.irb** %3, align 8
  %8 = call i32 @memset(%struct.irb* %7, i32 0, i32 64)
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @FAKE_CMD_IRB, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = load %struct.irb*, %struct.irb** %3, align 8
  %14 = getelementptr inbounds %struct.irb, %struct.irb* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store %struct.cmd_scsw* %15, %struct.cmd_scsw** %5, align 8
  %16 = load %struct.cmd_scsw*, %struct.cmd_scsw** %5, align 8
  %17 = getelementptr inbounds %struct.cmd_scsw, %struct.cmd_scsw* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load i8*, i8** @SCSW_FCTL_START_FUNC, align 8
  %19 = load %struct.cmd_scsw*, %struct.cmd_scsw** %5, align 8
  %20 = getelementptr inbounds %struct.cmd_scsw, %struct.cmd_scsw* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** @SCSW_ACTL_START_PEND, align 8
  %22 = load %struct.cmd_scsw*, %struct.cmd_scsw** %5, align 8
  %23 = getelementptr inbounds %struct.cmd_scsw, %struct.cmd_scsw* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @SCSW_STCTL_STATUS_PEND, align 8
  %25 = load %struct.cmd_scsw*, %struct.cmd_scsw** %5, align 8
  %26 = getelementptr inbounds %struct.cmd_scsw, %struct.cmd_scsw* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  br label %49

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @FAKE_TM_IRB, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = load %struct.irb*, %struct.irb** %3, align 8
  %33 = getelementptr inbounds %struct.irb, %struct.irb* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store %struct.tm_scsw* %34, %struct.tm_scsw** %6, align 8
  %35 = load %struct.tm_scsw*, %struct.tm_scsw** %6, align 8
  %36 = getelementptr inbounds %struct.tm_scsw, %struct.tm_scsw* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.tm_scsw*, %struct.tm_scsw** %6, align 8
  %38 = getelementptr inbounds %struct.tm_scsw, %struct.tm_scsw* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load i8*, i8** @SCSW_FCTL_START_FUNC, align 8
  %40 = load %struct.tm_scsw*, %struct.tm_scsw** %6, align 8
  %41 = getelementptr inbounds %struct.tm_scsw, %struct.tm_scsw* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** @SCSW_ACTL_START_PEND, align 8
  %43 = load %struct.tm_scsw*, %struct.tm_scsw** %6, align 8
  %44 = getelementptr inbounds %struct.tm_scsw, %struct.tm_scsw* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** @SCSW_STCTL_STATUS_PEND, align 8
  %46 = load %struct.tm_scsw*, %struct.tm_scsw** %6, align 8
  %47 = getelementptr inbounds %struct.tm_scsw, %struct.tm_scsw* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %31, %27
  br label %49

49:                                               ; preds = %48, %12
  ret void
}

declare dso_local i32 @memset(%struct.irb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
