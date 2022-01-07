; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_stream.c_slim_deactivate_remove_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_stream.c_slim_deactivate_remove_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.slim_stream_runtime = type { %struct.slim_device* }
%struct.slim_device = type { i32, i32 }
%struct.slim_port = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.slim_val_inf = type { i32, i32*, i32*, i32*, i32 }

@SLIM_MSG_MC_NEXT_DEACTIVATE_CHANNEL = common dso_local global i32 0, align 4
@txn = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@SLIM_MSG_MC_NEXT_REMOVE_CHANNEL = common dso_local global i32 0, align 4
@SLIM_CH_STATE_REMOVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slim_stream_runtime*, %struct.slim_port*)* @slim_deactivate_remove_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slim_deactivate_remove_channel(%struct.slim_stream_runtime* %0, %struct.slim_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.slim_stream_runtime*, align 8
  %5 = alloca %struct.slim_port*, align 8
  %6 = alloca %struct.slim_device*, align 8
  %7 = alloca [1 x i32], align 4
  %8 = alloca %struct.slim_val_inf, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.slim_stream_runtime* %0, %struct.slim_stream_runtime** %4, align 8
  store %struct.slim_port* %1, %struct.slim_port** %5, align 8
  %11 = load %struct.slim_stream_runtime*, %struct.slim_stream_runtime** %4, align 8
  %12 = getelementptr inbounds %struct.slim_stream_runtime, %struct.slim_stream_runtime* %11, i32 0, i32 0
  %13 = load %struct.slim_device*, %struct.slim_device** %12, align 8
  store %struct.slim_device* %13, %struct.slim_device** %6, align 8
  %14 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %8, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %8, i32 0, i32 1
  store i32* inttoptr (i64 1 to i32*), i32** %15, align 8
  %16 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %8, i32 0, i32 2
  store i32* null, i32** %16, align 8
  %17 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %8, i32 0, i32 3
  %18 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  store i32* %18, i32** %17, align 8
  %19 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %8, i32 0, i32 4
  store i32 0, i32* %19, align 8
  %20 = load i32, i32* @SLIM_MSG_MC_NEXT_DEACTIVATE_CHANNEL, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.slim_stream_runtime*, %struct.slim_stream_runtime** %4, align 8
  %23 = getelementptr inbounds %struct.slim_stream_runtime, %struct.slim_stream_runtime* %22, i32 0, i32 0
  %24 = load %struct.slim_device*, %struct.slim_device** %23, align 8
  %25 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @txn, i32 0, i32 0), align 4
  %28 = call i32 @DEFINE_SLIM_LDEST_TXN(i32 %27, i32 %21, i32 5, i32 %26, %struct.slim_val_inf* %8)
  %29 = load %struct.slim_port*, %struct.slim_port** %5, align 8
  %30 = getelementptr inbounds %struct.slim_port, %struct.slim_port* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  store i32 %32, i32* %33, align 4
  %34 = load %struct.slim_device*, %struct.slim_device** %6, align 8
  %35 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @slim_do_transfer(i32 %36, %struct.TYPE_6__* @txn)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %2
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %3, align 4
  br label %52

42:                                               ; preds = %2
  %43 = load i32, i32* @SLIM_MSG_MC_NEXT_REMOVE_CHANNEL, align 4
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @txn, i32 0, i32 0), align 4
  %44 = load i32, i32* @SLIM_CH_STATE_REMOVED, align 4
  %45 = load %struct.slim_port*, %struct.slim_port** %5, align 8
  %46 = getelementptr inbounds %struct.slim_port, %struct.slim_port* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.slim_device*, %struct.slim_device** %6, align 8
  %49 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @slim_do_transfer(i32 %50, %struct.TYPE_6__* @txn)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %42, %40
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @DEFINE_SLIM_LDEST_TXN(i32, i32, i32, i32, %struct.slim_val_inf*) #1

declare dso_local i32 @slim_do_transfer(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
