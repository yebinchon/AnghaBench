; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_debugfs.c_cros_ec_create_panicinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_debugfs.c_cros_ec_create_panicinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_debugfs = type { %struct.TYPE_3__*, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32, %struct.cros_ec_device* }
%struct.cros_ec_device = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.cros_ec_command = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EC_CMD_GET_PANIC_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"panicinfo\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_debugfs*)* @cros_ec_create_panicinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_create_panicinfo(%struct.cros_ec_debugfs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cros_ec_debugfs*, align 8
  %4 = alloca %struct.cros_ec_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cros_ec_command*, align 8
  %7 = alloca i32, align 4
  store %struct.cros_ec_debugfs* %0, %struct.cros_ec_debugfs** %3, align 8
  %8 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %3, align 8
  %9 = getelementptr inbounds %struct.cros_ec_debugfs, %struct.cros_ec_debugfs* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load %struct.cros_ec_device*, %struct.cros_ec_device** %11, align 8
  store %struct.cros_ec_device* %12, %struct.cros_ec_device** %4, align 8
  %13 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %14 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %3, align 8
  %17 = getelementptr inbounds %struct.cros_ec_debugfs, %struct.cros_ec_debugfs* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 12, %22
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.cros_ec_command* @devm_kzalloc(i32 %20, i32 %24, i32 %25)
  store %struct.cros_ec_command* %26, %struct.cros_ec_command** %6, align 8
  %27 = load %struct.cros_ec_command*, %struct.cros_ec_command** %6, align 8
  %28 = icmp ne %struct.cros_ec_command* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %77

32:                                               ; preds = %1
  %33 = load i32, i32* @EC_CMD_GET_PANIC_INFO, align 4
  %34 = load %struct.cros_ec_command*, %struct.cros_ec_command** %6, align 8
  %35 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.cros_ec_command*, %struct.cros_ec_command** %6, align 8
  %38 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %40 = load %struct.cros_ec_command*, %struct.cros_ec_command** %6, align 8
  %41 = call i32 @cros_ec_cmd_xfer_status(%struct.cros_ec_device* %39, %struct.cros_ec_command* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %68

45:                                               ; preds = %32
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %68

49:                                               ; preds = %45
  %50 = load %struct.cros_ec_command*, %struct.cros_ec_command** %6, align 8
  %51 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %3, align 8
  %54 = getelementptr inbounds %struct.cros_ec_debugfs, %struct.cros_ec_debugfs* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %3, align 8
  %58 = getelementptr inbounds %struct.cros_ec_debugfs, %struct.cros_ec_debugfs* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load i32, i32* @S_IFREG, align 4
  %61 = or i32 %60, 292
  %62 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %3, align 8
  %63 = getelementptr inbounds %struct.cros_ec_debugfs, %struct.cros_ec_debugfs* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %3, align 8
  %66 = getelementptr inbounds %struct.cros_ec_debugfs, %struct.cros_ec_debugfs* %65, i32 0, i32 1
  %67 = call i32 @debugfs_create_blob(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %64, %struct.TYPE_4__* %66)
  store i32 0, i32* %2, align 4
  br label %77

68:                                               ; preds = %48, %44
  %69 = load %struct.cros_ec_debugfs*, %struct.cros_ec_debugfs** %3, align 8
  %70 = getelementptr inbounds %struct.cros_ec_debugfs, %struct.cros_ec_debugfs* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.cros_ec_command*, %struct.cros_ec_command** %6, align 8
  %75 = call i32 @devm_kfree(i32 %73, %struct.cros_ec_command* %74)
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %68, %49, %29
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.cros_ec_command* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @cros_ec_cmd_xfer_status(%struct.cros_ec_device*, %struct.cros_ec_command*) #1

declare dso_local i32 @debugfs_create_blob(i8*, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @devm_kfree(i32, %struct.cros_ec_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
