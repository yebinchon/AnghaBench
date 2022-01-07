; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_serial.c_gs_port_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_serial.c_gs_port_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.gs_port* }
%struct.gs_port = type { i32, %struct.usb_cdc_line_coding, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_cdc_line_coding = type { i32 }

@ports = common dso_local global %struct.TYPE_2__* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gs_rx_push = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.usb_cdc_line_coding*)* @gs_port_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gs_port_alloc(i32 %0, %struct.usb_cdc_line_coding* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_cdc_line_coding*, align 8
  %5 = alloca %struct.gs_port*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.usb_cdc_line_coding* %1, %struct.usb_cdc_line_coding** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ports, align 8
  %8 = load i32, i32* %3, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ports, align 8
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.gs_port*, %struct.gs_port** %17, align 8
  %19 = icmp ne %struct.gs_port* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %71

23:                                               ; preds = %2
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.gs_port* @kzalloc(i32 40, i32 %24)
  store %struct.gs_port* %25, %struct.gs_port** %5, align 8
  %26 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %27 = icmp eq %struct.gs_port* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %71

31:                                               ; preds = %23
  %32 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %33 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %32, i32 0, i32 9
  %34 = call i32 @tty_port_init(i32* %33)
  %35 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %36 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %35, i32 0, i32 8
  %37 = call i32 @spin_lock_init(i32* %36)
  %38 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %39 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %38, i32 0, i32 7
  %40 = call i32 @init_waitqueue_head(i32* %39)
  %41 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %42 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %41, i32 0, i32 6
  %43 = call i32 @init_waitqueue_head(i32* %42)
  %44 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %45 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %44, i32 0, i32 5
  %46 = load i32, i32* @gs_rx_push, align 4
  %47 = call i32 @INIT_DELAYED_WORK(i32* %45, i32 %46)
  %48 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %49 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %48, i32 0, i32 4
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %52 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %51, i32 0, i32 3
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %55 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %54, i32 0, i32 2
  %56 = call i32 @INIT_LIST_HEAD(i32* %55)
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %59 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %61 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %60, i32 0, i32 1
  %62 = load %struct.usb_cdc_line_coding*, %struct.usb_cdc_line_coding** %4, align 8
  %63 = bitcast %struct.usb_cdc_line_coding* %61 to i8*
  %64 = bitcast %struct.usb_cdc_line_coding* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 %64, i64 4, i1 false)
  %65 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ports, align 8
  %67 = load i32, i32* %3, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store %struct.gs_port* %65, %struct.gs_port** %70, align 8
  br label %71

71:                                               ; preds = %31, %28, %20
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ports, align 8
  %73 = load i32, i32* %3, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.gs_port* @kzalloc(i32, i32) #1

declare dso_local i32 @tty_port_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
