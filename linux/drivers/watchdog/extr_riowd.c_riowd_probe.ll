; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_riowd.c_riowd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_riowd.c_riowd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.riowd = type { i32, i32 }
%struct.platform_device = type { i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@riowd_device = common dso_local global %struct.riowd* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Cannot map registers\0A\00", align 1
@riowd_miscdev = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Cannot register watchdog misc device\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Hardware watchdog [%i minutes], regs at %p\0A\00", align 1
@riowd_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @riowd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @riowd_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.riowd*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.riowd*, %struct.riowd** @riowd_device, align 8
  %9 = icmp ne %struct.riowd* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %64

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.riowd* @devm_kzalloc(i32* %15, i32 8, i32 %16)
  store %struct.riowd* %17, %struct.riowd** %4, align 8
  %18 = load %struct.riowd*, %struct.riowd** %4, align 8
  %19 = icmp ne %struct.riowd* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  br label %64

21:                                               ; preds = %11
  %22 = load %struct.riowd*, %struct.riowd** %4, align 8
  %23 = getelementptr inbounds %struct.riowd, %struct.riowd* %22, i32 0, i32 1
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* @DRIVER_NAME, align 4
  %30 = call i32 @of_ioremap(i32* %28, i32 0, i32 2, i32 %29)
  %31 = load %struct.riowd*, %struct.riowd** %4, align 8
  %32 = getelementptr inbounds %struct.riowd, %struct.riowd* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.riowd*, %struct.riowd** %4, align 8
  %34 = getelementptr inbounds %struct.riowd, %struct.riowd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %21
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %64

39:                                               ; preds = %21
  %40 = load %struct.riowd*, %struct.riowd** %4, align 8
  store %struct.riowd* %40, %struct.riowd** @riowd_device, align 8
  %41 = call i32 @misc_register(i32* @riowd_miscdev)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %55

46:                                               ; preds = %39
  %47 = load i32, i32* @riowd_timeout, align 4
  %48 = load %struct.riowd*, %struct.riowd** %4, align 8
  %49 = getelementptr inbounds %struct.riowd, %struct.riowd* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %50)
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = load %struct.riowd*, %struct.riowd** %4, align 8
  %54 = call i32 @platform_set_drvdata(%struct.platform_device* %52, %struct.riowd* %53)
  store i32 0, i32* %2, align 4
  br label %66

55:                                               ; preds = %44
  store %struct.riowd* null, %struct.riowd** @riowd_device, align 8
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load %struct.riowd*, %struct.riowd** %4, align 8
  %61 = getelementptr inbounds %struct.riowd, %struct.riowd* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @of_iounmap(i32* %59, i32 %62, i32 2)
  br label %64

64:                                               ; preds = %55, %37, %20, %10
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %46
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.riowd* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @of_ioremap(i32*, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @misc_register(i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.riowd*) #1

declare dso_local i32 @of_iounmap(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
