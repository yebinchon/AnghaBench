; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_recv.c__r8712_init_recv_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_recv.c__r8712_init_recv_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.recv_priv = type { i32, i32, %struct.TYPE_6__, i32*, i32*, %struct._adapter*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct._adapter = type { i32 }
%union.recv_frame = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct._adapter* }

@NR_RECVFRAME = common dso_local global i32 0, align 4
@RXFRAME_ALIGN_SZ = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_r8712_init_recv_priv(%struct.recv_priv* %0, %struct._adapter* %1) #0 {
  %3 = alloca %struct.recv_priv*, align 8
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.recv_frame*, align 8
  store %struct.recv_priv* %0, %struct.recv_priv** %3, align 8
  store %struct._adapter* %1, %struct._adapter** %4, align 8
  %7 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %8 = bitcast %struct.recv_priv* %7 to i8*
  %9 = call i32 @memset(i8* %8, i32 0, i32 48)
  %10 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %11 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %10, i32 0, i32 7
  %12 = call i32 @spin_lock_init(i32* %11)
  %13 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %14 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %13, i32 0, i32 2
  %15 = call i32 @_init_queue(%struct.TYPE_6__* %14)
  %16 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %17 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %16, i32 0, i32 6
  %18 = call i32 @_init_queue(%struct.TYPE_6__* %17)
  %19 = load %struct._adapter*, %struct._adapter** %4, align 8
  %20 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %21 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %20, i32 0, i32 5
  store %struct._adapter* %19, %struct._adapter** %21, align 8
  %22 = load i32, i32* @NR_RECVFRAME, align 4
  %23 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %24 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @NR_RECVFRAME, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 16
  %28 = load i32, i32* @RXFRAME_ALIGN_SZ, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 %27, %29
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @GFP_ATOMIC, align 4
  %33 = call i32* @kzalloc(i32 %31, i32 %32)
  %34 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %35 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %34, i32 0, i32 4
  store i32* %33, i32** %35, align 8
  %36 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %37 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %2
  br label %103

41:                                               ; preds = %2
  %42 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %43 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @kmemleak_not_leak(i32* %44)
  %46 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %47 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* @RXFRAME_ALIGN_SZ, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %53 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = ptrtoint i32* %54 to i32
  %56 = load i32, i32* @RXFRAME_ALIGN_SZ, align 4
  %57 = sub nsw i32 %56, 1
  %58 = and i32 %55, %57
  %59 = sext i32 %58 to i64
  %60 = sub i64 0, %59
  %61 = getelementptr inbounds i32, i32* %51, i64 %60
  %62 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %63 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %62, i32 0, i32 3
  store i32* %61, i32** %63, align 8
  %64 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %65 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = bitcast i32* %66 to %union.recv_frame*
  store %union.recv_frame* %67, %union.recv_frame** %6, align 8
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %94, %41
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @NR_RECVFRAME, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %97

72:                                               ; preds = %68
  %73 = load %union.recv_frame*, %union.recv_frame** %6, align 8
  %74 = bitcast %union.recv_frame* %73 to %struct.TYPE_5__*
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = call i32 @INIT_LIST_HEAD(i32* %75)
  %77 = load %union.recv_frame*, %union.recv_frame** %6, align 8
  %78 = bitcast %union.recv_frame* %77 to %struct.TYPE_5__*
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %81 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = call i32 @list_add_tail(i32* %79, i32* %82)
  %84 = load %struct._adapter*, %struct._adapter** %4, align 8
  %85 = load %union.recv_frame*, %union.recv_frame** %6, align 8
  %86 = call i32 @r8712_os_recv_resource_alloc(%struct._adapter* %84, %union.recv_frame* %85)
  %87 = load %struct._adapter*, %struct._adapter** %4, align 8
  %88 = load %union.recv_frame*, %union.recv_frame** %6, align 8
  %89 = bitcast %union.recv_frame* %88 to %struct.TYPE_5__*
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store %struct._adapter* %87, %struct._adapter** %91, align 8
  %92 = load %union.recv_frame*, %union.recv_frame** %6, align 8
  %93 = getelementptr inbounds %union.recv_frame, %union.recv_frame* %92, i32 1
  store %union.recv_frame* %93, %union.recv_frame** %6, align 8
  br label %94

94:                                               ; preds = %72
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %68

97:                                               ; preds = %68
  %98 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %99 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %98, i32 0, i32 1
  store i32 1, i32* %99, align 4
  %100 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %101 = load %struct._adapter*, %struct._adapter** %4, align 8
  %102 = call i32 @r8712_init_recv_priv(%struct.recv_priv* %100, %struct._adapter* %101)
  br label %103

103:                                              ; preds = %97, %40
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @_init_queue(%struct.TYPE_6__*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @kmemleak_not_leak(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @r8712_os_recv_resource_alloc(%struct._adapter*, %union.recv_frame*) #1

declare dso_local i32 @r8712_init_recv_priv(%struct.recv_priv*, %struct._adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
