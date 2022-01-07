; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_cmd_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_cmd_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cmd_obj = type { i64 }

@_SetChannelPlan = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_cmd_filter(%struct.cmd_priv* %0, %struct.cmd_obj* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd_priv*, align 8
  %5 = alloca %struct.cmd_obj*, align 8
  %6 = alloca i32, align 4
  store %struct.cmd_priv* %0, %struct.cmd_priv** %4, align 8
  store %struct.cmd_obj* %1, %struct.cmd_obj** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %8 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* @_SetChannelPlan, align 4
  %11 = call i64 @GEN_CMD_CODE(i32 %10)
  %12 = icmp eq i64 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %14

14:                                               ; preds = %13, %2
  %15 = load %struct.cmd_priv*, %struct.cmd_priv** %4, align 8
  %16 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21, %14
  %25 = load %struct.cmd_priv*, %struct.cmd_priv** %4, align 8
  %26 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %25, i32 0, i32 0
  %27 = call i32 @atomic_read(i32* %26)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24, %21
  %30 = load i32, i32* @_FAIL, align 4
  store i32 %30, i32* %3, align 4
  br label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @_SUCCESS, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @GEN_CMD_CODE(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
