; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_sta_mgt.c__rtw_init_stainfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_sta_mgt.c__rtw_init_stainfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_rtw_init_stainfo(%struct.sta_info* %0) #0 {
  %2 = alloca %struct.sta_info*, align 8
  store %struct.sta_info* %0, %struct.sta_info** %2, align 8
  %3 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %4 = bitcast %struct.sta_info* %3 to i32*
  %5 = call i32 @memset(i32* %4, i32 0, i32 136)
  %6 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %7 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %6, i32 0, i32 20
  %8 = call i32 @spin_lock_init(i32* %7)
  %9 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %10 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %9, i32 0, i32 19
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %13 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %12, i32 0, i32 18
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %16 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %15, i32 0, i32 17
  %17 = call i32 @_rtw_init_queue(i32* %16)
  %18 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %19 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %18, i32 0, i32 16
  store i64 0, i64* %19, align 8
  %20 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %21 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %20, i32 0, i32 15
  %22 = call i32 @_rtw_init_sta_xmit_priv(i32* %21)
  %23 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %24 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %23, i32 0, i32 14
  %25 = call i32 @_rtw_init_sta_recv_priv(i32* %24)
  %26 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %27 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %26, i32 0, i32 13
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %30 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %29, i32 0, i32 12
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %33 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %32, i32 0, i32 11
  store i64 0, i64* %33, align 8
  %34 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %35 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %34, i32 0, i32 10
  store i64 0, i64* %35, align 8
  %36 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %37 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %36, i32 0, i32 9
  store i64 0, i64* %37, align 8
  %38 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %39 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %41 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %40, i32 0, i32 8
  store i64 0, i64* %41, align 8
  %42 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %43 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %42, i32 0, i32 7
  store i64 0, i64* %43, align 8
  %44 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %45 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %44, i32 0, i32 6
  store i64 0, i64* %45, align 8
  %46 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %47 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %46, i32 0, i32 5
  store i64 0, i64* %47, align 8
  %48 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %49 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %51 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %53 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %55 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @_rtw_init_queue(i32*) #1

declare dso_local i32 @_rtw_init_sta_xmit_priv(i32*) #1

declare dso_local i32 @_rtw_init_sta_recv_priv(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
