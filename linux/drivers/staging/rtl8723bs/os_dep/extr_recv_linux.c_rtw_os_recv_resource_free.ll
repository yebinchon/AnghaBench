; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_recv_linux.c_rtw_os_recv_resource_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_recv_linux.c_rtw_os_recv_resource_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.recv_priv = type { i64 }
%union.recv_frame = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@NR_RECVFRAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_os_recv_resource_free(%struct.recv_priv* %0) #0 {
  %2 = alloca %struct.recv_priv*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %union.recv_frame*, align 8
  store %struct.recv_priv* %0, %struct.recv_priv** %2, align 8
  %5 = load %struct.recv_priv*, %struct.recv_priv** %2, align 8
  %6 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %union.recv_frame*
  store %union.recv_frame* %8, %union.recv_frame** %4, align 8
  store i64 0, i64* %3, align 8
  br label %9

9:                                                ; preds = %34, %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @NR_RECVFRAME, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  %14 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %15 = bitcast %union.recv_frame* %14 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %13
  %21 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %22 = bitcast %union.recv_frame* %21 to %struct.TYPE_4__*
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @dev_kfree_skb_any(i32* %25)
  %27 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %28 = bitcast %union.recv_frame* %27 to %struct.TYPE_4__*
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %20, %13
  %32 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %33 = getelementptr inbounds %union.recv_frame, %union.recv_frame* %32, i32 1
  store %union.recv_frame* %33, %union.recv_frame** %4, align 8
  br label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %3, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %3, align 8
  br label %9

37:                                               ; preds = %9
  ret void
}

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
