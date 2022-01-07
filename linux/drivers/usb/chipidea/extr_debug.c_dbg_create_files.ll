; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_debug.c_dbg_create_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_debug.c_dbg_create_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"device\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@ci_device_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"port_test\00", align 1
@S_IWUSR = common dso_local global i32 0, align 4
@ci_port_test_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"qheads\00", align 1
@ci_qheads_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"requests\00", align 1
@ci_requests_fops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"otg\00", align 1
@ci_otg_fops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@ci_role_fops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"registers\00", align 1
@ci_registers_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dbg_create_files(%struct.ci_hdrc* %0) #0 {
  %2 = alloca %struct.ci_hdrc*, align 8
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %2, align 8
  %3 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %4 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @dev_name(i32 %5)
  %7 = call i32 @debugfs_create_dir(i32 %6, i32* null)
  %8 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %9 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @S_IRUGO, align 4
  %11 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %12 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %15 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13, %struct.ci_hdrc* %14, i32* @ci_device_fops)
  %16 = load i32, i32* @S_IRUGO, align 4
  %17 = load i32, i32* @S_IWUSR, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %20 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %23 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %21, %struct.ci_hdrc* %22, i32* @ci_port_test_fops)
  %24 = load i32, i32* @S_IRUGO, align 4
  %25 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %26 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %29 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %24, i32 %27, %struct.ci_hdrc* %28, i32* @ci_qheads_fops)
  %30 = load i32, i32* @S_IRUGO, align 4
  %31 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %32 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %35 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %30, i32 %33, %struct.ci_hdrc* %34, i32* @ci_requests_fops)
  %36 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %37 = call i64 @ci_otg_is_fsm_mode(%struct.ci_hdrc* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %1
  %40 = load i32, i32* @S_IRUGO, align 4
  %41 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %42 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %45 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %40, i32 %43, %struct.ci_hdrc* %44, i32* @ci_otg_fops)
  br label %46

46:                                               ; preds = %39, %1
  %47 = load i32, i32* @S_IRUGO, align 4
  %48 = load i32, i32* @S_IWUSR, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %51 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %54 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %49, i32 %52, %struct.ci_hdrc* %53, i32* @ci_role_fops)
  %55 = load i32, i32* @S_IRUGO, align 4
  %56 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %57 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %60 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %55, i32 %58, %struct.ci_hdrc* %59, i32* @ci_registers_fops)
  ret void
}

declare dso_local i32 @debugfs_create_dir(i32, i32*) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.ci_hdrc*, i32*) #1

declare dso_local i64 @ci_otg_is_fsm_mode(%struct.ci_hdrc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
