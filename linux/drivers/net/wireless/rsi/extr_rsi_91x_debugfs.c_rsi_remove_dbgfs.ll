; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_debugfs.c_rsi_remove_dbgfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_debugfs.c_rsi_remove_dbgfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsi_hw = type { %struct.rsi_debugfs* }
%struct.rsi_debugfs = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rsi_remove_dbgfs(%struct.rsi_hw* %0) #0 {
  %2 = alloca %struct.rsi_hw*, align 8
  %3 = alloca %struct.rsi_debugfs*, align 8
  store %struct.rsi_hw* %0, %struct.rsi_hw** %2, align 8
  %4 = load %struct.rsi_hw*, %struct.rsi_hw** %2, align 8
  %5 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %4, i32 0, i32 0
  %6 = load %struct.rsi_debugfs*, %struct.rsi_debugfs** %5, align 8
  store %struct.rsi_debugfs* %6, %struct.rsi_debugfs** %3, align 8
  %7 = load %struct.rsi_debugfs*, %struct.rsi_debugfs** %3, align 8
  %8 = icmp ne %struct.rsi_debugfs* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %15

10:                                               ; preds = %1
  %11 = load %struct.rsi_debugfs*, %struct.rsi_debugfs** %3, align 8
  %12 = getelementptr inbounds %struct.rsi_debugfs, %struct.rsi_debugfs* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @debugfs_remove_recursive(i32 %13)
  br label %15

15:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @debugfs_remove_recursive(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
