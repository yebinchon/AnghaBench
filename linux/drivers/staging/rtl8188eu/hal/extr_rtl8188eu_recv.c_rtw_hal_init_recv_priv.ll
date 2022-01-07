; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188eu_recv.c_rtw_hal_init_recv_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188eu_recv.c_rtw_hal_init_recv_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.recv_priv }
%struct.recv_priv = type { i32, i32, %struct.recv_buf*, i32, i32 }
%struct.recv_buf = type { %struct.adapter* }
%struct.sk_buff = type { i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@rtl8188eu_recv_tasklet = common dso_local global i64 0, align 8
@NR_RECVBUFF = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@_module_rtl871x_recv_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"alloc recv_buf fail!\0A\00", align 1
@NR_PREALLOC_RECV_SKB = common dso_local global i32 0, align 4
@MAX_RECVBUF_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_hal_init_recv_priv(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.recv_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.recv_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %9 = load %struct.adapter*, %struct.adapter** %2, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 1
  store %struct.recv_priv* %10, %struct.recv_priv** %3, align 8
  %11 = load i32, i32* @_SUCCESS, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %13 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %12, i32 0, i32 4
  %14 = load i64, i64* @rtl8188eu_recv_tasklet, align 8
  %15 = inttoptr i64 %14 to void (i64)*
  %16 = load %struct.adapter*, %struct.adapter** %2, align 8
  %17 = ptrtoint %struct.adapter* %16 to i64
  %18 = call i32 @tasklet_init(i32* %13, void (i64)* %15, i64 %17)
  %19 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %20 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %19, i32 0, i32 3
  %21 = call i32 @_rtw_init_queue(i32* %20)
  %22 = load i32, i32* @NR_RECVBUFF, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.recv_buf* @kcalloc(i32 %22, i32 8, i32 %23)
  %25 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %26 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %25, i32 0, i32 2
  store %struct.recv_buf* %24, %struct.recv_buf** %26, align 8
  %27 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %28 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %27, i32 0, i32 2
  %29 = load %struct.recv_buf*, %struct.recv_buf** %28, align 8
  %30 = icmp ne %struct.recv_buf* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @_FAIL, align 4
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %34 = load i32, i32* @_drv_err_, align 4
  %35 = call i32 @RT_TRACE(i32 %33, i32 %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %93

36:                                               ; preds = %1
  %37 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %38 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %37, i32 0, i32 2
  %39 = load %struct.recv_buf*, %struct.recv_buf** %38, align 8
  store %struct.recv_buf* %39, %struct.recv_buf** %6, align 8
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %58, %36
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @NR_RECVBUFF, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = load %struct.adapter*, %struct.adapter** %2, align 8
  %46 = load %struct.recv_buf*, %struct.recv_buf** %6, align 8
  %47 = call i32 @rtw_os_recvbuf_resource_alloc(%struct.adapter* %45, %struct.recv_buf* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @_FAIL, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %61

52:                                               ; preds = %44
  %53 = load %struct.adapter*, %struct.adapter** %2, align 8
  %54 = load %struct.recv_buf*, %struct.recv_buf** %6, align 8
  %55 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %54, i32 0, i32 0
  store %struct.adapter* %53, %struct.adapter** %55, align 8
  %56 = load %struct.recv_buf*, %struct.recv_buf** %6, align 8
  %57 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %56, i32 1
  store %struct.recv_buf* %57, %struct.recv_buf** %6, align 8
  br label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %40

61:                                               ; preds = %51, %40
  %62 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %63 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %62, i32 0, i32 1
  %64 = call i32 @skb_queue_head_init(i32* %63)
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  %65 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %66 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %65, i32 0, i32 0
  %67 = call i32 @skb_queue_head_init(i32* %66)
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %89, %61
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @NR_PREALLOC_RECV_SKB, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %92

72:                                               ; preds = %68
  %73 = load %struct.adapter*, %struct.adapter** %2, align 8
  %74 = getelementptr inbounds %struct.adapter, %struct.adapter* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @MAX_RECVBUF_SZ, align 4
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call %struct.sk_buff* @__netdev_alloc_skb(i32 %75, i32 %76, i32 %77)
  store %struct.sk_buff* %78, %struct.sk_buff** %8, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %80 = icmp ne %struct.sk_buff* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %72
  %82 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %83 = call i32 @kmemleak_not_leak(%struct.sk_buff* %82)
  %84 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %85 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %84, i32 0, i32 0
  %86 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %87 = call i32 @skb_queue_tail(i32* %85, %struct.sk_buff* %86)
  br label %88

88:                                               ; preds = %81, %72
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %68

92:                                               ; preds = %68
  br label %93

93:                                               ; preds = %92, %31
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @tasklet_init(i32*, void (i64)*, i64) #1

declare dso_local i32 @_rtw_init_queue(i32*) #1

declare dso_local %struct.recv_buf* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @rtw_os_recvbuf_resource_alloc(%struct.adapter*, %struct.recv_buf*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local %struct.sk_buff* @__netdev_alloc_skb(i32, i32, i32) #1

declare dso_local i32 @kmemleak_not_leak(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
