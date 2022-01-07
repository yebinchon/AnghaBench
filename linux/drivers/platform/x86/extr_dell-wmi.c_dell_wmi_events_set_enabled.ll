; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-wmi.c_dell_wmi_events_set_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-wmi.c_dell_wmi_events_set_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.calling_interface_buffer = type { i32*, i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CLASS_INFO = common dso_local global i32 0, align 4
@SELECT_APP_REGISTRATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dell_wmi_events_set_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dell_wmi_events_set_enabled(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.calling_interface_buffer*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.calling_interface_buffer* @kzalloc(i32 24, i32 %6)
  store %struct.calling_interface_buffer* %7, %struct.calling_interface_buffer** %4, align 8
  %8 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** %4, align 8
  %9 = icmp ne %struct.calling_interface_buffer* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %48

13:                                               ; preds = %1
  %14 = load i32, i32* @CLASS_INFO, align 4
  %15 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** %4, align 8
  %16 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @SELECT_APP_REGISTRATION, align 4
  %18 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** %4, align 8
  %19 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** %4, align 8
  %21 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 65536, i32* %23, align 4
  %24 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** %4, align 8
  %25 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 1364411732, i32* %27, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** %4, align 8
  %30 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  store i32 %28, i32* %32, align 4
  %33 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** %4, align 8
  %34 = call i32 @dell_smbios_call(%struct.calling_interface_buffer* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %13
  %38 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** %4, align 8
  %39 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %37, %13
  %44 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** %4, align 8
  %45 = call i32 @kfree(%struct.calling_interface_buffer* %44)
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @dell_smbios_error(i32 %46)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %43, %10
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.calling_interface_buffer* @kzalloc(i32, i32) #1

declare dso_local i32 @dell_smbios_call(%struct.calling_interface_buffer*) #1

declare dso_local i32 @kfree(%struct.calling_interface_buffer*) #1

declare dso_local i32 @dell_smbios_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
