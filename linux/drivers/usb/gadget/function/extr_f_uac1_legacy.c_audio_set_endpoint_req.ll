; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_uac1_legacy.c_audio_set_endpoint_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_uac1_legacy.c_audio_set_endpoint_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"bRequest 0x%x, w_value 0x%04x, len %d, endpoint %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_function*, %struct.usb_ctrlrequest*)* @audio_set_endpoint_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_set_endpoint_req(%struct.usb_function* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca %struct.usb_function*, align 8
  %4 = alloca %struct.usb_ctrlrequest*, align 8
  %5 = alloca %struct.usb_composite_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_function* %0, %struct.usb_function** %3, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %4, align 8
  %10 = load %struct.usb_function*, %struct.usb_function** %3, align 8
  %11 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %13, align 8
  store %struct.usb_composite_dev* %14, %struct.usb_composite_dev** %5, align 8
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %18 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le16_to_cpu(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %22 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le16_to_cpu(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %26 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le16_to_cpu(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %30 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %31 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @DBG(%struct.usb_composite_dev* %29, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %38 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %46 [
    i32 132, label %40
    i32 129, label %42
    i32 131, label %43
    i32 128, label %44
    i32 130, label %45
  ]

40:                                               ; preds = %2
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %6, align 4
  br label %47

42:                                               ; preds = %2
  br label %47

43:                                               ; preds = %2
  br label %47

44:                                               ; preds = %2
  br label %47

45:                                               ; preds = %2
  br label %47

46:                                               ; preds = %2
  br label %47

47:                                               ; preds = %46, %45, %44, %43, %42, %40
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @DBG(%struct.usb_composite_dev*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
