; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2405.c_state_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2405.c_state_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w1_slave = type { %struct.w1_master* }
%struct.w1_master = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"non-consistent state %x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @state_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @state_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.w1_slave*, align 8
  %9 = alloca %struct.w1_master*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.w1_slave* @dev_to_w1_slave(%struct.device* %13)
  store %struct.w1_slave* %14, %struct.w1_slave** %8, align 8
  %15 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %16 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %15, i32 0, i32 0
  %17 = load %struct.w1_master*, %struct.w1_master** %16, align 8
  store %struct.w1_master* %17, %struct.w1_master** %9, align 8
  %18 = load %struct.w1_master*, %struct.w1_master** %9, align 8
  %19 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock_interruptible(i32* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %4, align 4
  br label %60

25:                                               ; preds = %3
  %26 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %27 = call i32 @w1_ds2405_select(%struct.w1_slave* %26, i32 0)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %11, align 4
  br label %53

32:                                               ; preds = %25
  %33 = load %struct.w1_master*, %struct.w1_master** %9, align 8
  %34 = call i32 @w1_read_8(%struct.w1_master* %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 255
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %11, align 4
  br label %53

46:                                               ; preds = %37, %32
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 49, i32 48
  %51 = trunc i32 %50 to i8
  %52 = load i8*, i8** %7, align 8
  store i8 %51, i8* %52, align 1
  store i32 1, i32* %11, align 4
  br label %53

53:                                               ; preds = %46, %40, %29
  %54 = load %struct.w1_master*, %struct.w1_master** %9, align 8
  %55 = call i32 @w1_reset_bus(%struct.w1_master* %54)
  %56 = load %struct.w1_master*, %struct.w1_master** %9, align 8
  %57 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %53, %23
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.w1_slave* @dev_to_w1_slave(%struct.device*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @w1_ds2405_select(%struct.w1_slave*, i32) #1

declare dso_local i32 @w1_read_8(%struct.w1_master*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @w1_reset_bus(%struct.w1_master*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
