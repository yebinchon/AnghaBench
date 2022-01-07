; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device.c_initiate_logging.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device.c_initiate_logging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.subchannel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"Logging for subchannel 0.%x.%04x failed with errno=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Logging for subchannel 0.%x.%04x was triggered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @initiate_logging to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initiate_logging(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.subchannel*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.subchannel* @to_subchannel(%struct.device* %12)
  store %struct.subchannel* %13, %struct.subchannel** %10, align 8
  %14 = load %struct.subchannel*, %struct.subchannel** %10, align 8
  %15 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %14, i32 0, i32 0
  %16 = bitcast %struct.TYPE_2__* %15 to i64*
  %17 = load i64, i64* %16, align 4
  %18 = call i32 @chsc_siosl(i64 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %4
  %22 = load %struct.subchannel*, %struct.subchannel** %10, align 8
  %23 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.subchannel*, %struct.subchannel** %10, align 8
  %27 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @pr_warn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %29, i32 %30)
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %45

33:                                               ; preds = %4
  %34 = load %struct.subchannel*, %struct.subchannel** %10, align 8
  %35 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.subchannel*, %struct.subchannel** %10, align 8
  %39 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pr_notice(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %41)
  %43 = load i64, i64* %9, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %33, %21
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.subchannel* @to_subchannel(%struct.device*) #1

declare dso_local i32 @chsc_siosl(i64) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i32) #1

declare dso_local i32 @pr_notice(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
