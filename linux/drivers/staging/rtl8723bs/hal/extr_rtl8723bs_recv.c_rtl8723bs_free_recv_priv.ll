; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723bs_recv.c_rtl8723bs_free_recv_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723bs_recv.c_rtl8723bs_free_recv_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.recv_priv }
%struct.recv_priv = type { i32*, i32*, i64, i32 }
%struct.recv_buf = type { i32 }

@NR_RECVBUFF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723bs_free_recv_priv(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.recv_priv*, align 8
  %5 = alloca %struct.recv_buf*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 0
  store %struct.recv_priv* %7, %struct.recv_priv** %4, align 8
  %8 = load %struct.recv_priv*, %struct.recv_priv** %4, align 8
  %9 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %8, i32 0, i32 3
  %10 = call i32 @tasklet_kill(i32* %9)
  %11 = load %struct.recv_priv*, %struct.recv_priv** %4, align 8
  %12 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = bitcast i32* %13 to %struct.recv_buf*
  store %struct.recv_buf* %14, %struct.recv_buf** %5, align 8
  %15 = load %struct.recv_buf*, %struct.recv_buf** %5, align 8
  %16 = icmp ne %struct.recv_buf* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %1
  %18 = load %struct.recv_priv*, %struct.recv_priv** %4, align 8
  %19 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  store i64 0, i64* %3, align 8
  br label %20

20:                                               ; preds = %33, %17
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @NR_RECVBUFF, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load %struct.recv_buf*, %struct.recv_buf** %5, align 8
  %26 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %25, i32 0, i32 0
  %27 = call i32 @list_del_init(i32* %26)
  %28 = load %struct.adapter*, %struct.adapter** %2, align 8
  %29 = load %struct.recv_buf*, %struct.recv_buf** %5, align 8
  %30 = call i32 @rtw_os_recvbuf_resource_free(%struct.adapter* %28, %struct.recv_buf* %29)
  %31 = load %struct.recv_buf*, %struct.recv_buf** %5, align 8
  %32 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %31, i32 1
  store %struct.recv_buf* %32, %struct.recv_buf** %5, align 8
  br label %33

33:                                               ; preds = %24
  %34 = load i64, i64* %3, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %3, align 8
  br label %20

36:                                               ; preds = %20
  %37 = load %struct.recv_priv*, %struct.recv_priv** %4, align 8
  %38 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %36, %1
  %40 = load %struct.recv_priv*, %struct.recv_priv** %4, align 8
  %41 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.recv_priv*, %struct.recv_priv** %4, align 8
  %46 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @kfree(i32* %47)
  %49 = load %struct.recv_priv*, %struct.recv_priv** %4, align 8
  %50 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %49, i32 0, i32 0
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %44, %39
  ret void
}

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @rtw_os_recvbuf_resource_free(%struct.adapter*, %struct.recv_buf*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
