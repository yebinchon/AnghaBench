; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_debugfs.c_chip_op_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_debugfs.c_chip_op_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"debugfs chip_op_handler with no callback\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, i64, i8*)* @chip_op_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chip_op_handler(%struct.wl1271* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (%struct.wl1271*)*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = call i32 @wl1271_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %39

13:                                               ; preds = %3
  %14 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %15 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pm_runtime_get_sync(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %22 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pm_runtime_put_noidle(i32 %23)
  br label %39

25:                                               ; preds = %13
  %26 = load i8*, i8** %6, align 8
  %27 = bitcast i8* %26 to i32 (%struct.wl1271*)*
  store i32 (%struct.wl1271*)* %27, i32 (%struct.wl1271*)** %8, align 8
  %28 = load i32 (%struct.wl1271*)*, i32 (%struct.wl1271*)** %8, align 8
  %29 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %30 = call i32 %28(%struct.wl1271* %29)
  %31 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %32 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pm_runtime_mark_last_busy(i32 %33)
  %35 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %36 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pm_runtime_put_autosuspend(i32 %37)
  br label %39

39:                                               ; preds = %25, %20, %11
  ret void
}

declare dso_local i32 @wl1271_warning(i8*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
