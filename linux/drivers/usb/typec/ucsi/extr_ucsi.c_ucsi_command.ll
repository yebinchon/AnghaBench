; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.c_ucsi_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.c_ucsi_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucsi = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, %struct.ucsi_control*)* }
%struct.ucsi_control = type { i32 }

@COMMAND_PENDING = common dso_local global i32 0, align 4
@UCSI_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"PPM NOT RESPONDING\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucsi*, %struct.ucsi_control*)* @ucsi_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucsi_command(%struct.ucsi* %0, %struct.ucsi_control* %1) #0 {
  %3 = alloca %struct.ucsi*, align 8
  %4 = alloca %struct.ucsi_control*, align 8
  %5 = alloca i32, align 4
  store %struct.ucsi* %0, %struct.ucsi** %3, align 8
  store %struct.ucsi_control* %1, %struct.ucsi_control** %4, align 8
  %6 = load %struct.ucsi_control*, %struct.ucsi_control** %4, align 8
  %7 = call i32 @trace_ucsi_command(%struct.ucsi_control* %6)
  %8 = load i32, i32* @COMMAND_PENDING, align 4
  %9 = load %struct.ucsi*, %struct.ucsi** %3, align 8
  %10 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %9, i32 0, i32 0
  %11 = call i32 @set_bit(i32 %8, i32* %10)
  %12 = load %struct.ucsi*, %struct.ucsi** %3, align 8
  %13 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TYPE_2__*, %struct.ucsi_control*)*, i32 (%struct.TYPE_2__*, %struct.ucsi_control*)** %15, align 8
  %17 = load %struct.ucsi*, %struct.ucsi** %3, align 8
  %18 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %17, i32 0, i32 3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load %struct.ucsi_control*, %struct.ucsi_control** %4, align 8
  %21 = call i32 %16(%struct.TYPE_2__* %19, %struct.ucsi_control* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %40

25:                                               ; preds = %2
  %26 = load %struct.ucsi*, %struct.ucsi** %3, align 8
  %27 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %26, i32 0, i32 2
  %28 = load i32, i32* @UCSI_TIMEOUT_MS, align 4
  %29 = call i32 @msecs_to_jiffies(i32 %28)
  %30 = call i32 @wait_for_completion_timeout(i32* %27, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %25
  %33 = load %struct.ucsi*, %struct.ucsi** %3, align 8
  %34 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_warn(i32 %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ETIMEDOUT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %32, %25
  br label %40

40:                                               ; preds = %39, %24
  %41 = load i32, i32* @COMMAND_PENDING, align 4
  %42 = load %struct.ucsi*, %struct.ucsi** %3, align 8
  %43 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %42, i32 0, i32 0
  %44 = call i32 @clear_bit(i32 %41, i32* %43)
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @trace_ucsi_command(%struct.ucsi_control*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
