; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_cmd.c_rtw_enqueue_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_cmd.c_rtw_enqueue_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_priv = type { i32, i32, %struct.adapter* }
%struct.adapter = type { i32 }
%struct.cmd_obj = type { %struct.adapter* }

@_FAIL = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_enqueue_cmd(%struct.cmd_priv* %0, %struct.cmd_obj* %1) #0 {
  %3 = alloca %struct.cmd_priv*, align 8
  %4 = alloca %struct.cmd_obj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  store %struct.cmd_priv* %0, %struct.cmd_priv** %3, align 8
  store %struct.cmd_obj* %1, %struct.cmd_obj** %4, align 8
  %7 = load i32, i32* @_FAIL, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.cmd_priv*, %struct.cmd_priv** %3, align 8
  %9 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %8, i32 0, i32 2
  %10 = load %struct.adapter*, %struct.adapter** %9, align 8
  store %struct.adapter* %10, %struct.adapter** %6, align 8
  %11 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %12 = icmp ne %struct.cmd_obj* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %40

14:                                               ; preds = %2
  %15 = load %struct.adapter*, %struct.adapter** %6, align 8
  %16 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %17 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %16, i32 0, i32 0
  store %struct.adapter* %15, %struct.adapter** %17, align 8
  %18 = load %struct.cmd_priv*, %struct.cmd_priv** %3, align 8
  %19 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %20 = call i32 @rtw_cmd_filter(%struct.cmd_priv* %18, %struct.cmd_obj* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @_FAIL, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %26 = call i32 @rtw_free_cmd_obj(%struct.cmd_obj* %25)
  br label %40

27:                                               ; preds = %14
  %28 = load %struct.cmd_priv*, %struct.cmd_priv** %3, align 8
  %29 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %28, i32 0, i32 1
  %30 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %31 = call i32 @_rtw_enqueue_cmd(i32* %29, %struct.cmd_obj* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @_SUCCESS, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load %struct.cmd_priv*, %struct.cmd_priv** %3, align 8
  %37 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %36, i32 0, i32 0
  %38 = call i32 @complete(i32* %37)
  br label %39

39:                                               ; preds = %35, %27
  br label %40

40:                                               ; preds = %39, %24, %13
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @rtw_cmd_filter(%struct.cmd_priv*, %struct.cmd_obj*) #1

declare dso_local i32 @rtw_free_cmd_obj(%struct.cmd_obj*) #1

declare dso_local i32 @_rtw_enqueue_cmd(i32*, %struct.cmd_obj*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
