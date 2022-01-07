; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_stream.c_slim_activate_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_stream.c_slim_activate_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32* }
%struct.slim_stream_runtime = type { %struct.slim_device* }
%struct.slim_device = type { i32, i32 }
%struct.slim_port = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.slim_val_inf = type { i32, i32*, i32*, i32*, i32 }

@SLIM_MSG_MC_NEXT_ACTIVATE_CHANNEL = common dso_local global i32 0, align 4
@txn = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@SLIM_CH_STATE_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slim_stream_runtime*, %struct.slim_port*)* @slim_activate_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slim_activate_channel(%struct.slim_stream_runtime* %0, %struct.slim_port* %1) #0 {
  %3 = alloca %struct.slim_stream_runtime*, align 8
  %4 = alloca %struct.slim_port*, align 8
  %5 = alloca %struct.slim_device*, align 8
  %6 = alloca [1 x i32], align 4
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
  store i32* inttoptr (i64 1 to i32*), i32** %13, align 8
  %14 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %7, i32 0, i32 2
  store i32* null, i32** %14, align 8
  %15 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %7, i32 0, i32 3
  %16 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  store i32* %16, i32** %15, align 8
  %17 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %7, i32 0, i32 4
  store i32 0, i32* %17, align 8
  %18 = load i32, i32* @SLIM_MSG_MC_NEXT_ACTIVATE_CHANNEL, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.slim_stream_runtime*, %struct.slim_stream_runtime** %3, align 8
  %21 = getelementptr inbounds %struct.slim_stream_runtime, %struct.slim_stream_runtime* %20, i32 0, i32 0
  %22 = load %struct.slim_device*, %struct.slim_device** %21, align 8
  %23 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @txn, i32 0, i32 0), align 8
  %26 = call i32 @DEFINE_SLIM_LDEST_TXN(%struct.TYPE_6__* %25, i32 %19, i32 5, i32 %24, %struct.slim_val_inf* %7)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @txn, i32 0, i32 0), align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @txn, i32 0, i32 0), align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i32* %29, i32** %31, align 8
  %32 = load %struct.slim_port*, %struct.slim_port** %4, align 8
  %33 = getelementptr inbounds %struct.slim_port, %struct.slim_port* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @SLIM_CH_STATE_ACTIVE, align 4
  %38 = load %struct.slim_port*, %struct.slim_port** %4, align 8
  %39 = getelementptr inbounds %struct.slim_port, %struct.slim_port* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load %struct.slim_device*, %struct.slim_device** %5, align 8
  %42 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @slim_do_transfer(i32 %43, %struct.TYPE_8__* @txn)
  ret i32 %44
}

declare dso_local i32 @DEFINE_SLIM_LDEST_TXN(%struct.TYPE_6__*, i32, i32, i32, %struct.slim_val_inf*) #1

declare dso_local i32 @slim_do_transfer(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
