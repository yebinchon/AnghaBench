; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_serial.c_gserial_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_serial.c_gserial_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gserial = type { i32, i32, %struct.gs_port*, i32 }
%struct.gs_port = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i64, %struct.TYPE_2__, i32, i32*, i32 }
%struct.TYPE_2__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gserial_disconnect(%struct.gserial* %0) #0 {
  %2 = alloca %struct.gserial*, align 8
  %3 = alloca %struct.gs_port*, align 8
  %4 = alloca i64, align 8
  store %struct.gserial* %0, %struct.gserial** %2, align 8
  %5 = load %struct.gserial*, %struct.gserial** %2, align 8
  %6 = getelementptr inbounds %struct.gserial, %struct.gserial* %5, i32 0, i32 2
  %7 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  store %struct.gs_port* %7, %struct.gs_port** %3, align 8
  %8 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %9 = icmp ne %struct.gs_port* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %117

11:                                               ; preds = %1
  %12 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %13 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %12, i32 0, i32 0
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.gserial*, %struct.gserial** %2, align 8
  %17 = getelementptr inbounds %struct.gserial, %struct.gserial* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %20 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %19, i32 0, i32 13
  store i32 %18, i32* %20, align 8
  %21 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %22 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %21, i32 0, i32 12
  store i32* null, i32** %22, align 8
  %23 = load %struct.gserial*, %struct.gserial** %2, align 8
  %24 = getelementptr inbounds %struct.gserial, %struct.gserial* %23, i32 0, i32 2
  store %struct.gs_port* null, %struct.gs_port** %24, align 8
  %25 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %26 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %25, i32 0, i32 10
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %11
  %31 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %32 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %31, i32 0, i32 9
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %30, %11
  %36 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %37 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %36, i32 0, i32 11
  %38 = call i32 @wake_up_interruptible(i32* %37)
  %39 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %40 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %39, i32 0, i32 10
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %46 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %45, i32 0, i32 10
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @tty_hangup(i64 %48)
  br label %50

50:                                               ; preds = %44, %35
  br label %51

51:                                               ; preds = %50, %30
  %52 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %53 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %52, i32 0, i32 0
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load %struct.gserial*, %struct.gserial** %2, align 8
  %57 = getelementptr inbounds %struct.gserial, %struct.gserial* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @usb_ep_disable(i32 %58)
  %60 = load %struct.gserial*, %struct.gserial** %2, align 8
  %61 = getelementptr inbounds %struct.gserial, %struct.gserial* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @usb_ep_disable(i32 %62)
  %64 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %65 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %64, i32 0, i32 0
  %66 = load i64, i64* %4, align 8
  %67 = call i32 @spin_lock_irqsave(i32* %65, i64 %66)
  %68 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %69 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %68, i32 0, i32 10
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %51
  %74 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %75 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %74, i32 0, i32 9
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %73
  %79 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %80 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %79, i32 0, i32 8
  %81 = call i32 @kfifo_free(i32* %80)
  br label %82

82:                                               ; preds = %78, %73, %51
  %83 = load %struct.gserial*, %struct.gserial** %2, align 8
  %84 = getelementptr inbounds %struct.gserial, %struct.gserial* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %87 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %86, i32 0, i32 7
  %88 = call i32 @gs_free_requests(i32 %85, i32* %87, i32* null)
  %89 = load %struct.gserial*, %struct.gserial** %2, align 8
  %90 = getelementptr inbounds %struct.gserial, %struct.gserial* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %93 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %92, i32 0, i32 6
  %94 = call i32 @gs_free_requests(i32 %91, i32* %93, i32* null)
  %95 = load %struct.gserial*, %struct.gserial** %2, align 8
  %96 = getelementptr inbounds %struct.gserial, %struct.gserial* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %99 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %98, i32 0, i32 5
  %100 = call i32 @gs_free_requests(i32 %97, i32* %99, i32* null)
  %101 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %102 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %101, i32 0, i32 1
  store i64 0, i64* %102, align 8
  %103 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %104 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %103, i32 0, i32 2
  store i64 0, i64* %104, align 8
  %105 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %106 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %105, i32 0, i32 3
  store i64 0, i64* %106, align 8
  %107 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %108 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %107, i32 0, i32 4
  store i64 0, i64* %108, align 8
  %109 = load %struct.gserial*, %struct.gserial** %2, align 8
  %110 = getelementptr inbounds %struct.gserial, %struct.gserial* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @gs_console_disconnect(i32 %111)
  %113 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %114 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %113, i32 0, i32 0
  %115 = load i64, i64* %4, align 8
  %116 = call i32 @spin_unlock_irqrestore(i32* %114, i64 %115)
  br label %117

117:                                              ; preds = %82, %10
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @tty_hangup(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_ep_disable(i32) #1

declare dso_local i32 @kfifo_free(i32*) #1

declare dso_local i32 @gs_free_requests(i32, i32*, i32*) #1

declare dso_local i32 @gs_console_disconnect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
