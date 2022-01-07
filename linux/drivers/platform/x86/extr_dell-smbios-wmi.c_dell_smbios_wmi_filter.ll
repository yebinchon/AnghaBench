; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-smbios-wmi.c_dell_smbios_wmi_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-smbios-wmi.c_dell_smbios_wmi_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi_device = type { i32 }
%struct.wmi_ioctl_buffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32, i32 }
%struct.wmi_smbios_priv = type { i32, %struct.wmi_ioctl_buffer*, i32 }

@call_mutex = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid call %d/%d:%8x\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.wmi_device*, i32, %struct.wmi_ioctl_buffer*)* @dell_smbios_wmi_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dell_smbios_wmi_filter(%struct.wmi_device* %0, i32 %1, %struct.wmi_ioctl_buffer* %2) #0 {
  %4 = alloca %struct.wmi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wmi_ioctl_buffer*, align 8
  %7 = alloca %struct.wmi_smbios_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.wmi_device* %0, %struct.wmi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.wmi_ioctl_buffer* %2, %struct.wmi_ioctl_buffer** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %82 [
    i32 128, label %10
  ]

10:                                               ; preds = %3
  %11 = call i32 @mutex_lock(i32* @call_mutex)
  %12 = load %struct.wmi_device*, %struct.wmi_device** %4, align 8
  %13 = getelementptr inbounds %struct.wmi_device, %struct.wmi_device* %12, i32 0, i32 0
  %14 = call %struct.wmi_smbios_priv* @dev_get_drvdata(i32* %13)
  store %struct.wmi_smbios_priv* %14, %struct.wmi_smbios_priv** %7, align 8
  %15 = load %struct.wmi_smbios_priv*, %struct.wmi_smbios_priv** %7, align 8
  %16 = icmp ne %struct.wmi_smbios_priv* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  br label %80

20:                                               ; preds = %10
  %21 = load %struct.wmi_smbios_priv*, %struct.wmi_smbios_priv** %7, align 8
  %22 = getelementptr inbounds %struct.wmi_smbios_priv, %struct.wmi_smbios_priv* %21, i32 0, i32 1
  %23 = load %struct.wmi_ioctl_buffer*, %struct.wmi_ioctl_buffer** %22, align 8
  %24 = load %struct.wmi_ioctl_buffer*, %struct.wmi_ioctl_buffer** %6, align 8
  %25 = load %struct.wmi_smbios_priv*, %struct.wmi_smbios_priv** %7, align 8
  %26 = getelementptr inbounds %struct.wmi_smbios_priv, %struct.wmi_smbios_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @memcpy(%struct.wmi_ioctl_buffer* %23, %struct.wmi_ioctl_buffer* %24, i32 %27)
  %29 = load %struct.wmi_device*, %struct.wmi_device** %4, align 8
  %30 = getelementptr inbounds %struct.wmi_device, %struct.wmi_device* %29, i32 0, i32 0
  %31 = load %struct.wmi_smbios_priv*, %struct.wmi_smbios_priv** %7, align 8
  %32 = getelementptr inbounds %struct.wmi_smbios_priv, %struct.wmi_smbios_priv* %31, i32 0, i32 1
  %33 = load %struct.wmi_ioctl_buffer*, %struct.wmi_ioctl_buffer** %32, align 8
  %34 = getelementptr inbounds %struct.wmi_ioctl_buffer, %struct.wmi_ioctl_buffer* %33, i32 0, i32 0
  %35 = call i32 @dell_smbios_call_filter(i32* %30, %struct.TYPE_2__* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %63

37:                                               ; preds = %20
  %38 = load %struct.wmi_device*, %struct.wmi_device** %4, align 8
  %39 = getelementptr inbounds %struct.wmi_device, %struct.wmi_device* %38, i32 0, i32 0
  %40 = load %struct.wmi_smbios_priv*, %struct.wmi_smbios_priv** %7, align 8
  %41 = getelementptr inbounds %struct.wmi_smbios_priv, %struct.wmi_smbios_priv* %40, i32 0, i32 1
  %42 = load %struct.wmi_ioctl_buffer*, %struct.wmi_ioctl_buffer** %41, align 8
  %43 = getelementptr inbounds %struct.wmi_ioctl_buffer, %struct.wmi_ioctl_buffer* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.wmi_smbios_priv*, %struct.wmi_smbios_priv** %7, align 8
  %47 = getelementptr inbounds %struct.wmi_smbios_priv, %struct.wmi_smbios_priv* %46, i32 0, i32 1
  %48 = load %struct.wmi_ioctl_buffer*, %struct.wmi_ioctl_buffer** %47, align 8
  %49 = getelementptr inbounds %struct.wmi_ioctl_buffer, %struct.wmi_ioctl_buffer* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.wmi_smbios_priv*, %struct.wmi_smbios_priv** %7, align 8
  %53 = getelementptr inbounds %struct.wmi_smbios_priv, %struct.wmi_smbios_priv* %52, i32 0, i32 1
  %54 = load %struct.wmi_ioctl_buffer*, %struct.wmi_ioctl_buffer** %53, align 8
  %55 = getelementptr inbounds %struct.wmi_ioctl_buffer, %struct.wmi_ioctl_buffer* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %51, i32 %59)
  %61 = load i32, i32* @EFAULT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %80

63:                                               ; preds = %20
  %64 = load %struct.wmi_smbios_priv*, %struct.wmi_smbios_priv** %7, align 8
  %65 = getelementptr inbounds %struct.wmi_smbios_priv, %struct.wmi_smbios_priv* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @run_smbios_call(i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %80

71:                                               ; preds = %63
  %72 = load %struct.wmi_ioctl_buffer*, %struct.wmi_ioctl_buffer** %6, align 8
  %73 = load %struct.wmi_smbios_priv*, %struct.wmi_smbios_priv** %7, align 8
  %74 = getelementptr inbounds %struct.wmi_smbios_priv, %struct.wmi_smbios_priv* %73, i32 0, i32 1
  %75 = load %struct.wmi_ioctl_buffer*, %struct.wmi_ioctl_buffer** %74, align 8
  %76 = load %struct.wmi_smbios_priv*, %struct.wmi_smbios_priv** %7, align 8
  %77 = getelementptr inbounds %struct.wmi_smbios_priv, %struct.wmi_smbios_priv* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @memcpy(%struct.wmi_ioctl_buffer* %72, %struct.wmi_ioctl_buffer* %75, i32 %78)
  br label %80

80:                                               ; preds = %71, %70, %37, %17
  %81 = call i32 @mutex_unlock(i32* @call_mutex)
  br label %85

82:                                               ; preds = %3
  %83 = load i32, i32* @ENOIOCTLCMD, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %82, %80
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  ret i64 %87
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.wmi_smbios_priv* @dev_get_drvdata(i32*) #1

declare dso_local i32 @memcpy(%struct.wmi_ioctl_buffer*, %struct.wmi_ioctl_buffer*, i32) #1

declare dso_local i32 @dell_smbios_call_filter(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @run_smbios_call(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
