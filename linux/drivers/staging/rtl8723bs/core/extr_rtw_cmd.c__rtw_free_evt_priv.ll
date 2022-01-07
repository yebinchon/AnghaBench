; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c__rtw_free_evt_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c__rtw_free_evt_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evt_priv = type { i8*, i64, i32 }

@_module_rtl871x_cmd_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"+_rtw_free_evt_priv\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"-_rtw_free_evt_priv\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_rtw_free_evt_priv(%struct.evt_priv* %0) #0 {
  %2 = alloca %struct.evt_priv*, align 8
  %3 = alloca i8*, align 8
  store %struct.evt_priv* %0, %struct.evt_priv** %2, align 8
  %4 = load i32, i32* @_module_rtl871x_cmd_c_, align 4
  %5 = load i32, i32* @_drv_info_, align 4
  %6 = call i32 @RT_TRACE(i32 %4, i32 %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.evt_priv*, %struct.evt_priv** %2, align 8
  %8 = getelementptr inbounds %struct.evt_priv, %struct.evt_priv* %7, i32 0, i32 2
  %9 = call i32 @_cancel_workitem_sync(i32* %8)
  br label %10

10:                                               ; preds = %15, %1
  %11 = load %struct.evt_priv*, %struct.evt_priv** %2, align 8
  %12 = getelementptr inbounds %struct.evt_priv, %struct.evt_priv* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 @msleep(i32 10)
  br label %10

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %40, %17
  %19 = load %struct.evt_priv*, %struct.evt_priv** %2, align 8
  %20 = getelementptr inbounds %struct.evt_priv, %struct.evt_priv* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @rtw_cbuf_empty(i8* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %41

25:                                               ; preds = %18
  %26 = load %struct.evt_priv*, %struct.evt_priv** %2, align 8
  %27 = getelementptr inbounds %struct.evt_priv, %struct.evt_priv* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @rtw_cbuf_pop(i8* %28)
  store i8* %29, i8** %3, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load i8*, i8** %3, align 8
  %34 = load %struct.evt_priv*, %struct.evt_priv** %2, align 8
  %35 = bitcast %struct.evt_priv* %34 to i8*
  %36 = icmp ne i8* %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @kfree(i8* %38)
  br label %40

40:                                               ; preds = %37, %32, %25
  br label %18

41:                                               ; preds = %18
  %42 = load %struct.evt_priv*, %struct.evt_priv** %2, align 8
  %43 = getelementptr inbounds %struct.evt_priv, %struct.evt_priv* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @kfree(i8* %44)
  %46 = load i32, i32* @_module_rtl871x_cmd_c_, align 4
  %47 = load i32, i32* @_drv_info_, align 4
  %48 = call i32 @RT_TRACE(i32 %46, i32 %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @_cancel_workitem_sync(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rtw_cbuf_empty(i8*) #1

declare dso_local i8* @rtw_cbuf_pop(i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
