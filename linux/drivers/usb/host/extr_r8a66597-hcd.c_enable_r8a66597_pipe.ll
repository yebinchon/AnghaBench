; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_r8a66597-hcd.c_enable_r8a66597_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_r8a66597-hcd.c_enable_r8a66597_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i32* }
%struct.urb = type { i32 }
%struct.usb_host_endpoint = type { %struct.r8a66597_pipe* }
%struct.r8a66597_pipe = type { %struct.r8a66597_pipe_info }
%struct.r8a66597_pipe_info = type { i64 }
%struct.r8a66597_device = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"enable_pipe:\0A\00", align 1
@R8A66597_PIPE_NO_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*, %struct.urb*, %struct.usb_host_endpoint*, %struct.r8a66597_pipe_info*)* @enable_r8a66597_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_r8a66597_pipe(%struct.r8a66597* %0, %struct.urb* %1, %struct.usb_host_endpoint* %2, %struct.r8a66597_pipe_info* %3) #0 {
  %5 = alloca %struct.r8a66597*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca %struct.usb_host_endpoint*, align 8
  %8 = alloca %struct.r8a66597_pipe_info*, align 8
  %9 = alloca %struct.r8a66597_device*, align 8
  %10 = alloca %struct.r8a66597_pipe*, align 8
  store %struct.r8a66597* %0, %struct.r8a66597** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store %struct.usb_host_endpoint* %2, %struct.usb_host_endpoint** %7, align 8
  store %struct.r8a66597_pipe_info* %3, %struct.r8a66597_pipe_info** %8, align 8
  %11 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %12 = load %struct.urb*, %struct.urb** %6, align 8
  %13 = call %struct.r8a66597_device* @get_urb_to_r8a66597_dev(%struct.r8a66597* %11, %struct.urb* %12)
  store %struct.r8a66597_device* %13, %struct.r8a66597_device** %9, align 8
  %14 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %7, align 8
  %15 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %14, i32 0, i32 0
  %16 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %15, align 8
  store %struct.r8a66597_pipe* %16, %struct.r8a66597_pipe** %10, align 8
  %17 = load %struct.r8a66597_device*, %struct.r8a66597_device** %9, align 8
  %18 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @dev_dbg(i32* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %10, align 8
  %23 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %22, i32 0, i32 0
  %24 = load %struct.r8a66597_pipe_info*, %struct.r8a66597_pipe_info** %8, align 8
  %25 = bitcast %struct.r8a66597_pipe_info* %23 to i8*
  %26 = bitcast %struct.r8a66597_pipe_info* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 8, i1 false)
  %27 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %10, align 8
  %28 = load i32, i32* @R8A66597_PIPE_NO_DMA, align 4
  %29 = call i32 @set_pipe_reg_addr(%struct.r8a66597_pipe* %27, i32 %28)
  %30 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %31 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %10, align 8
  %34 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.r8a66597_device*, %struct.r8a66597_device** %9, align 8
  %41 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %10, align 8
  %44 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %51 = load %struct.r8a66597_device*, %struct.r8a66597_device** %9, align 8
  %52 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %10, align 8
  %53 = load %struct.urb*, %struct.urb** %6, align 8
  %54 = call i32 @enable_r8a66597_pipe_dma(%struct.r8a66597* %50, %struct.r8a66597_device* %51, %struct.r8a66597_pipe* %52, %struct.urb* %53)
  ret void
}

declare dso_local %struct.r8a66597_device* @get_urb_to_r8a66597_dev(%struct.r8a66597*, %struct.urb*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_pipe_reg_addr(%struct.r8a66597_pipe*, i32) #1

declare dso_local i32 @enable_r8a66597_pipe_dma(%struct.r8a66597*, %struct.r8a66597_device*, %struct.r8a66597_pipe*, %struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
