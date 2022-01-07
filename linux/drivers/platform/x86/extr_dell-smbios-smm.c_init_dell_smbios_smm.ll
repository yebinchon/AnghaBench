; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-smbios-smm.c_init_dell_smbios_smm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-smbios-smm.c_init_dell_smbios_smm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@buffer = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@find_cmd_address = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Disabling due to WSMT enabled\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"dell-smbios\00", align 1
@platform_device = common dso_local global %struct.TYPE_6__* null, align 8
@dell_smbios_smm_call = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_dell_smbios_smm() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = load i32, i32* @GFP_DMA32, align 4
  %5 = or i32 %3, %4
  %6 = call i64 @__get_free_page(i32 %5)
  %7 = inttoptr i64 %6 to i8*
  store i8* %7, i8** @buffer, align 8
  %8 = load i8*, i8** @buffer, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %1, align 4
  br label %55

13:                                               ; preds = %0
  %14 = load i32, i32* @find_cmd_address, align 4
  %15 = call i32 @dmi_walk(i32 %14, i32* null)
  %16 = call i64 (...) @test_wsmt_enabled()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %49

22:                                               ; preds = %13
  %23 = call %struct.TYPE_6__* @platform_device_alloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** @platform_device, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @platform_device, align 8
  %25 = icmp ne %struct.TYPE_6__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %50

29:                                               ; preds = %22
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @platform_device, align 8
  %31 = call i32 @platform_device_add(%struct.TYPE_6__* %30)
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %46

35:                                               ; preds = %29
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @platform_device, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = call i32 @dell_smbios_register_device(i32* %37, i32* @dell_smbios_smm_call)
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* %2, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %43

42:                                               ; preds = %35
  store i32 0, i32* %1, align 4
  br label %55

43:                                               ; preds = %41
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @platform_device, align 8
  %45 = call i32 @platform_device_del(%struct.TYPE_6__* %44)
  br label %46

46:                                               ; preds = %43, %34
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @platform_device, align 8
  %48 = call i32 @platform_device_put(%struct.TYPE_6__* %47)
  br label %49

49:                                               ; preds = %46, %18
  br label %50

50:                                               ; preds = %49, %26
  %51 = load i8*, i8** @buffer, align 8
  %52 = ptrtoint i8* %51 to i64
  %53 = call i32 @free_page(i64 %52)
  %54 = load i32, i32* %2, align 4
  store i32 %54, i32* %1, align 4
  br label %55

55:                                               ; preds = %50, %42, %10
  %56 = load i32, i32* %1, align 4
  ret i32 %56
}

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @dmi_walk(i32, i32*) #1

declare dso_local i64 @test_wsmt_enabled(...) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.TYPE_6__* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @platform_device_add(%struct.TYPE_6__*) #1

declare dso_local i32 @dell_smbios_register_device(i32*, i32*) #1

declare dso_local i32 @platform_device_del(%struct.TYPE_6__*) #1

declare dso_local i32 @platform_device_put(%struct.TYPE_6__*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
