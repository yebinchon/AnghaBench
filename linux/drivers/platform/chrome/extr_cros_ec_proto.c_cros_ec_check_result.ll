; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_proto.c_cros_ec_check_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_proto.c_cros_ec_check_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_device = type { i32 }
%struct.cros_ec_command = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"command 0x%02x in progress\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"command 0x%02x returned %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cros_ec_check_result(%struct.cros_ec_device* %0, %struct.cros_ec_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cros_ec_device*, align 8
  %5 = alloca %struct.cros_ec_command*, align 8
  store %struct.cros_ec_device* %0, %struct.cros_ec_device** %4, align 8
  store %struct.cros_ec_command* %1, %struct.cros_ec_command** %5, align 8
  %6 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %7 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %20 [
    i32 128, label %9
    i32 129, label %10
  ]

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

10:                                               ; preds = %2
  %11 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %12 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %15 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EAGAIN, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %31

20:                                               ; preds = %2
  %21 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %22 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %25 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %28 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %20, %10, %9
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
