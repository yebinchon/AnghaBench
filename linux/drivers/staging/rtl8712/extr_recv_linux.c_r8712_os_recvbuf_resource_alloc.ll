; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_recv_linux.c_r8712_os_recvbuf_resource_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_recv_linux.c_r8712_os_recvbuf_resource_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32 }
%struct.recv_buf = type { i32, i64, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_os_recvbuf_resource_alloc(%struct._adapter* %0, %struct.recv_buf* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %struct.recv_buf*, align 8
  %5 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store %struct.recv_buf* %1, %struct.recv_buf** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.recv_buf*, %struct.recv_buf** %4, align 8
  %7 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %6, i32 0, i32 0
  store i32 0, i32* %7, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i32 @usb_alloc_urb(i32 0, i32 %8)
  %10 = load %struct.recv_buf*, %struct.recv_buf** %4, align 8
  %11 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %10, i32 0, i32 10
  store i32 %9, i32* %11, align 8
  %12 = load %struct.recv_buf*, %struct.recv_buf** %4, align 8
  %13 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %12, i32 0, i32 10
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.recv_buf*, %struct.recv_buf** %4, align 8
  %21 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %20, i32 0, i32 9
  store i32* null, i32** %21, align 8
  %22 = load %struct.recv_buf*, %struct.recv_buf** %4, align 8
  %23 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %22, i32 0, i32 8
  store i32* null, i32** %23, align 8
  %24 = load %struct.recv_buf*, %struct.recv_buf** %4, align 8
  %25 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %24, i32 0, i32 7
  store i32* null, i32** %25, align 8
  %26 = load %struct.recv_buf*, %struct.recv_buf** %4, align 8
  %27 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %26, i32 0, i32 6
  store i32* null, i32** %27, align 8
  %28 = load %struct.recv_buf*, %struct.recv_buf** %4, align 8
  %29 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %28, i32 0, i32 5
  store i32* null, i32** %29, align 8
  %30 = load %struct.recv_buf*, %struct.recv_buf** %4, align 8
  %31 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %30, i32 0, i32 4
  store i32* null, i32** %31, align 8
  %32 = load %struct.recv_buf*, %struct.recv_buf** %4, align 8
  %33 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %32, i32 0, i32 3
  store i32* null, i32** %33, align 8
  %34 = load %struct.recv_buf*, %struct.recv_buf** %4, align 8
  %35 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.recv_buf*, %struct.recv_buf** %4, align 8
  %37 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
