; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_free_scanqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_free_scanqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlme_priv = type { i32, %struct.__queue, %struct.__queue }
%struct.__queue = type { i32, i32 }
%struct.list_head = type { i32 }

@_module_rtl871x_mlme_c_ = common dso_local global i32 0, align 4
@_drv_notice_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"+free_scanqueue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlme_priv*)* @free_scanqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_scanqueue(%struct.mlme_priv* %0) #0 {
  %2 = alloca %struct.mlme_priv*, align 8
  %3 = alloca %struct.__queue*, align 8
  %4 = alloca %struct.__queue*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.list_head*, align 8
  store %struct.mlme_priv* %0, %struct.mlme_priv** %2, align 8
  %8 = load %struct.mlme_priv*, %struct.mlme_priv** %2, align 8
  %9 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %8, i32 0, i32 2
  store %struct.__queue* %9, %struct.__queue** %3, align 8
  %10 = load %struct.mlme_priv*, %struct.mlme_priv** %2, align 8
  %11 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %10, i32 0, i32 1
  store %struct.__queue* %11, %struct.__queue** %4, align 8
  %12 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %13 = load i32, i32* @_drv_notice_, align 4
  %14 = call i32 @RT_TRACE(i32 %12, i32 %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.__queue*, %struct.__queue** %4, align 8
  %16 = getelementptr inbounds %struct.__queue, %struct.__queue* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_bh(i32* %16)
  %18 = load %struct.__queue*, %struct.__queue** %3, align 8
  %19 = getelementptr inbounds %struct.__queue, %struct.__queue* %18, i32 0, i32 0
  %20 = call i32 @spin_lock_bh(i32* %19)
  %21 = load %struct.__queue*, %struct.__queue** %4, align 8
  %22 = call %struct.list_head* @get_list_head(%struct.__queue* %21)
  store %struct.list_head* %22, %struct.list_head** %6, align 8
  %23 = load %struct.list_head*, %struct.list_head** %6, align 8
  %24 = call %struct.list_head* @get_next(%struct.list_head* %23)
  store %struct.list_head* %24, %struct.list_head** %5, align 8
  br label %25

25:                                               ; preds = %29, %1
  %26 = load %struct.list_head*, %struct.list_head** %5, align 8
  %27 = load %struct.list_head*, %struct.list_head** %6, align 8
  %28 = icmp ne %struct.list_head* %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load %struct.list_head*, %struct.list_head** %5, align 8
  %31 = call %struct.list_head* @get_next(%struct.list_head* %30)
  store %struct.list_head* %31, %struct.list_head** %7, align 8
  %32 = load %struct.list_head*, %struct.list_head** %5, align 8
  %33 = call i32 @list_del_init(%struct.list_head* %32)
  %34 = load %struct.list_head*, %struct.list_head** %5, align 8
  %35 = load %struct.__queue*, %struct.__queue** %3, align 8
  %36 = getelementptr inbounds %struct.__queue, %struct.__queue* %35, i32 0, i32 1
  %37 = call i32 @list_add_tail(%struct.list_head* %34, i32* %36)
  %38 = load %struct.list_head*, %struct.list_head** %7, align 8
  store %struct.list_head* %38, %struct.list_head** %5, align 8
  %39 = load %struct.mlme_priv*, %struct.mlme_priv** %2, align 8
  %40 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 4
  br label %25

43:                                               ; preds = %25
  %44 = load %struct.__queue*, %struct.__queue** %3, align 8
  %45 = getelementptr inbounds %struct.__queue, %struct.__queue* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock_bh(i32* %45)
  %47 = load %struct.__queue*, %struct.__queue** %4, align 8
  %48 = getelementptr inbounds %struct.__queue, %struct.__queue* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock_bh(i32* %48)
  ret void
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.list_head* @get_list_head(%struct.__queue*) #1

declare dso_local %struct.list_head* @get_next(%struct.list_head*) #1

declare dso_local i32 @list_del_init(%struct.list_head*) #1

declare dso_local i32 @list_add_tail(%struct.list_head*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
