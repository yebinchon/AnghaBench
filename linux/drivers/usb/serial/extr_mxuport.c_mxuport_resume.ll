; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mxuport.c_mxuport_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mxuport.c_mxuport_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i32, %struct.usb_serial_port** }
%struct.usb_serial_port = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*)* @mxuport_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxuport_resume(%struct.usb_serial* %0) #0 {
  %2 = alloca %struct.usb_serial*, align 8
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %27, %1
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %30

10:                                               ; preds = %7
  %11 = load %struct.usb_serial*, %struct.usb_serial** %2, align 8
  %12 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %11, i32 0, i32 1
  %13 = load %struct.usb_serial_port**, %struct.usb_serial_port*** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.usb_serial_port*, %struct.usb_serial_port** %13, i64 %15
  %17 = load %struct.usb_serial_port*, %struct.usb_serial_port** %16, align 8
  store %struct.usb_serial_port* %17, %struct.usb_serial_port** %3, align 8
  %18 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %19 = load i32, i32* @GFP_NOIO, align 4
  %20 = call i32 @usb_serial_generic_submit_read_urbs(%struct.usb_serial_port* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %10
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %23, %10
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %7

30:                                               ; preds = %7
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %60, %30
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.usb_serial*, %struct.usb_serial** %2, align 8
  %34 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %63

37:                                               ; preds = %31
  %38 = load %struct.usb_serial*, %struct.usb_serial** %2, align 8
  %39 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %38, i32 0, i32 1
  %40 = load %struct.usb_serial_port**, %struct.usb_serial_port*** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.usb_serial_port*, %struct.usb_serial_port** %40, i64 %42
  %44 = load %struct.usb_serial_port*, %struct.usb_serial_port** %43, align 8
  store %struct.usb_serial_port* %44, %struct.usb_serial_port** %3, align 8
  %45 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %46 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %45, i32 0, i32 0
  %47 = call i32 @tty_port_initialized(i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %37
  br label %60

50:                                               ; preds = %37
  %51 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %52 = load i32, i32* @GFP_NOIO, align 4
  %53 = call i32 @usb_serial_generic_write_start(%struct.usb_serial_port* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %50
  br label %60

60:                                               ; preds = %59, %49
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %31

63:                                               ; preds = %31
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  br label %70

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %66
  %71 = phi i32 [ %68, %66 ], [ 0, %69 ]
  ret i32 %71
}

declare dso_local i32 @usb_serial_generic_submit_read_urbs(%struct.usb_serial_port*, i32) #1

declare dso_local i32 @tty_port_initialized(i32*) #1

declare dso_local i32 @usb_serial_generic_write_start(%struct.usb_serial_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
