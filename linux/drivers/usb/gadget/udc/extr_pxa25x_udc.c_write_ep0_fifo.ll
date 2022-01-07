; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa25x_udc.c_write_ep0_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa25x_udc.c_write_ep0_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa25x_ep = type { %struct.pxa25x_udc* }
%struct.pxa25x_udc = type { i64, %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.pxa25x_request = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }

@EP0_FIFO_SIZE = common dso_local global i32 0, align 4
@DBG_VERY_NOISY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ep0in %d bytes %d left %p\0A\00", align 1
@UDCCS0_IPR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"short IN\00", align 1
@UDCCS0_OPR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa25x_ep*, %struct.pxa25x_request*)* @write_ep0_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_ep0_fifo(%struct.pxa25x_ep* %0, %struct.pxa25x_request* %1) #0 {
  %3 = alloca %struct.pxa25x_ep*, align 8
  %4 = alloca %struct.pxa25x_request*, align 8
  %5 = alloca %struct.pxa25x_udc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pxa25x_ep* %0, %struct.pxa25x_ep** %3, align 8
  store %struct.pxa25x_request* %1, %struct.pxa25x_request** %4, align 8
  %8 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %3, align 8
  %9 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %8, i32 0, i32 0
  %10 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %9, align 8
  store %struct.pxa25x_udc* %10, %struct.pxa25x_udc** %5, align 8
  %11 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %5, align 8
  %12 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load %struct.pxa25x_request*, %struct.pxa25x_request** %4, align 8
  %16 = load i32, i32* @EP0_FIFO_SIZE, align 4
  %17 = call i32 @write_packet(i32* %14, %struct.pxa25x_request* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %3, align 8
  %20 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %19, i32 0, i32 0
  %21 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %20, align 8
  %22 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add i32 %25, %18
  store i32 %26, i32* %24, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @EP0_FIFO_SIZE, align 4
  %29 = icmp ne i32 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @DBG_VERY_NOISY, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.pxa25x_request*, %struct.pxa25x_request** %4, align 8
  %34 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = zext i32 %36 to i64
  %38 = load %struct.pxa25x_request*, %struct.pxa25x_request** %4, align 8
  %39 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %37, %41
  %43 = load %struct.pxa25x_request*, %struct.pxa25x_request** %4, align 8
  %44 = call i32 @DBG(i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %32, i64 %42, %struct.pxa25x_request* %43)
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %100

48:                                               ; preds = %2
  %49 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %3, align 8
  %50 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %49, i32 0, i32 0
  %51 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %50, align 8
  %52 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %3, align 8
  %57 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %56, i32 0, i32 0
  %58 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %57, align 8
  %59 = load i32, i32* @UDCCS0_IPR, align 4
  %60 = call i32 @ep0start(%struct.pxa25x_udc* %58, i32 %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %65

61:                                               ; preds = %48
  %62 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %5, align 8
  %63 = load i32, i32* @UDCCS0_IPR, align 4
  %64 = call i32 @udc_ep0_set_UDCCS(%struct.pxa25x_udc* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %55
  %66 = load %struct.pxa25x_request*, %struct.pxa25x_request** %4, align 8
  %67 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %6, align 4
  %70 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %3, align 8
  %71 = load %struct.pxa25x_request*, %struct.pxa25x_request** %4, align 8
  %72 = call i32 @done(%struct.pxa25x_ep* %70, %struct.pxa25x_request* %71, i32 0)
  %73 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %3, align 8
  %74 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %73, i32 0, i32 0
  %75 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %74, align 8
  %76 = call i32 @ep0_idle(%struct.pxa25x_udc* %75)
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @EP0_FIFO_SIZE, align 4
  %79 = icmp uge i32 %77, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %65
  store i32 100, i32* %6, align 4
  br label %81

81:                                               ; preds = %95, %80
  %82 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %5, align 8
  %83 = call i32 @udc_ep0_get_UDCCS(%struct.pxa25x_udc* %82)
  %84 = load i32, i32* @UDCCS0_OPR, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %5, align 8
  %89 = load i32, i32* @UDCCS0_OPR, align 4
  %90 = call i32 @udc_ep0_set_UDCCS(%struct.pxa25x_udc* %88, i32 %89)
  br label %98

91:                                               ; preds = %81
  %92 = load i32, i32* %6, align 4
  %93 = add i32 %92, -1
  store i32 %93, i32* %6, align 4
  %94 = call i32 @udelay(i32 1)
  br label %95

95:                                               ; preds = %91
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %81, label %98

98:                                               ; preds = %95, %87
  br label %99

99:                                               ; preds = %98, %65
  br label %113

100:                                              ; preds = %2
  %101 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %3, align 8
  %102 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %101, i32 0, i32 0
  %103 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %102, align 8
  %104 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %100
  %108 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %3, align 8
  %109 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %108, i32 0, i32 0
  %110 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %109, align 8
  %111 = call i32 @ep0start(%struct.pxa25x_udc* %110, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %112

112:                                              ; preds = %107, %100
  br label %113

113:                                              ; preds = %112, %99
  %114 = load i32, i32* %7, align 4
  ret i32 %114
}

declare dso_local i32 @write_packet(i32*, %struct.pxa25x_request*, i32) #1

declare dso_local i32 @DBG(i32, i8*, i32, i64, %struct.pxa25x_request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ep0start(%struct.pxa25x_udc*, i32, i8*) #1

declare dso_local i32 @udc_ep0_set_UDCCS(%struct.pxa25x_udc*, i32) #1

declare dso_local i32 @done(%struct.pxa25x_ep*, %struct.pxa25x_request*, i32) #1

declare dso_local i32 @ep0_idle(%struct.pxa25x_udc*) #1

declare dso_local i32 @udc_ep0_get_UDCCS(%struct.pxa25x_udc*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
