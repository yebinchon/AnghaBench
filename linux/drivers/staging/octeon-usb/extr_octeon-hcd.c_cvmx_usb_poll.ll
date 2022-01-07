; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_hcd = type { i32, i32, i32 }
%union.cvmx_usbcx_hfnum = type { i8* }
%union.cvmx_usbcx_gintsts = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i64, i64, i64, i64, i64 }
%union.cvmx_usbcx_hprt = type { i8* }
%union.cvmx_usbcx_haint = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@CVMX_USB_INITIALIZE_FLAGS_NO_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_hcd*)* @cvmx_usb_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvmx_usb_poll(%struct.octeon_hcd* %0) #0 {
  %2 = alloca %struct.octeon_hcd*, align 8
  %3 = alloca %union.cvmx_usbcx_hfnum, align 8
  %4 = alloca %union.cvmx_usbcx_gintsts, align 8
  %5 = alloca %union.cvmx_usbcx_hprt, align 8
  %6 = alloca %union.cvmx_usbcx_haint, align 4
  %7 = alloca i32, align 4
  store %struct.octeon_hcd* %0, %struct.octeon_hcd** %2, align 8
  %8 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %9 = call i32 @prefetch_range(%struct.octeon_hcd* %8, i32 12)
  %10 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %11 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %12 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @CVMX_USBCX_HFNUM(i32 %13)
  %15 = call i8* @cvmx_usb_read_csr32(%struct.octeon_hcd* %10, i32 %14)
  %16 = bitcast %union.cvmx_usbcx_hfnum* %3 to i8**
  store i8* %15, i8** %16, align 8
  %17 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %18 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 16383
  %21 = bitcast %union.cvmx_usbcx_hfnum* %3 to %struct.TYPE_4__*
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %20, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %27 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 16384
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %25, %1
  %31 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %32 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = and i64 %34, -16384
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 4
  %37 = bitcast %union.cvmx_usbcx_hfnum* %3 to %struct.TYPE_4__*
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %41 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %45 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %46 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @CVMX_USBCX_GINTSTS(i32 %47)
  %49 = call i8* @cvmx_usb_read_csr32(%struct.octeon_hcd* %44, i32 %48)
  %50 = bitcast %union.cvmx_usbcx_gintsts* %4 to i8**
  store i8* %49, i8** %50, align 8
  %51 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %52 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %53 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @CVMX_USBCX_GINTSTS(i32 %54)
  %56 = bitcast %union.cvmx_usbcx_gintsts* %4 to i8**
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @cvmx_usb_write_csr32(%struct.octeon_hcd* %51, i32 %55, i8* %57)
  %59 = bitcast %union.cvmx_usbcx_gintsts* %4 to %struct.TYPE_6__*
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %30
  %64 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %65 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CVMX_USB_INITIALIZE_FLAGS_NO_DMA, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %72 = call i32 @cvmx_usb_poll_rx_fifo(%struct.octeon_hcd* %71)
  br label %73

73:                                               ; preds = %70, %63
  br label %74

74:                                               ; preds = %73, %30
  %75 = bitcast %union.cvmx_usbcx_gintsts* %4 to %struct.TYPE_6__*
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = bitcast %union.cvmx_usbcx_gintsts* %4 to %struct.TYPE_6__*
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %79, %74
  %85 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %86 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @CVMX_USB_INITIALIZE_FLAGS_NO_DMA, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %93 = call i32 @cvmx_usb_poll_tx_fifo(%struct.octeon_hcd* %92)
  br label %94

94:                                               ; preds = %91, %84
  br label %95

95:                                               ; preds = %94, %79
  %96 = bitcast %union.cvmx_usbcx_gintsts* %4 to %struct.TYPE_6__*
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = bitcast %union.cvmx_usbcx_gintsts* %4 to %struct.TYPE_6__*
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %125

105:                                              ; preds = %100, %95
  %106 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %107 = call i32 @octeon_usb_port_callback(%struct.octeon_hcd* %106)
  %108 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %109 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %110 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @CVMX_USBCX_HPRT(i32 %111)
  %113 = call i8* @cvmx_usb_read_csr32(%struct.octeon_hcd* %108, i32 %112)
  %114 = bitcast %union.cvmx_usbcx_hprt* %5 to i8**
  store i8* %113, i8** %114, align 8
  %115 = bitcast %union.cvmx_usbcx_hprt* %5 to %struct.TYPE_5__*
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  store i64 0, i64* %116, align 8
  %117 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %118 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %119 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @CVMX_USBCX_HPRT(i32 %120)
  %122 = bitcast %union.cvmx_usbcx_hprt* %5 to i8**
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @cvmx_usb_write_csr32(%struct.octeon_hcd* %117, i32 %121, i8* %123)
  br label %125

125:                                              ; preds = %105, %100
  %126 = bitcast %union.cvmx_usbcx_gintsts* %4 to %struct.TYPE_6__*
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %156

130:                                              ; preds = %125
  %131 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %132 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %133 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @CVMX_USBCX_HAINT(i32 %134)
  %136 = call i8* @cvmx_usb_read_csr32(%struct.octeon_hcd* %131, i32 %135)
  %137 = ptrtoint i8* %136 to i32
  %138 = bitcast %union.cvmx_usbcx_haint* %6 to i32*
  store i32 %137, i32* %138, align 4
  br label %139

139:                                              ; preds = %143, %130
  %140 = bitcast %union.cvmx_usbcx_haint* %6 to i32*
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %139
  %144 = bitcast %union.cvmx_usbcx_haint* %6 to i32*
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @__fls(i32 %145)
  store i32 %146, i32* %7, align 4
  %147 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @cvmx_usb_poll_channel(%struct.octeon_hcd* %147, i32 %148)
  %150 = load i32, i32* %7, align 4
  %151 = shl i32 1, %150
  %152 = bitcast %union.cvmx_usbcx_haint* %6 to i32*
  %153 = load i32, i32* %152, align 4
  %154 = xor i32 %153, %151
  store i32 %154, i32* %152, align 4
  br label %139

155:                                              ; preds = %139
  br label %156

156:                                              ; preds = %155, %125
  %157 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %158 = bitcast %union.cvmx_usbcx_gintsts* %4 to %struct.TYPE_6__*
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @cvmx_usb_schedule(%struct.octeon_hcd* %157, i32 %160)
  ret i32 0
}

declare dso_local i32 @prefetch_range(%struct.octeon_hcd*, i32) #1

declare dso_local i8* @cvmx_usb_read_csr32(%struct.octeon_hcd*, i32) #1

declare dso_local i32 @CVMX_USBCX_HFNUM(i32) #1

declare dso_local i32 @CVMX_USBCX_GINTSTS(i32) #1

declare dso_local i32 @cvmx_usb_write_csr32(%struct.octeon_hcd*, i32, i8*) #1

declare dso_local i32 @cvmx_usb_poll_rx_fifo(%struct.octeon_hcd*) #1

declare dso_local i32 @cvmx_usb_poll_tx_fifo(%struct.octeon_hcd*) #1

declare dso_local i32 @octeon_usb_port_callback(%struct.octeon_hcd*) #1

declare dso_local i32 @CVMX_USBCX_HPRT(i32) #1

declare dso_local i32 @CVMX_USBCX_HAINT(i32) #1

declare dso_local i32 @__fls(i32) #1

declare dso_local i32 @cvmx_usb_poll_channel(%struct.octeon_hcd*, i32) #1

declare dso_local i32 @cvmx_usb_schedule(%struct.octeon_hcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
