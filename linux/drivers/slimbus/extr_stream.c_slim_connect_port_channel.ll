; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_stream.c_slim_connect_port_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_stream.c_slim_connect_port_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.slim_stream_runtime = type { %struct.slim_device* }
%struct.slim_device = type { i32, i32 }
%struct.slim_port = type { i64, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.slim_val_inf = type { i32, i32*, i32*, i32*, i32 }

@SLIM_MSG_MC_CONNECT_SOURCE = common dso_local global i32 0, align 4
@txn = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@SLIM_PORT_SINK = common dso_local global i64 0, align 8
@SLIM_MSG_MC_CONNECT_SINK = common dso_local global i32 0, align 4
@SLIM_CH_STATE_ASSOCIATED = common dso_local global i32 0, align 4
@SLIM_PORT_UNCONFIGURED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slim_stream_runtime*, %struct.slim_port*)* @slim_connect_port_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slim_connect_port_channel(%struct.slim_stream_runtime* %0, %struct.slim_port* %1) #0 {
  %3 = alloca %struct.slim_stream_runtime*, align 8
  %4 = alloca %struct.slim_port*, align 8
  %5 = alloca %struct.slim_device*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca %struct.slim_val_inf, align 8
  %8 = alloca i32, align 4
  store %struct.slim_stream_runtime* %0, %struct.slim_stream_runtime** %3, align 8
  store %struct.slim_port* %1, %struct.slim_port** %4, align 8
  %9 = load %struct.slim_stream_runtime*, %struct.slim_stream_runtime** %3, align 8
  %10 = getelementptr inbounds %struct.slim_stream_runtime, %struct.slim_stream_runtime* %9, i32 0, i32 0
  %11 = load %struct.slim_device*, %struct.slim_device** %10, align 8
  store %struct.slim_device* %11, %struct.slim_device** %5, align 8
  %12 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %7, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %7, i32 0, i32 1
  store i32* inttoptr (i64 2 to i32*), i32** %13, align 8
  %14 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %7, i32 0, i32 2
  store i32* null, i32** %14, align 8
  %15 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %7, i32 0, i32 3
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32* %16, i32** %15, align 8
  %17 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %7, i32 0, i32 4
  store i32 0, i32* %17, align 8
  %18 = load i32, i32* @SLIM_MSG_MC_CONNECT_SOURCE, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.slim_stream_runtime*, %struct.slim_stream_runtime** %3, align 8
  %21 = getelementptr inbounds %struct.slim_stream_runtime, %struct.slim_stream_runtime* %20, i32 0, i32 0
  %22 = load %struct.slim_device*, %struct.slim_device** %21, align 8
  %23 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @txn, i32 0, i32 0), align 4
  %26 = call i32 @DEFINE_SLIM_LDEST_TXN(i32 %25, i32 %19, i32 6, i32 %24, %struct.slim_val_inf* %7)
  %27 = load %struct.slim_port*, %struct.slim_port** %4, align 8
  %28 = getelementptr inbounds %struct.slim_port, %struct.slim_port* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SLIM_PORT_SINK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @SLIM_MSG_MC_CONNECT_SINK, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @txn, i32 0, i32 0), align 4
  br label %34

34:                                               ; preds = %32, %2
  %35 = load %struct.slim_port*, %struct.slim_port** %4, align 8
  %36 = getelementptr inbounds %struct.slim_port, %struct.slim_port* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %37, i32* %38, align 4
  %39 = load %struct.slim_port*, %struct.slim_port** %4, align 8
  %40 = getelementptr inbounds %struct.slim_port, %struct.slim_port* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @SLIM_CH_STATE_ASSOCIATED, align 4
  %45 = load %struct.slim_port*, %struct.slim_port** %4, align 8
  %46 = getelementptr inbounds %struct.slim_port, %struct.slim_port* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @SLIM_PORT_UNCONFIGURED, align 4
  %49 = load %struct.slim_port*, %struct.slim_port** %4, align 8
  %50 = getelementptr inbounds %struct.slim_port, %struct.slim_port* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.slim_device*, %struct.slim_device** %5, align 8
  %52 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @slim_do_transfer(i32 %53, %struct.TYPE_6__* @txn)
  ret i32 %54
}

declare dso_local i32 @DEFINE_SLIM_LDEST_TXN(i32, i32, i32, i32, %struct.slim_val_inf*) #1

declare dso_local i32 @slim_do_transfer(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
