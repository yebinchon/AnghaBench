; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_phy.c_rtl92e_scan_op_backup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_phy.c_rtl92e_scan_op_backup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32)* }

@IG_Backup = common dso_local global i32 0, align 4
@IG_Restore = common dso_local global i32 0, align 4
@COMP_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unknown Scan Backup Operation.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92e_scan_op_backup(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %6)
  store %struct.r8192_priv* %7, %struct.r8192_priv** %5, align 8
  %8 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %9 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %32 [
    i32 129, label %14
    i32 128, label %23
  ]

14:                                               ; preds = %12
  %15 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %16 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %18, align 8
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = load i32, i32* @IG_Backup, align 4
  %22 = call i32 %19(%struct.net_device* %20, i32 %21)
  br label %35

23:                                               ; preds = %12
  %24 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %25 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %27, align 8
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = load i32, i32* @IG_Restore, align 4
  %31 = call i32 %28(%struct.net_device* %29, i32 %30)
  br label %35

32:                                               ; preds = %12
  %33 = load i32, i32* @COMP_SCAN, align 4
  %34 = call i32 @RT_TRACE(i32 %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %23, %14
  br label %36

36:                                               ; preds = %35, %2
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
