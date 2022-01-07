; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_sta_mgt.c_r8712_free_stainfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_sta_mgt.c_r8712_free_stainfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.sta_priv, %struct.xmit_priv }
%struct.sta_priv = type { i32, %struct.__queue }
%struct.__queue = type { i32, i32 }
%struct.xmit_priv = type { %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.sta_info = type { i32, %struct.recv_reorder_ctrl*, i32, %struct.sta_xmit_priv, i32 }
%struct.recv_reorder_ctrl = type { i32 }
%struct.sta_xmit_priv = type { %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_free_stainfo(%struct._adapter* %0, %struct.sta_info* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.__queue*, align 8
  %8 = alloca %struct.recv_reorder_ctrl*, align 8
  %9 = alloca %struct.sta_xmit_priv*, align 8
  %10 = alloca %struct.xmit_priv*, align 8
  %11 = alloca %struct.sta_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store %struct.sta_info* %1, %struct.sta_info** %4, align 8
  %12 = load %struct._adapter*, %struct._adapter** %3, align 8
  %13 = getelementptr inbounds %struct._adapter, %struct._adapter* %12, i32 0, i32 1
  store %struct.xmit_priv* %13, %struct.xmit_priv** %10, align 8
  %14 = load %struct._adapter*, %struct._adapter** %3, align 8
  %15 = getelementptr inbounds %struct._adapter, %struct._adapter* %14, i32 0, i32 0
  store %struct.sta_priv* %15, %struct.sta_priv** %11, align 8
  %16 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %17 = icmp eq %struct.sta_info* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %141

19:                                               ; preds = %2
  %20 = load %struct.sta_priv*, %struct.sta_priv** %11, align 8
  %21 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %20, i32 0, i32 1
  store %struct.__queue* %21, %struct.__queue** %7, align 8
  %22 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %23 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %22, i32 0, i32 3
  store %struct.sta_xmit_priv* %23, %struct.sta_xmit_priv** %9, align 8
  %24 = load %struct.xmit_priv*, %struct.xmit_priv** %10, align 8
  %25 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.xmit_priv*, %struct.xmit_priv** %10, align 8
  %30 = load %struct.sta_xmit_priv*, %struct.sta_xmit_priv** %9, align 8
  %31 = getelementptr inbounds %struct.sta_xmit_priv, %struct.sta_xmit_priv* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = call i32 @r8712_free_xmitframe_queue(%struct.xmit_priv* %29, i32* %32)
  %34 = load %struct.sta_xmit_priv*, %struct.sta_xmit_priv** %9, align 8
  %35 = getelementptr inbounds %struct.sta_xmit_priv, %struct.sta_xmit_priv* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = call i32 @list_del_init(i32* %36)
  %38 = load %struct.xmit_priv*, %struct.xmit_priv** %10, align 8
  %39 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load %struct.xmit_priv*, %struct.xmit_priv** %10, align 8
  %44 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.xmit_priv*, %struct.xmit_priv** %10, align 8
  %49 = load %struct.sta_xmit_priv*, %struct.sta_xmit_priv** %9, align 8
  %50 = getelementptr inbounds %struct.sta_xmit_priv, %struct.sta_xmit_priv* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = call i32 @r8712_free_xmitframe_queue(%struct.xmit_priv* %48, i32* %51)
  %53 = load %struct.sta_xmit_priv*, %struct.sta_xmit_priv** %9, align 8
  %54 = getelementptr inbounds %struct.sta_xmit_priv, %struct.sta_xmit_priv* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = call i32 @list_del_init(i32* %55)
  %57 = load %struct.xmit_priv*, %struct.xmit_priv** %10, align 8
  %58 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  %62 = load %struct.xmit_priv*, %struct.xmit_priv** %10, align 8
  %63 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @spin_lock_irqsave(i32* %64, i64 %65)
  %67 = load %struct.xmit_priv*, %struct.xmit_priv** %10, align 8
  %68 = load %struct.sta_xmit_priv*, %struct.sta_xmit_priv** %9, align 8
  %69 = getelementptr inbounds %struct.sta_xmit_priv, %struct.sta_xmit_priv* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = call i32 @r8712_free_xmitframe_queue(%struct.xmit_priv* %67, i32* %70)
  %72 = load %struct.sta_xmit_priv*, %struct.sta_xmit_priv** %9, align 8
  %73 = getelementptr inbounds %struct.sta_xmit_priv, %struct.sta_xmit_priv* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = call i32 @list_del_init(i32* %74)
  %76 = load %struct.xmit_priv*, %struct.xmit_priv** %10, align 8
  %77 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = load %struct.xmit_priv*, %struct.xmit_priv** %10, align 8
  %82 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @spin_lock_irqsave(i32* %83, i64 %84)
  %86 = load %struct.xmit_priv*, %struct.xmit_priv** %10, align 8
  %87 = load %struct.sta_xmit_priv*, %struct.sta_xmit_priv** %9, align 8
  %88 = getelementptr inbounds %struct.sta_xmit_priv, %struct.sta_xmit_priv* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = call i32 @r8712_free_xmitframe_queue(%struct.xmit_priv* %86, i32* %89)
  %91 = load %struct.sta_xmit_priv*, %struct.sta_xmit_priv** %9, align 8
  %92 = getelementptr inbounds %struct.sta_xmit_priv, %struct.sta_xmit_priv* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = call i32 @list_del_init(i32* %93)
  %95 = load %struct.xmit_priv*, %struct.xmit_priv** %10, align 8
  %96 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i64, i64* %6, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  %100 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %101 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %100, i32 0, i32 4
  %102 = call i32 @list_del_init(i32* %101)
  %103 = load %struct.sta_priv*, %struct.sta_priv** %11, align 8
  %104 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %104, align 4
  %107 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %108 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %107, i32 0, i32 3
  %109 = call i32 @_r8712_init_sta_xmit_priv(%struct.sta_xmit_priv* %108)
  %110 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %111 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %110, i32 0, i32 2
  %112 = call i32 @_r8712_init_sta_recv_priv(i32* %111)
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %126, %19
  %114 = load i32, i32* %5, align 4
  %115 = icmp slt i32 %114, 16
  br i1 %115, label %116, label %129

116:                                              ; preds = %113
  %117 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %118 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %117, i32 0, i32 1
  %119 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.recv_reorder_ctrl, %struct.recv_reorder_ctrl* %119, i64 %121
  store %struct.recv_reorder_ctrl* %122, %struct.recv_reorder_ctrl** %8, align 8
  %123 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %8, align 8
  %124 = getelementptr inbounds %struct.recv_reorder_ctrl, %struct.recv_reorder_ctrl* %123, i32 0, i32 0
  %125 = call i32 @del_timer(i32* %124)
  br label %126

126:                                              ; preds = %116
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %5, align 4
  br label %113

129:                                              ; preds = %113
  %130 = load %struct.__queue*, %struct.__queue** %7, align 8
  %131 = getelementptr inbounds %struct.__queue, %struct.__queue* %130, i32 0, i32 0
  %132 = call i32 @spin_lock(i32* %131)
  %133 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %134 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %133, i32 0, i32 0
  %135 = load %struct.__queue*, %struct.__queue** %7, align 8
  %136 = getelementptr inbounds %struct.__queue, %struct.__queue* %135, i32 0, i32 1
  %137 = call i32 @list_add_tail(i32* %134, i32* %136)
  %138 = load %struct.__queue*, %struct.__queue** %7, align 8
  %139 = getelementptr inbounds %struct.__queue, %struct.__queue* %138, i32 0, i32 0
  %140 = call i32 @spin_unlock(i32* %139)
  br label %141

141:                                              ; preds = %129, %18
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @r8712_free_xmitframe_queue(%struct.xmit_priv*, i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @_r8712_init_sta_xmit_priv(%struct.sta_xmit_priv*) #1

declare dso_local i32 @_r8712_init_sta_recv_priv(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
