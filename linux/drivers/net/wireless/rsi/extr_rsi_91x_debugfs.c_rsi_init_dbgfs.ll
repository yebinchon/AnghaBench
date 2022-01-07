; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_debugfs.c_rsi_init_dbgfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_debugfs.c_rsi_init_dbgfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsi_dbg_files = type { i32, i32, i32 }
%struct.rsi_hw = type { i32, %struct.TYPE_2__*, %struct.rsi_debugfs*, %struct.rsi_common* }
%struct.TYPE_2__ = type { i32 }
%struct.rsi_debugfs = type { i32, i32* }
%struct.rsi_common = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@dev_debugfs_files = common dso_local global %struct.rsi_dbg_files* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsi_init_dbgfs(%struct.rsi_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsi_hw*, align 8
  %4 = alloca %struct.rsi_common*, align 8
  %5 = alloca %struct.rsi_debugfs*, align 8
  %6 = alloca [6 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca %struct.rsi_dbg_files*, align 8
  store %struct.rsi_hw* %0, %struct.rsi_hw** %3, align 8
  %9 = load %struct.rsi_hw*, %struct.rsi_hw** %3, align 8
  %10 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %9, i32 0, i32 3
  %11 = load %struct.rsi_common*, %struct.rsi_common** %10, align 8
  store %struct.rsi_common* %11, %struct.rsi_common** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.rsi_debugfs* @kzalloc(i32 16, i32 %12)
  store %struct.rsi_debugfs* %13, %struct.rsi_debugfs** %5, align 8
  %14 = load %struct.rsi_debugfs*, %struct.rsi_debugfs** %5, align 8
  %15 = icmp ne %struct.rsi_debugfs* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %69

19:                                               ; preds = %1
  %20 = load %struct.rsi_debugfs*, %struct.rsi_debugfs** %5, align 8
  %21 = load %struct.rsi_hw*, %struct.rsi_hw** %3, align 8
  %22 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %21, i32 0, i32 2
  store %struct.rsi_debugfs* %20, %struct.rsi_debugfs** %22, align 8
  %23 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %24 = load %struct.rsi_hw*, %struct.rsi_hw** %3, align 8
  %25 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @wiphy_name(i32 %28)
  %30 = call i32 @snprintf(i8* %23, i32 6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %32 = call i32 @debugfs_create_dir(i8* %31, i32* null)
  %33 = load %struct.rsi_debugfs*, %struct.rsi_debugfs** %5, align 8
  %34 = getelementptr inbounds %struct.rsi_debugfs, %struct.rsi_debugfs* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %65, %19
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.rsi_hw*, %struct.rsi_hw** %3, align 8
  %38 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %35
  %42 = load %struct.rsi_dbg_files*, %struct.rsi_dbg_files** @dev_debugfs_files, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.rsi_dbg_files, %struct.rsi_dbg_files* %42, i64 %44
  store %struct.rsi_dbg_files* %45, %struct.rsi_dbg_files** %8, align 8
  %46 = load %struct.rsi_dbg_files*, %struct.rsi_dbg_files** %8, align 8
  %47 = getelementptr inbounds %struct.rsi_dbg_files, %struct.rsi_dbg_files* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.rsi_dbg_files*, %struct.rsi_dbg_files** %8, align 8
  %50 = getelementptr inbounds %struct.rsi_dbg_files, %struct.rsi_dbg_files* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.rsi_debugfs*, %struct.rsi_debugfs** %5, align 8
  %53 = getelementptr inbounds %struct.rsi_debugfs, %struct.rsi_debugfs* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %56 = load %struct.rsi_dbg_files*, %struct.rsi_dbg_files** %8, align 8
  %57 = getelementptr inbounds %struct.rsi_dbg_files, %struct.rsi_dbg_files* %56, i32 0, i32 0
  %58 = call i32 @debugfs_create_file(i32 %48, i32 %51, i32 %54, %struct.rsi_common* %55, i32* %57)
  %59 = load %struct.rsi_debugfs*, %struct.rsi_debugfs** %5, align 8
  %60 = getelementptr inbounds %struct.rsi_debugfs, %struct.rsi_debugfs* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %58, i32* %64, align 4
  br label %65

65:                                               ; preds = %41
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %35

68:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %16
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.rsi_debugfs* @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @wiphy_name(i32) #1

declare dso_local i32 @debugfs_create_dir(i8*, i32*) #1

declare dso_local i32 @debugfs_create_file(i32, i32, i32, %struct.rsi_common*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
