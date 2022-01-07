; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7720.c_mos7720_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7720.c_mos7720_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.usb_serial* }
%struct.TYPE_3__ = type { i32 }
%struct.usb_serial = type { i32 }
%struct.moschip_port = type { i64, %struct.TYPE_3__** }

@NUM_URBS = common dso_local global i32 0, align 4
@MOS7720_MCR = common dso_local global i32 0, align 4
@MOS7720_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*)* @mos7720_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mos7720_close(%struct.usb_serial_port* %0) #0 {
  %2 = alloca %struct.usb_serial_port*, align 8
  %3 = alloca %struct.usb_serial*, align 8
  %4 = alloca %struct.moschip_port*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %2, align 8
  %6 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %7 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %6, i32 0, i32 3
  %8 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  store %struct.usb_serial* %8, %struct.usb_serial** %3, align 8
  %9 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %10 = call %struct.moschip_port* @usb_get_serial_port_data(%struct.usb_serial_port* %9)
  store %struct.moschip_port* %10, %struct.moschip_port** %4, align 8
  %11 = load %struct.moschip_port*, %struct.moschip_port** %4, align 8
  %12 = icmp eq %struct.moschip_port* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %91

14:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %28, %14
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @NUM_URBS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load %struct.moschip_port*, %struct.moschip_port** %4, align 8
  %21 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %22, i64 %24
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = call i32 @usb_kill_urb(%struct.TYPE_3__* %26)
  br label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %15

31:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %65, %31
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @NUM_URBS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %32
  %37 = load %struct.moschip_port*, %struct.moschip_port** %4, align 8
  %38 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %39, i64 %41
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = icmp ne %struct.TYPE_3__* %43, null
  br i1 %44, label %45, label %64

45:                                               ; preds = %36
  %46 = load %struct.moschip_port*, %struct.moschip_port** %4, align 8
  %47 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %48, i64 %50
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @kfree(i32 %54)
  %56 = load %struct.moschip_port*, %struct.moschip_port** %4, align 8
  %57 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %58, i64 %60
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = call i32 @usb_free_urb(%struct.TYPE_3__* %62)
  br label %64

64:                                               ; preds = %45, %36
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %32

68:                                               ; preds = %32
  %69 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %70 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %69, i32 0, i32 2
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = call i32 @usb_kill_urb(%struct.TYPE_3__* %71)
  %73 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %74 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = call i32 @usb_kill_urb(%struct.TYPE_3__* %75)
  %77 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %78 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %79 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @MOS7720_MCR, align 4
  %82 = call i32 @write_mos_reg(%struct.usb_serial* %77, i32 %80, i32 %81, i32 0)
  %83 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %84 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %85 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @MOS7720_IER, align 4
  %88 = call i32 @write_mos_reg(%struct.usb_serial* %83, i32 %86, i32 %87, i32 0)
  %89 = load %struct.moschip_port*, %struct.moschip_port** %4, align 8
  %90 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %68, %13
  ret void
}

declare dso_local %struct.moschip_port* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @usb_kill_urb(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_3__*) #1

declare dso_local i32 @write_mos_reg(%struct.usb_serial*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
