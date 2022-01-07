; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_printer.c_gprinter_req_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_printer.c_gprinter_req_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32, i32, i32, i32 }
%struct.printer_dev = type { i32 }

@USB_RECIP_MASK = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_TYPE_MASK = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_function*, %struct.usb_ctrlrequest*, i32)* @gprinter_req_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gprinter_req_match(%struct.usb_function* %0, %struct.usb_ctrlrequest* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_function*, align 8
  %6 = alloca %struct.usb_ctrlrequest*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.printer_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_function* %0, %struct.usb_function** %5, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %13 = call %struct.printer_dev* @func_to_printer(%struct.usb_function* %12)
  store %struct.printer_dev* %13, %struct.printer_dev** %8, align 8
  %14 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %15 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le16_to_cpu(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %19 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %23 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le16_to_cpu(i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %99

29:                                               ; preds = %3
  %30 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %31 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @USB_RECIP_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %29
  %38 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %39 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @USB_TYPE_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @USB_TYPE_CLASS, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37, %29
  store i32 0, i32* %4, align 4
  br label %99

46:                                               ; preds = %37
  %47 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %48 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %91 [
    i32 130, label %50
    i32 129, label %61
    i32 128, label %76
  ]

50:                                               ; preds = %46
  %51 = load i32, i32* %9, align 4
  %52 = ashr i32 %51, 8
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* @USB_DIR_IN, align 4
  %54 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %55 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %53, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %92

60:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %99

61:                                               ; preds = %46
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %11, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load i32, i32* @USB_DIR_IN, align 4
  %69 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %70 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %92

75:                                               ; preds = %67, %64, %61
  store i32 0, i32* %4, align 4
  br label %99

76:                                               ; preds = %46
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* @USB_DIR_IN, align 4
  %84 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %85 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %83, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %82
  br label %92

90:                                               ; preds = %82, %79, %76
  br label %91

91:                                               ; preds = %46, %90
  store i32 0, i32* %4, align 4
  br label %99

92:                                               ; preds = %89, %74, %59
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.printer_dev*, %struct.printer_dev** %8, align 8
  %95 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %93, %96
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %92, %91, %75, %60, %45, %28
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.printer_dev* @func_to_printer(%struct.usb_function*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
