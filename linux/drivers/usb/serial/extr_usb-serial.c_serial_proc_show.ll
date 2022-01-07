; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb-serial.c_serial_proc_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb-serial.c_serial_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.usb_serial = type { i8*, i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.usb_serial_port = type { i8*, %struct.usb_serial* }

@.str = private unnamed_addr constant [27 x i8] c"usbserinfo:1.0 driver:2.0\0A\00", align 1
@USB_SERIAL_TTY_MINORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%d:\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" module:%s\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" name:\22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c" vendor:%04x product:%04x\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c" num_ports:%d\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c" port:%d\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c" path:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @serial_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.usb_serial*, align 8
  %6 = alloca %struct.usb_serial_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [40 x i8], align 16
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = call i32 @seq_puts(%struct.seq_file* %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %94, %2
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @USB_SERIAL_TTY_MINORS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %97

15:                                               ; preds = %11
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.usb_serial_port* @usb_serial_port_get_by_minor(i32 %16)
  store %struct.usb_serial_port* %17, %struct.usb_serial_port** %6, align 8
  %18 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %19 = icmp eq %struct.usb_serial_port* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %94

21:                                               ; preds = %15
  %22 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %23 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %22, i32 0, i32 1
  %24 = load %struct.usb_serial*, %struct.usb_serial** %23, align 8
  store %struct.usb_serial* %24, %struct.usb_serial** %5, align 8
  %25 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load %struct.usb_serial*, %struct.usb_serial** %5, align 8
  %29 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %28, i32 0, i32 3
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %21
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = load %struct.usb_serial*, %struct.usb_serial** %5, align 8
  %38 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %37, i32 0, i32 3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i8* @module_name(i64 %42)
  %44 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %35, %21
  %46 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %47 = load %struct.usb_serial*, %struct.usb_serial** %5, align 8
  %48 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %47, i32 0, i32 3
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  %53 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %54 = load %struct.usb_serial*, %struct.usb_serial** %5, align 8
  %55 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %54, i32 0, i32 2
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le16_to_cpu(i32 %59)
  %61 = load %struct.usb_serial*, %struct.usb_serial** %5, align 8
  %62 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %61, i32 0, i32 2
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le16_to_cpu(i32 %66)
  %68 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %60, i32 %67)
  %69 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %70 = load %struct.usb_serial*, %struct.usb_serial** %5, align 8
  %71 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %72)
  %74 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %75 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %76 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %77)
  %79 = load %struct.usb_serial*, %struct.usb_serial** %5, align 8
  %80 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %79, i32 0, i32 2
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  %83 = call i32 @usb_make_path(%struct.TYPE_8__* %81, i8* %82, i32 40)
  %84 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %85 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  %86 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %85)
  %87 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %88 = call i32 @seq_putc(%struct.seq_file* %87, i8 signext 10)
  %89 = load %struct.usb_serial*, %struct.usb_serial** %5, align 8
  %90 = call i32 @usb_serial_put(%struct.usb_serial* %89)
  %91 = load %struct.usb_serial*, %struct.usb_serial** %5, align 8
  %92 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %91, i32 0, i32 1
  %93 = call i32 @mutex_unlock(i32* %92)
  br label %94

94:                                               ; preds = %45, %20
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %11

97:                                               ; preds = %11
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local %struct.usb_serial_port* @usb_serial_port_get_by_minor(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i8* @module_name(i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usb_make_path(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @usb_serial_put(%struct.usb_serial*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
