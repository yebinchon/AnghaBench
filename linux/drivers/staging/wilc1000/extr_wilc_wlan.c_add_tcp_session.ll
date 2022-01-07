; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_add_tcp_session.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_add_tcp_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_vif = type { %struct.tcp_ack_filter }
%struct.tcp_ack_filter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8*, i64, i8* }

@MAX_TCP_SESSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wilc_vif*, i8*, i8*, i8*)* @add_tcp_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_tcp_session(%struct.wilc_vif* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.wilc_vif*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.tcp_ack_filter*, align 8
  store %struct.wilc_vif* %0, %struct.wilc_vif** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %11 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %10, i32 0, i32 0
  store %struct.tcp_ack_filter* %11, %struct.tcp_ack_filter** %9, align 8
  %12 = load %struct.tcp_ack_filter*, %struct.tcp_ack_filter** %9, align 8
  %13 = getelementptr inbounds %struct.tcp_ack_filter, %struct.tcp_ack_filter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @MAX_TCP_SESSION, align 4
  %16 = mul nsw i32 2, %15
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %62

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  %20 = load %struct.tcp_ack_filter*, %struct.tcp_ack_filter** %9, align 8
  %21 = getelementptr inbounds %struct.tcp_ack_filter, %struct.tcp_ack_filter* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load %struct.tcp_ack_filter*, %struct.tcp_ack_filter** %9, align 8
  %24 = getelementptr inbounds %struct.tcp_ack_filter, %struct.tcp_ack_filter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  store i8* %19, i8** %28, align 8
  %29 = load %struct.tcp_ack_filter*, %struct.tcp_ack_filter** %9, align 8
  %30 = getelementptr inbounds %struct.tcp_ack_filter, %struct.tcp_ack_filter* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load %struct.tcp_ack_filter*, %struct.tcp_ack_filter** %9, align 8
  %33 = getelementptr inbounds %struct.tcp_ack_filter, %struct.tcp_ack_filter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.tcp_ack_filter*, %struct.tcp_ack_filter** %9, align 8
  %40 = getelementptr inbounds %struct.tcp_ack_filter, %struct.tcp_ack_filter* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load %struct.tcp_ack_filter*, %struct.tcp_ack_filter** %9, align 8
  %43 = getelementptr inbounds %struct.tcp_ack_filter, %struct.tcp_ack_filter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i8* %38, i8** %47, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load %struct.tcp_ack_filter*, %struct.tcp_ack_filter** %9, align 8
  %50 = getelementptr inbounds %struct.tcp_ack_filter, %struct.tcp_ack_filter* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load %struct.tcp_ack_filter*, %struct.tcp_ack_filter** %9, align 8
  %53 = getelementptr inbounds %struct.tcp_ack_filter, %struct.tcp_ack_filter* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i8* %48, i8** %57, align 8
  %58 = load %struct.tcp_ack_filter*, %struct.tcp_ack_filter** %9, align 8
  %59 = getelementptr inbounds %struct.tcp_ack_filter, %struct.tcp_ack_filter* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %18, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
