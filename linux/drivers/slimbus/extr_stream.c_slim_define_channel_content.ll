; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_stream.c_slim_define_channel_content.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_stream.c_slim_define_channel_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slim_stream_runtime = type { i64, i32, %struct.slim_device* }
%struct.slim_device = type { i32, i32 }
%struct.slim_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.slim_val_inf = type { i32, i32*, i32*, i32*, i32 }

@SLIM_MSG_MC_NEXT_DEFINE_CONTENT = common dso_local global i32 0, align 4
@txn = common dso_local global i32 0, align 4
@SLIM_PROTO_ISO = common dso_local global i64 0, align 8
@SLIM_CHANNEL_CONTENT_FL = common dso_local global i32 0, align 4
@SLIM_SLOT_LEN_BITS = common dso_local global i32 0, align 4
@SLIM_CH_STATE_CONTENT_DEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slim_stream_runtime*, %struct.slim_port*)* @slim_define_channel_content to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slim_define_channel_content(%struct.slim_stream_runtime* %0, %struct.slim_port* %1) #0 {
  %3 = alloca %struct.slim_stream_runtime*, align 8
  %4 = alloca %struct.slim_port*, align 8
  %5 = alloca %struct.slim_device*, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca %struct.slim_val_inf, align 8
  %8 = alloca i32, align 4
  store %struct.slim_stream_runtime* %0, %struct.slim_stream_runtime** %3, align 8
  store %struct.slim_port* %1, %struct.slim_port** %4, align 8
  %9 = load %struct.slim_stream_runtime*, %struct.slim_stream_runtime** %3, align 8
  %10 = getelementptr inbounds %struct.slim_stream_runtime, %struct.slim_stream_runtime* %9, i32 0, i32 2
  %11 = load %struct.slim_device*, %struct.slim_device** %10, align 8
  store %struct.slim_device* %11, %struct.slim_device** %5, align 8
  %12 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %7, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %7, i32 0, i32 1
  store i32* inttoptr (i64 4 to i32*), i32** %13, align 8
  %14 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %7, i32 0, i32 2
  store i32* null, i32** %14, align 8
  %15 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %7, i32 0, i32 3
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32* %16, i32** %15, align 8
  %17 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %7, i32 0, i32 4
  store i32 0, i32* %17, align 8
  %18 = load i32, i32* @SLIM_MSG_MC_NEXT_DEFINE_CONTENT, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @txn, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.slim_stream_runtime*, %struct.slim_stream_runtime** %3, align 8
  %22 = getelementptr inbounds %struct.slim_stream_runtime, %struct.slim_stream_runtime* %21, i32 0, i32 2
  %23 = load %struct.slim_device*, %struct.slim_device** %22, align 8
  %24 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @DEFINE_SLIM_LDEST_TXN(i32 %19, i32 %20, i32 8, i32 %25, %struct.slim_val_inf* %7)
  %27 = load %struct.slim_port*, %struct.slim_port** %4, align 8
  %28 = getelementptr inbounds %struct.slim_port, %struct.slim_port* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %30, i32* %31, align 16
  %32 = load %struct.slim_port*, %struct.slim_port** %4, align 8
  %33 = getelementptr inbounds %struct.slim_port, %struct.slim_port* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 %35, i32* %36, align 4
  %37 = load %struct.slim_stream_runtime*, %struct.slim_stream_runtime** %3, align 8
  %38 = getelementptr inbounds %struct.slim_stream_runtime, %struct.slim_stream_runtime* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SLIM_PROTO_ISO, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %2
  %43 = load i32, i32* @SLIM_CHANNEL_CONTENT_FL, align 4
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %42, %2
  %48 = load %struct.slim_port*, %struct.slim_port** %4, align 8
  %49 = getelementptr inbounds %struct.slim_port, %struct.slim_port* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.slim_port*, %struct.slim_port** %4, align 8
  %53 = getelementptr inbounds %struct.slim_port, %struct.slim_port* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 4
  %57 = or i32 %51, %56
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 %57, i32* %58, align 8
  %59 = load %struct.slim_stream_runtime*, %struct.slim_stream_runtime** %3, align 8
  %60 = getelementptr inbounds %struct.slim_stream_runtime, %struct.slim_stream_runtime* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @SLIM_SLOT_LEN_BITS, align 4
  %63 = sdiv i32 %61, %62
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @SLIM_CH_STATE_CONTENT_DEFINED, align 4
  %66 = load %struct.slim_port*, %struct.slim_port** %4, align 8
  %67 = getelementptr inbounds %struct.slim_port, %struct.slim_port* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 4
  store i32 %65, i32* %68, align 4
  %69 = load %struct.slim_device*, %struct.slim_device** %5, align 8
  %70 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @slim_do_transfer(i32 %71, i32* @txn)
  ret i32 %72
}

declare dso_local i32 @DEFINE_SLIM_LDEST_TXN(i32, i32, i32, i32, %struct.slim_val_inf*) #1

declare dso_local i32 @slim_do_transfer(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
