; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_add_tcp_pending_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_add_tcp_pending_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_vif = type { %struct.tcp_ack_filter }
%struct.tcp_ack_filter = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, %struct.txq_entry_t* }
%struct.txq_entry_t = type { i64 }

@MAX_PENDING_ACKS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wilc_vif*, i64, i64, %struct.txq_entry_t*)* @add_tcp_pending_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_tcp_pending_ack(%struct.wilc_vif* %0, i64 %1, i64 %2, %struct.txq_entry_t* %3) #0 {
  %5 = alloca %struct.wilc_vif*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.txq_entry_t*, align 8
  %9 = alloca %struct.tcp_ack_filter*, align 8
  %10 = alloca i64, align 8
  store %struct.wilc_vif* %0, %struct.wilc_vif** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.txq_entry_t* %3, %struct.txq_entry_t** %8, align 8
  %11 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %12 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %11, i32 0, i32 0
  store %struct.tcp_ack_filter* %12, %struct.tcp_ack_filter** %9, align 8
  %13 = load %struct.tcp_ack_filter*, %struct.tcp_ack_filter** %9, align 8
  %14 = getelementptr inbounds %struct.tcp_ack_filter, %struct.tcp_ack_filter* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.tcp_ack_filter*, %struct.tcp_ack_filter** %9, align 8
  %17 = getelementptr inbounds %struct.tcp_ack_filter, %struct.tcp_ack_filter* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add i64 %15, %18
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* @MAX_PENDING_ACKS, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %52

23:                                               ; preds = %4
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.tcp_ack_filter*, %struct.tcp_ack_filter** %9, align 8
  %26 = getelementptr inbounds %struct.tcp_ack_filter, %struct.tcp_ack_filter* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i64 %24, i64* %30, align 8
  %31 = load %struct.txq_entry_t*, %struct.txq_entry_t** %8, align 8
  %32 = load %struct.tcp_ack_filter*, %struct.tcp_ack_filter** %9, align 8
  %33 = getelementptr inbounds %struct.tcp_ack_filter, %struct.tcp_ack_filter* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store %struct.txq_entry_t* %31, %struct.txq_entry_t** %37, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.tcp_ack_filter*, %struct.tcp_ack_filter** %9, align 8
  %40 = getelementptr inbounds %struct.tcp_ack_filter, %struct.tcp_ack_filter* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i64 %38, i64* %44, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load %struct.txq_entry_t*, %struct.txq_entry_t** %8, align 8
  %47 = getelementptr inbounds %struct.txq_entry_t, %struct.txq_entry_t* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.tcp_ack_filter*, %struct.tcp_ack_filter** %9, align 8
  %49 = getelementptr inbounds %struct.tcp_ack_filter, %struct.tcp_ack_filter* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %49, align 8
  br label %52

52:                                               ; preds = %23, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
