; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_stream.c_slim_stream_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_stream.c_slim_stream_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.slim_stream_runtime = type { i32, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.slim_controller* }
%struct.slim_controller = type { {}* }

@txn = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@SLIM_MSG_MC_BEGIN_RECONFIGURATION = common dso_local global i32 0, align 4
@SLIM_LA_MANAGER = common dso_local global i32 0, align 4
@SLIM_MSG_MC_RECONFIGURE_NOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slim_stream_disable(%struct.slim_stream_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.slim_stream_runtime*, align 8
  %4 = alloca %struct.slim_controller*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.slim_stream_runtime* %0, %struct.slim_stream_runtime** %3, align 8
  %7 = load i32, i32* @SLIM_MSG_MC_BEGIN_RECONFIGURATION, align 4
  %8 = load i32, i32* @SLIM_LA_MANAGER, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @txn, i32 0, i32 0), align 4
  %10 = call i32 @DEFINE_SLIM_BCAST_TXN(i32 %9, i32 %7, i32 3, i32 %8, i32* null)
  %11 = load %struct.slim_stream_runtime*, %struct.slim_stream_runtime** %3, align 8
  %12 = getelementptr inbounds %struct.slim_stream_runtime, %struct.slim_stream_runtime* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.slim_controller*, %struct.slim_controller** %14, align 8
  store %struct.slim_controller* %15, %struct.slim_controller** %4, align 8
  %16 = load %struct.slim_controller*, %struct.slim_controller** %4, align 8
  %17 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.slim_stream_runtime*)**
  %19 = load i32 (%struct.slim_stream_runtime*)*, i32 (%struct.slim_stream_runtime*)** %18, align 8
  %20 = icmp ne i32 (%struct.slim_stream_runtime*)* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.slim_controller*, %struct.slim_controller** %4, align 8
  %23 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.slim_stream_runtime*)**
  %25 = load i32 (%struct.slim_stream_runtime*)*, i32 (%struct.slim_stream_runtime*)** %24, align 8
  %26 = load %struct.slim_stream_runtime*, %struct.slim_stream_runtime** %3, align 8
  %27 = call i32 %25(%struct.slim_stream_runtime* %26)
  br label %28

28:                                               ; preds = %21, %1
  %29 = load %struct.slim_controller*, %struct.slim_controller** %4, align 8
  %30 = call i32 @slim_do_transfer(%struct.slim_controller* %29, %struct.TYPE_6__* @txn)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %58

35:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %51, %35
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.slim_stream_runtime*, %struct.slim_stream_runtime** %3, align 8
  %39 = getelementptr inbounds %struct.slim_stream_runtime, %struct.slim_stream_runtime* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load %struct.slim_stream_runtime*, %struct.slim_stream_runtime** %3, align 8
  %44 = load %struct.slim_stream_runtime*, %struct.slim_stream_runtime** %3, align 8
  %45 = getelementptr inbounds %struct.slim_stream_runtime, %struct.slim_stream_runtime* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = call i32 @slim_deactivate_remove_channel(%struct.slim_stream_runtime* %43, i32* %49)
  br label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %36

54:                                               ; preds = %36
  %55 = load i32, i32* @SLIM_MSG_MC_RECONFIGURE_NOW, align 4
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @txn, i32 0, i32 0), align 4
  %56 = load %struct.slim_controller*, %struct.slim_controller** %4, align 8
  %57 = call i32 @slim_do_transfer(%struct.slim_controller* %56, %struct.TYPE_6__* @txn)
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %54, %33
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @DEFINE_SLIM_BCAST_TXN(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @slim_do_transfer(%struct.slim_controller*, %struct.TYPE_6__*) #1

declare dso_local i32 @slim_deactivate_remove_channel(%struct.slim_stream_runtime*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
