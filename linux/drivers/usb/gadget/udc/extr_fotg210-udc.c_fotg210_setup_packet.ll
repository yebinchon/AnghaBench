; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fotg210-udc.c_fotg210_setup_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fotg210-udc.c_fotg210_setup_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_udc = type { %struct.TYPE_4__, i64, %struct.TYPE_3__** }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@FOTG210_DMCR = common dso_local global i64 0, align 8
@DMCR_HS_EN = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@USB_TYPE_MASK = common dso_local global i32 0, align 4
@USB_TYPE_STANDARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fotg210_udc*, %struct.usb_ctrlrequest*)* @fotg210_setup_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fotg210_setup_packet(%struct.fotg210_udc* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca %struct.fotg210_udc*, align 8
  %4 = alloca %struct.usb_ctrlrequest*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fotg210_udc* %0, %struct.fotg210_udc** %3, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %4, align 8
  %8 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %9 = bitcast %struct.usb_ctrlrequest* %8 to i32*
  store i32* %9, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @fotg210_rdsetupp(%struct.fotg210_udc* %10, i32* %11)
  %13 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %14 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @USB_DIR_IN, align 4
  %17 = and i32 %15, %16
  %18 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %19 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %20, i64 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %17, i32* %23, align 4
  %24 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %25 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %2
  %31 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %32 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @FOTG210_DMCR, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @ioread32(i64 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @DMCR_HS_EN, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i64, i64* @USB_SPEED_HIGH, align 8
  br label %45

43:                                               ; preds = %30
  %44 = load i64, i64* @USB_SPEED_FULL, align 8
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i64 [ %42, %41 ], [ %44, %43 ]
  %47 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %48 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i64 %46, i64* %49, align 8
  br label %50

50:                                               ; preds = %45, %2
  %51 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %52 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @USB_TYPE_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %83

58:                                               ; preds = %50
  %59 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %60 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %81 [
    i32 131, label %62
    i32 132, label %66
    i32 128, label %70
    i32 130, label %74
    i32 129, label %78
  ]

62:                                               ; preds = %58
  %63 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %64 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %65 = call i32 @fotg210_get_status(%struct.fotg210_udc* %63, %struct.usb_ctrlrequest* %64)
  br label %82

66:                                               ; preds = %58
  %67 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %68 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %69 = call i32 @fotg210_clear_feature(%struct.fotg210_udc* %67, %struct.usb_ctrlrequest* %68)
  br label %82

70:                                               ; preds = %58
  %71 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %72 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %73 = call i32 @fotg210_set_feature(%struct.fotg210_udc* %71, %struct.usb_ctrlrequest* %72)
  br label %82

74:                                               ; preds = %58
  %75 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %76 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %77 = call i32 @fotg210_set_address(%struct.fotg210_udc* %75, %struct.usb_ctrlrequest* %76)
  br label %82

78:                                               ; preds = %58
  %79 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %80 = call i32 @fotg210_set_configuration(%struct.fotg210_udc* %79)
  store i32 1, i32* %6, align 4
  br label %82

81:                                               ; preds = %58
  store i32 1, i32* %6, align 4
  br label %82

82:                                               ; preds = %81, %78, %74, %70, %66, %62
  br label %84

83:                                               ; preds = %50
  store i32 1, i32* %6, align 4
  br label %84

84:                                               ; preds = %83, %82
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @fotg210_rdsetupp(%struct.fotg210_udc*, i32*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @fotg210_get_status(%struct.fotg210_udc*, %struct.usb_ctrlrequest*) #1

declare dso_local i32 @fotg210_clear_feature(%struct.fotg210_udc*, %struct.usb_ctrlrequest*) #1

declare dso_local i32 @fotg210_set_feature(%struct.fotg210_udc*, %struct.usb_ctrlrequest*) #1

declare dso_local i32 @fotg210_set_address(%struct.fotg210_udc*, %struct.usb_ctrlrequest*) #1

declare dso_local i32 @fotg210_set_configuration(%struct.fotg210_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
