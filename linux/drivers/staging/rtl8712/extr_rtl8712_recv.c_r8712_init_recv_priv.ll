; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_r8712_init_recv_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_r8712_init_recv_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.recv_priv = type { i32, i32, i32, i32, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct._adapter = type { i32 }
%struct.recv_buf = type { i32, %struct._adapter*, i64, i32 }
%struct.sk_buff = type { i64 }

@NR_RECVBUFF = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@recv_tasklet = common dso_local global i64 0, align 8
@NR_PREALLOC_RECV_SKB = common dso_local global i32 0, align 4
@MAX_RECVBUF_SZ = common dso_local global i64 0, align 8
@RECVBUFF_ALIGN_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_init_recv_priv(%struct.recv_priv* %0, %struct._adapter* %1) #0 {
  %3 = alloca %struct.recv_priv*, align 8
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.recv_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.recv_priv* %0, %struct.recv_priv** %3, align 8
  store %struct._adapter* %1, %struct._adapter** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  %10 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %11 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %10, i32 0, i32 4
  %12 = call i32 @_init_queue(%struct.TYPE_2__* %11)
  %13 = load i32, i32* @NR_RECVBUFF, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 32
  %16 = add i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call i64 @kzalloc(i32 %17, i32 %18)
  %20 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %21 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %20, i32 0, i32 6
  store i64 %19, i64* %21, align 8
  %22 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %23 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %132

27:                                               ; preds = %2
  %28 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %29 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %28, i32 0, i32 6
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 4
  %32 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %33 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = and i32 %35, 3
  %37 = sext i32 %36 to i64
  %38 = sub nsw i64 %31, %37
  %39 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %40 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %39, i32 0, i32 5
  store i64 %38, i64* %40, align 8
  %41 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %42 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.recv_buf*
  store %struct.recv_buf* %44, %struct.recv_buf** %6, align 8
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %75, %27
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @NR_RECVBUFF, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %78

49:                                               ; preds = %45
  %50 = load %struct.recv_buf*, %struct.recv_buf** %6, align 8
  %51 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %50, i32 0, i32 0
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  %53 = load %struct.recv_buf*, %struct.recv_buf** %6, align 8
  %54 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %53, i32 0, i32 3
  %55 = call i32 @spin_lock_init(i32* %54)
  %56 = load %struct._adapter*, %struct._adapter** %4, align 8
  %57 = load %struct.recv_buf*, %struct.recv_buf** %6, align 8
  %58 = call i64 @r8712_os_recvbuf_resource_alloc(%struct._adapter* %56, %struct.recv_buf* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %78

61:                                               ; preds = %49
  %62 = load %struct.recv_buf*, %struct.recv_buf** %6, align 8
  %63 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  %64 = load %struct._adapter*, %struct._adapter** %4, align 8
  %65 = load %struct.recv_buf*, %struct.recv_buf** %6, align 8
  %66 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %65, i32 0, i32 1
  store %struct._adapter* %64, %struct._adapter** %66, align 8
  %67 = load %struct.recv_buf*, %struct.recv_buf** %6, align 8
  %68 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %67, i32 0, i32 0
  %69 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %70 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = call i32 @list_add_tail(i32* %68, i32* %71)
  %73 = load %struct.recv_buf*, %struct.recv_buf** %6, align 8
  %74 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %73, i32 1
  store %struct.recv_buf* %74, %struct.recv_buf** %6, align 8
  br label %75

75:                                               ; preds = %61
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %45

78:                                               ; preds = %60, %45
  %79 = load i32, i32* @NR_RECVBUFF, align 4
  %80 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %81 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %83 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %82, i32 0, i32 3
  %84 = load i64, i64* @recv_tasklet, align 8
  %85 = inttoptr i64 %84 to void (i64)*
  %86 = load %struct._adapter*, %struct._adapter** %4, align 8
  %87 = ptrtoint %struct._adapter* %86 to i64
  %88 = call i32 @tasklet_init(i32* %83, void (i64)* %85, i64 %87)
  %89 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %90 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %89, i32 0, i32 2
  %91 = call i32 @skb_queue_head_init(i32* %90)
  %92 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %93 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %92, i32 0, i32 1
  %94 = call i32 @skb_queue_head_init(i32* %93)
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %129, %78
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @NR_PREALLOC_RECV_SKB, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %132

99:                                               ; preds = %95
  %100 = load %struct._adapter*, %struct._adapter** %4, align 8
  %101 = getelementptr inbounds %struct._adapter, %struct._adapter* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i64, i64* @MAX_RECVBUF_SZ, align 8
  %104 = load i32, i32* @RECVBUFF_ALIGN_SZ, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %103, %105
  %107 = call %struct.sk_buff* @netdev_alloc_skb(i32 %102, i64 %106)
  store %struct.sk_buff* %107, %struct.sk_buff** %9, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %109 = icmp ne %struct.sk_buff* %108, null
  br i1 %109, label %110, label %128

110:                                              ; preds = %99
  %111 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @RECVBUFF_ALIGN_SZ, align 4
  %117 = sub nsw i32 %116, 1
  %118 = and i32 %115, %117
  store i32 %118, i32* %8, align 4
  %119 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %120 = load i32, i32* @RECVBUFF_ALIGN_SZ, align 4
  %121 = load i32, i32* %8, align 4
  %122 = sub nsw i32 %120, %121
  %123 = call i32 @skb_reserve(%struct.sk_buff* %119, i32 %122)
  %124 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %125 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %124, i32 0, i32 1
  %126 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %127 = call i32 @skb_queue_tail(i32* %125, %struct.sk_buff* %126)
  br label %128

128:                                              ; preds = %110, %99
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %5, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %5, align 4
  br label %95

132:                                              ; preds = %26, %95
  ret void
}

declare dso_local i32 @_init_queue(%struct.TYPE_2__*) #1

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @r8712_os_recvbuf_resource_alloc(%struct._adapter*, %struct.recv_buf*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @tasklet_init(i32*, void (i64)*, i64) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32, i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
