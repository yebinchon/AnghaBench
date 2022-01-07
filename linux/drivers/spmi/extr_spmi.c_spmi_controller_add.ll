; ModuleID = '/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi.c_spmi_controller_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi.c_spmi_controller_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spmi_controller = type { i32, i32 }

@is_registered = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@CONFIG_OF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"spmi-%d registered: dev:%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spmi_controller_add(%struct.spmi_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spmi_controller*, align 8
  %4 = alloca i32, align 4
  store %struct.spmi_controller* %0, %struct.spmi_controller** %3, align 8
  %5 = load i32, i32* @is_registered, align 4
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @WARN_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EAGAIN, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %38

14:                                               ; preds = %1
  %15 = load %struct.spmi_controller*, %struct.spmi_controller** %3, align 8
  %16 = getelementptr inbounds %struct.spmi_controller, %struct.spmi_controller* %15, i32 0, i32 0
  %17 = call i32 @device_add(i32* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %38

22:                                               ; preds = %14
  %23 = load i32, i32* @CONFIG_OF, align 4
  %24 = call i64 @IS_ENABLED(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.spmi_controller*, %struct.spmi_controller** %3, align 8
  %28 = call i32 @of_spmi_register_devices(%struct.spmi_controller* %27)
  br label %29

29:                                               ; preds = %26, %22
  %30 = load %struct.spmi_controller*, %struct.spmi_controller** %3, align 8
  %31 = getelementptr inbounds %struct.spmi_controller, %struct.spmi_controller* %30, i32 0, i32 0
  %32 = load %struct.spmi_controller*, %struct.spmi_controller** %3, align 8
  %33 = getelementptr inbounds %struct.spmi_controller, %struct.spmi_controller* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.spmi_controller*, %struct.spmi_controller** %3, align 8
  %36 = getelementptr inbounds %struct.spmi_controller, %struct.spmi_controller* %35, i32 0, i32 0
  %37 = call i32 @dev_dbg(i32* %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %34, i32* %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %29, %20, %11
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @device_add(i32*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @of_spmi_register_devices(%struct.spmi_controller*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
