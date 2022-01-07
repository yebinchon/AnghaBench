; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme.c_rtw_dynamic_check_timer_handlder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme.c_rtw_dynamic_check_timer_handlder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.adapter = type { %struct.TYPE_3__, i64, i64, i64, i32, %struct.registry_priv }
%struct.TYPE_3__ = type { i32 }
%struct.registry_priv = type { i32 }
%struct.timer_list = type { i32 }

@mlmepriv = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@jiffies = common dso_local global i64 0, align 8
@adapter = common dso_local global %struct.adapter* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_dynamic_check_timer_handlder(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.registry_priv*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %3, align 8
  %6 = ptrtoint %struct.adapter* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mlmepriv, i32 0, i32 0), align 4
  %9 = call %struct.adapter* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.adapter* %9, %struct.adapter** %3, align 8
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 5
  store %struct.registry_priv* %11, %struct.registry_priv** %4, align 8
  %12 = load %struct.adapter*, %struct.adapter** %3, align 8
  %13 = icmp ne %struct.adapter* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %57

15:                                               ; preds = %1
  %16 = load %struct.adapter*, %struct.adapter** %3, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %49

21:                                               ; preds = %15
  %22 = load %struct.adapter*, %struct.adapter** %3, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.adapter*, %struct.adapter** %3, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %21
  br label %49

32:                                               ; preds = %26
  %33 = load %struct.adapter*, %struct.adapter** %3, align 8
  %34 = getelementptr inbounds %struct.adapter, %struct.adapter* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %49

38:                                               ; preds = %32
  %39 = load %struct.adapter*, %struct.adapter** %3, align 8
  %40 = call i32 @rtw_dynamic_chk_wk_cmd(%struct.adapter* %39)
  %41 = load %struct.registry_priv*, %struct.registry_priv** %4, align 8
  %42 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load %struct.adapter*, %struct.adapter** %3, align 8
  %47 = call i32 @rtw_auto_scan_handler(%struct.adapter* %46)
  br label %48

48:                                               ; preds = %45, %38
  br label %49

49:                                               ; preds = %48, %37, %31, %20
  %50 = load %struct.adapter*, %struct.adapter** %3, align 8
  %51 = getelementptr inbounds %struct.adapter, %struct.adapter* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* @jiffies, align 8
  %54 = call i64 @msecs_to_jiffies(i32 2000)
  %55 = add nsw i64 %53, %54
  %56 = call i32 @mod_timer(i32* %52, i64 %55)
  br label %57

57:                                               ; preds = %49, %14
  ret void
}

declare dso_local %struct.adapter* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @rtw_dynamic_chk_wk_cmd(%struct.adapter*) #1

declare dso_local i32 @rtw_auto_scan_handler(%struct.adapter*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
