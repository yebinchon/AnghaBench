; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_debugfs.c_cros_ec_debugfs_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_debugfs.c_cros_ec_debugfs_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.cros_ec_dev = type { %struct.cros_ec_debugfs*, %struct.TYPE_3__*, i32 }
%struct.cros_ec_debugfs = type { i32, %struct.cros_ec_dev* }
%struct.TYPE_3__ = type { i32 }
%struct.cros_ec_platform = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"pdinfo\00", align 1
@cros_ec_pdinfo_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"uptime\00", align 1
@cros_ec_uptime_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"last_resume_result\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cros_ec_debugfs_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_debugfs_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.cros_ec_dev*, align 8
  %5 = alloca %struct.cros_ec_platform*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cros_ec_debugfs*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.cros_ec_dev* @dev_get_drvdata(i32 %12)
  store %struct.cros_ec_dev* %13, %struct.cros_ec_dev** %4, align 8
  %14 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %15 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.cros_ec_platform* @dev_get_platdata(i32 %16)
  store %struct.cros_ec_platform* %17, %struct.cros_ec_platform** %5, align 8
  %18 = load %struct.cros_ec_platform*, %struct.cros_ec_platform** %5, align 8
  %19 = getelementptr inbounds %struct.cros_ec_platform, %struct.cros_ec_platform* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %6, align 8
  %21 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %22 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.cros_ec_debugfs* @devm_kzalloc(i32 %23, i32 16, i32 %24)
  store %struct.cros_ec_debugfs* %25, %struct.cros_ec_debugfs** %7, align 8
  %26 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %7, align 8
  %27 = icmp ne %struct.cros_ec_debugfs* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %82

31:                                               ; preds = %1
  %32 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %33 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %7, align 8
  %34 = getelementptr inbounds %struct.cros_ec_debugfs, %struct.cros_ec_debugfs* %33, i32 0, i32 1
  store %struct.cros_ec_dev* %32, %struct.cros_ec_dev** %34, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @debugfs_create_dir(i8* %35, i32* null)
  %37 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %7, align 8
  %38 = getelementptr inbounds %struct.cros_ec_debugfs, %struct.cros_ec_debugfs* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %7, align 8
  %40 = call i32 @cros_ec_create_panicinfo(%struct.cros_ec_debugfs* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %76

44:                                               ; preds = %31
  %45 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %7, align 8
  %46 = call i32 @cros_ec_create_console_log(%struct.cros_ec_debugfs* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %76

50:                                               ; preds = %44
  %51 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %7, align 8
  %52 = getelementptr inbounds %struct.cros_ec_debugfs, %struct.cros_ec_debugfs* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %7, align 8
  %55 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 292, i32 %53, %struct.cros_ec_debugfs* %54, i32* @cros_ec_pdinfo_fops)
  %56 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %7, align 8
  %57 = getelementptr inbounds %struct.cros_ec_debugfs, %struct.cros_ec_debugfs* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %7, align 8
  %60 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 292, i32 %58, %struct.cros_ec_debugfs* %59, i32* @cros_ec_uptime_fops)
  %61 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %7, align 8
  %62 = getelementptr inbounds %struct.cros_ec_debugfs, %struct.cros_ec_debugfs* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %65 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = call i32 @debugfs_create_x32(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 292, i32 %63, i32* %67)
  %69 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %7, align 8
  %70 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %71 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %70, i32 0, i32 0
  store %struct.cros_ec_debugfs* %69, %struct.cros_ec_debugfs** %71, align 8
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %75 = call i32 @dev_set_drvdata(%struct.TYPE_4__* %73, %struct.cros_ec_dev* %74)
  store i32 0, i32* %2, align 4
  br label %82

76:                                               ; preds = %49, %43
  %77 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %7, align 8
  %78 = getelementptr inbounds %struct.cros_ec_debugfs, %struct.cros_ec_debugfs* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @debugfs_remove_recursive(i32 %79)
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %76, %50, %28
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.cros_ec_dev* @dev_get_drvdata(i32) #1

declare dso_local %struct.cros_ec_platform* @dev_get_platdata(i32) #1

declare dso_local %struct.cros_ec_debugfs* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @debugfs_create_dir(i8*, i32*) #1

declare dso_local i32 @cros_ec_create_panicinfo(%struct.cros_ec_debugfs*) #1

declare dso_local i32 @cros_ec_create_console_log(%struct.cros_ec_debugfs*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.cros_ec_debugfs*, i32*) #1

declare dso_local i32 @debugfs_create_x32(i8*, i32, i32, i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_4__*, %struct.cros_ec_dev*) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
