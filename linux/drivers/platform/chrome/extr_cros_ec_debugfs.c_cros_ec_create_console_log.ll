; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_debugfs.c_cros_ec_create_console_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_debugfs.c_cros_ec_create_console_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_debugfs = type { i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.cros_ec_dev* }
%struct.TYPE_6__ = type { i8*, i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i64 }
%struct.cros_ec_dev = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@LOG_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EC_CMD_CONSOLE_READ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"console_log\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@cros_ec_console_log_fops = common dso_local global i32 0, align 4
@cros_ec_console_log_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_debugfs*)* @cros_ec_create_console_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_create_console_log(%struct.cros_ec_debugfs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cros_ec_debugfs*, align 8
  %4 = alloca %struct.cros_ec_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cros_ec_debugfs* %0, %struct.cros_ec_debugfs** %3, align 8
  %8 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %3, align 8
  %9 = getelementptr inbounds %struct.cros_ec_debugfs, %struct.cros_ec_debugfs* %8, i32 0, i32 6
  %10 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %9, align 8
  store %struct.cros_ec_dev* %10, %struct.cros_ec_dev** %4, align 8
  %11 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %12 = call i32 @ec_read_version_supported(%struct.cros_ec_dev* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %106

15:                                               ; preds = %1
  %16 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %17 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i64, i64* @LOG_SIZE, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @devm_kzalloc(i32 %18, i64 %19, i32 %20)
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %106

27:                                               ; preds = %15
  store i32 4, i32* %6, align 4
  %28 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %29 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %34 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @max(i32 %36, i32 %37)
  %39 = add i64 24, %38
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @devm_kzalloc(i32 %35, i64 %39, i32 %40)
  %42 = bitcast i8* %41 to %struct.TYPE_5__*
  %43 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %3, align 8
  %44 = getelementptr inbounds %struct.cros_ec_debugfs, %struct.cros_ec_debugfs* %43, i32 0, i32 5
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %44, align 8
  %45 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %3, align 8
  %46 = getelementptr inbounds %struct.cros_ec_debugfs, %struct.cros_ec_debugfs* %45, i32 0, i32 5
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = icmp ne %struct.TYPE_5__* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %27
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %106

52:                                               ; preds = %27
  %53 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %3, align 8
  %54 = getelementptr inbounds %struct.cros_ec_debugfs, %struct.cros_ec_debugfs* %53, i32 0, i32 5
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load i64, i64* @EC_CMD_CONSOLE_READ, align 8
  %58 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %59 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %3, align 8
  %63 = getelementptr inbounds %struct.cros_ec_debugfs, %struct.cros_ec_debugfs* %62, i32 0, i32 5
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 3
  store i64 %61, i64* %65, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %3, align 8
  %68 = getelementptr inbounds %struct.cros_ec_debugfs, %struct.cros_ec_debugfs* %67, i32 0, i32 5
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %3, align 8
  %73 = getelementptr inbounds %struct.cros_ec_debugfs, %struct.cros_ec_debugfs* %72, i32 0, i32 5
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  store i32 %71, i32* %75, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %3, align 8
  %78 = getelementptr inbounds %struct.cros_ec_debugfs, %struct.cros_ec_debugfs* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store i8* %76, i8** %79, align 8
  %80 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %3, align 8
  %81 = getelementptr inbounds %struct.cros_ec_debugfs, %struct.cros_ec_debugfs* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %3, align 8
  %84 = getelementptr inbounds %struct.cros_ec_debugfs, %struct.cros_ec_debugfs* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  %86 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %3, align 8
  %87 = getelementptr inbounds %struct.cros_ec_debugfs, %struct.cros_ec_debugfs* %86, i32 0, i32 3
  %88 = call i32 @mutex_init(i32* %87)
  %89 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %3, align 8
  %90 = getelementptr inbounds %struct.cros_ec_debugfs, %struct.cros_ec_debugfs* %89, i32 0, i32 2
  %91 = call i32 @init_waitqueue_head(i32* %90)
  %92 = load i32, i32* @S_IFREG, align 4
  %93 = or i32 %92, 292
  %94 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %3, align 8
  %95 = getelementptr inbounds %struct.cros_ec_debugfs, %struct.cros_ec_debugfs* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %3, align 8
  %98 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %93, i32 %96, %struct.cros_ec_debugfs* %97, i32* @cros_ec_console_log_fops)
  %99 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %3, align 8
  %100 = getelementptr inbounds %struct.cros_ec_debugfs, %struct.cros_ec_debugfs* %99, i32 0, i32 0
  %101 = load i32, i32* @cros_ec_console_log_work, align 4
  %102 = call i32 @INIT_DELAYED_WORK(i32* %100, i32 %101)
  %103 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %3, align 8
  %104 = getelementptr inbounds %struct.cros_ec_debugfs, %struct.cros_ec_debugfs* %103, i32 0, i32 0
  %105 = call i32 @schedule_delayed_work(i32* %104, i32 0)
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %52, %49, %24, %14
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @ec_read_version_supported(%struct.cros_ec_dev*) #1

declare dso_local i8* @devm_kzalloc(i32, i64, i32) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.cros_ec_debugfs*, i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
