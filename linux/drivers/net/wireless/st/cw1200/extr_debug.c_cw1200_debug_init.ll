; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_debug.c_cw1200_debug_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_debug.c_cw1200_debug_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { %struct.TYPE_3__*, %struct.cw1200_debug_priv* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cw1200_debug_priv = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"cw1200\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@cw1200_status_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"counters\00", align 1
@cw1200_counters_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"wsm_dumps\00", align 1
@fops_wsm_dumps = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cw1200_debug_init(%struct.cw1200_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cw1200_common*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cw1200_debug_priv*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %3, align 8
  %6 = load i32, i32* @ENOMEM, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.cw1200_debug_priv* @kzalloc(i32 4, i32 %8)
  store %struct.cw1200_debug_priv* %9, %struct.cw1200_debug_priv** %5, align 8
  %10 = load %struct.cw1200_debug_priv*, %struct.cw1200_debug_priv** %5, align 8
  %11 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %12 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %11, i32 0, i32 1
  store %struct.cw1200_debug_priv* %10, %struct.cw1200_debug_priv** %12, align 8
  %13 = load %struct.cw1200_debug_priv*, %struct.cw1200_debug_priv** %5, align 8
  %14 = icmp ne %struct.cw1200_debug_priv* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %43

17:                                               ; preds = %1
  %18 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %19 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @debugfs_create_dir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.cw1200_debug_priv*, %struct.cw1200_debug_priv** %5, align 8
  %27 = getelementptr inbounds %struct.cw1200_debug_priv, %struct.cw1200_debug_priv* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.cw1200_debug_priv*, %struct.cw1200_debug_priv** %5, align 8
  %29 = getelementptr inbounds %struct.cw1200_debug_priv, %struct.cw1200_debug_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %32 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 256, i32 %30, %struct.cw1200_common* %31, i32* @cw1200_status_fops)
  %33 = load %struct.cw1200_debug_priv*, %struct.cw1200_debug_priv** %5, align 8
  %34 = getelementptr inbounds %struct.cw1200_debug_priv, %struct.cw1200_debug_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %37 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 256, i32 %35, %struct.cw1200_common* %36, i32* @cw1200_counters_fops)
  %38 = load %struct.cw1200_debug_priv*, %struct.cw1200_debug_priv** %5, align 8
  %39 = getelementptr inbounds %struct.cw1200_debug_priv, %struct.cw1200_debug_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %42 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 128, i32 %40, %struct.cw1200_common* %41, i32* @fops_wsm_dumps)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %17, %15
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.cw1200_debug_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @debugfs_create_dir(i8*, i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.cw1200_common*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
