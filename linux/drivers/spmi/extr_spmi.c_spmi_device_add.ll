; ModuleID = '/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi.c_spmi_device_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi.c_spmi_device_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spmi_device = type { i32, i32, %struct.spmi_controller* }
%struct.spmi_controller = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%d-%02x\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Can't add %s, status %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"device %s registered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spmi_device_add(%struct.spmi_device* %0) #0 {
  %2 = alloca %struct.spmi_device*, align 8
  %3 = alloca %struct.spmi_controller*, align 8
  %4 = alloca i32, align 4
  store %struct.spmi_device* %0, %struct.spmi_device** %2, align 8
  %5 = load %struct.spmi_device*, %struct.spmi_device** %2, align 8
  %6 = getelementptr inbounds %struct.spmi_device, %struct.spmi_device* %5, i32 0, i32 2
  %7 = load %struct.spmi_controller*, %struct.spmi_controller** %6, align 8
  store %struct.spmi_controller* %7, %struct.spmi_controller** %3, align 8
  %8 = load %struct.spmi_device*, %struct.spmi_device** %2, align 8
  %9 = getelementptr inbounds %struct.spmi_device, %struct.spmi_device* %8, i32 0, i32 0
  %10 = load %struct.spmi_controller*, %struct.spmi_controller** %3, align 8
  %11 = getelementptr inbounds %struct.spmi_controller, %struct.spmi_controller* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.spmi_device*, %struct.spmi_device** %2, align 8
  %14 = getelementptr inbounds %struct.spmi_device, %struct.spmi_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_set_name(i32* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15)
  %17 = load %struct.spmi_device*, %struct.spmi_device** %2, align 8
  %18 = getelementptr inbounds %struct.spmi_device, %struct.spmi_device* %17, i32 0, i32 0
  %19 = call i32 @device_add(i32* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load %struct.spmi_device*, %struct.spmi_device** %2, align 8
  %24 = getelementptr inbounds %struct.spmi_device, %struct.spmi_device* %23, i32 0, i32 0
  %25 = load %struct.spmi_device*, %struct.spmi_device** %2, align 8
  %26 = getelementptr inbounds %struct.spmi_device, %struct.spmi_device* %25, i32 0, i32 0
  %27 = call i32 @dev_name(i32* %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %28)
  br label %37

30:                                               ; preds = %1
  %31 = load %struct.spmi_device*, %struct.spmi_device** %2, align 8
  %32 = getelementptr inbounds %struct.spmi_device, %struct.spmi_device* %31, i32 0, i32 0
  %33 = load %struct.spmi_device*, %struct.spmi_device** %2, align 8
  %34 = getelementptr inbounds %struct.spmi_device, %struct.spmi_device* %33, i32 0, i32 0
  %35 = call i32 @dev_name(i32* %34)
  %36 = call i32 @dev_dbg(i32* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %30, %22
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @dev_set_name(i32*, i8*, i32, i32) #1

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
