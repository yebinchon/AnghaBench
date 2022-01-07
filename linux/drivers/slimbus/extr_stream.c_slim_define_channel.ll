; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_stream.c_slim_define_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_stream.c_slim_define_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slim_stream_runtime = type { i32, i32, i32, %struct.slim_device* }
%struct.slim_device = type { i32, i32 }
%struct.slim_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.slim_val_inf = type { i32, i32*, i32*, i32*, i32 }

@SLIM_MSG_MC_NEXT_DEFINE_CHANNEL = common dso_local global i32 0, align 4
@txn = common dso_local global i32 0, align 4
@SLIM_PROTO_ISO = common dso_local global i32 0, align 4
@SLIM_SLOT_LEN_BITS = common dso_local global i32 0, align 4
@SLIM_CH_STATE_DEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slim_stream_runtime*, %struct.slim_port*)* @slim_define_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slim_define_channel(%struct.slim_stream_runtime* %0, %struct.slim_port* %1) #0 {
  %3 = alloca %struct.slim_stream_runtime*, align 8
  %4 = alloca %struct.slim_port*, align 8
  %5 = alloca %struct.slim_device*, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca %struct.slim_val_inf, align 8
  %8 = alloca i32, align 4
  store %struct.slim_stream_runtime* %0, %struct.slim_stream_runtime** %3, align 8
  store %struct.slim_port* %1, %struct.slim_port** %4, align 8
  %9 = load %struct.slim_stream_runtime*, %struct.slim_stream_runtime** %3, align 8
  %10 = getelementptr inbounds %struct.slim_stream_runtime, %struct.slim_stream_runtime* %9, i32 0, i32 3
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
  %18 = load i32, i32* @SLIM_MSG_MC_NEXT_DEFINE_CHANNEL, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @txn, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.slim_stream_runtime*, %struct.slim_stream_runtime** %3, align 8
  %22 = getelementptr inbounds %struct.slim_stream_runtime, %struct.slim_stream_runtime* %21, i32 0, i32 3
  %23 = load %struct.slim_device*, %struct.slim_device** %22, align 8
  %24 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @DEFINE_SLIM_LDEST_TXN(i32 %19, i32 %20, i32 8, i32 %25, %struct.slim_val_inf* %7)
  %27 = load %struct.slim_stream_runtime*, %struct.slim_stream_runtime** %3, align 8
  %28 = getelementptr inbounds %struct.slim_stream_runtime, %struct.slim_stream_runtime* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @slim_get_segdist_code(i32 %29)
  %31 = load %struct.slim_port*, %struct.slim_port** %4, align 8
  %32 = getelementptr inbounds %struct.slim_port, %struct.slim_port* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.slim_port*, %struct.slim_port** %4, align 8
  %35 = getelementptr inbounds %struct.slim_port, %struct.slim_port* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %37, i32* %38, align 16
  %39 = load %struct.slim_port*, %struct.slim_port** %4, align 8
  %40 = getelementptr inbounds %struct.slim_port, %struct.slim_port* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 255
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 %43, i32* %44, align 4
  %45 = load %struct.slim_stream_runtime*, %struct.slim_stream_runtime** %3, align 8
  %46 = getelementptr inbounds %struct.slim_stream_runtime, %struct.slim_stream_runtime* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = shl i32 %47, 4
  %49 = load %struct.slim_port*, %struct.slim_port** %4, align 8
  %50 = getelementptr inbounds %struct.slim_port, %struct.slim_port* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 3840
  %54 = ashr i32 %53, 8
  %55 = or i32 %48, %54
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 %55, i32* %56, align 8
  %57 = load %struct.slim_stream_runtime*, %struct.slim_stream_runtime** %3, align 8
  %58 = getelementptr inbounds %struct.slim_stream_runtime, %struct.slim_stream_runtime* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @SLIM_PROTO_ISO, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %2
  %63 = load %struct.slim_stream_runtime*, %struct.slim_stream_runtime** %3, align 8
  %64 = getelementptr inbounds %struct.slim_stream_runtime, %struct.slim_stream_runtime* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SLIM_SLOT_LEN_BITS, align 4
  %67 = sdiv i32 %65, %66
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 %67, i32* %68, align 4
  br label %77

69:                                               ; preds = %2
  %70 = load %struct.slim_stream_runtime*, %struct.slim_stream_runtime** %3, align 8
  %71 = getelementptr inbounds %struct.slim_stream_runtime, %struct.slim_stream_runtime* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @SLIM_SLOT_LEN_BITS, align 4
  %74 = sdiv i32 %72, %73
  %75 = add nsw i32 %74, 1
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %69, %62
  %78 = load i32, i32* @SLIM_CH_STATE_DEFINED, align 4
  %79 = load %struct.slim_port*, %struct.slim_port** %4, align 8
  %80 = getelementptr inbounds %struct.slim_port, %struct.slim_port* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  store i32 %78, i32* %81, align 4
  %82 = load %struct.slim_device*, %struct.slim_device** %5, align 8
  %83 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @slim_do_transfer(i32 %84, i32* @txn)
  ret i32 %85
}

declare dso_local i32 @DEFINE_SLIM_LDEST_TXN(i32, i32, i32, i32, %struct.slim_val_inf*) #1

declare dso_local i32 @slim_get_segdist_code(i32) #1

declare dso_local i32 @slim_do_transfer(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
