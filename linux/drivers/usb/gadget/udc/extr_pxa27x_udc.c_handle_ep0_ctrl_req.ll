; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_handle_ep0_ctrl_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_handle_ep0_ctrl_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_udc = type { i32, %struct.TYPE_2__*, %struct.pxa_ep* }
%struct.TYPE_2__ = type { i32 (i32*, %struct.usb_ctrlrequest*)* }
%struct.usb_ctrlrequest = type { i32, i32, i32, i32, i32 }
%struct.pxa_ep = type { i32 }
%struct.pxa27x_request = type { i32 }
%union.anon = type { [2 x i8*], [8 x i8] }

@EPROTO = common dso_local global i32 0, align 4
@UDCCSR0_OPC = common dso_local global i32 0, align 4
@UDCDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"wrong to have extra bytes for setup : 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"SETUP %02x.%02x v%04x i%04x l%04x\0A\00", align 1
@USB_DIR_IN = common dso_local global i32 0, align 4
@IN_DATA_STAGE = common dso_local global i32 0, align 4
@OUT_DATA_STAGE = common dso_local global i32 0, align 4
@UDCCSR0_SA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"protocol STALL, udccsr0=%03x err %d\0A\00", align 1
@UDCCSR = common dso_local global i32 0, align 4
@UDCCSR0_FST = common dso_local global i32 0, align 4
@UDCCSR0_FTF = common dso_local global i32 0, align 4
@STALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa_udc*, %struct.pxa27x_request*)* @handle_ep0_ctrl_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_ep0_ctrl_req(%struct.pxa_udc* %0, %struct.pxa27x_request* %1) #0 {
  %3 = alloca %struct.pxa_udc*, align 8
  %4 = alloca %struct.pxa27x_request*, align 8
  %5 = alloca %struct.pxa_ep*, align 8
  %6 = alloca %union.anon, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.pxa_udc* %0, %struct.pxa_udc** %3, align 8
  store %struct.pxa27x_request* %1, %struct.pxa27x_request** %4, align 8
  %10 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %11 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %10, i32 0, i32 2
  %12 = load %struct.pxa_ep*, %struct.pxa_ep** %11, align 8
  %13 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %12, i64 0
  store %struct.pxa_ep* %13, %struct.pxa_ep** %5, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %15 = load i32, i32* @EPROTO, align 4
  %16 = sub nsw i32 0, %15
  %17 = call i32 @nuke(%struct.pxa_ep* %14, i32 %16)
  %18 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %19 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %18, i32 0, i32 0
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %23 = call i64 @epout_has_pkt(%struct.pxa_ep* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %27 = call i64 @ep_count_bytes_remain(%struct.pxa_ep* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %31 = load i32, i32* @UDCCSR0_OPC, align 4
  %32 = call i32 @ep_write_UDCCSR(%struct.pxa_ep* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %25, %2
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %51, %33
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 2
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  %38 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %39 = call i32 @ep_is_empty(%struct.pxa_ep* %38)
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %147

43:                                               ; preds = %37
  %44 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %45 = load i32, i32* @UDCDR, align 4
  %46 = call i8* @udc_ep_readl(%struct.pxa_ep* %44, i32 %45)
  %47 = bitcast %union.anon* %6 to [2 x i8*]*
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [2 x i8*], [2 x i8*]* %47, i64 0, i64 %49
  store i8* %46, i8** %50, align 8
  br label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %34

54:                                               ; preds = %34
  %55 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %56 = call i32 @ep_is_empty(%struct.pxa_ep* %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %65, %54
  %61 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %62 = call i32 @ep_is_empty(%struct.pxa_ep* %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %67 = load i32, i32* @UDCDR, align 4
  %68 = call i8* @udc_ep_readl(%struct.pxa_ep* %66, i32 %67)
  %69 = ptrtoint i8* %68 to i32
  store i32 %69, i32* %7, align 4
  %70 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @ep_err(%struct.pxa_ep* %70, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %60

73:                                               ; preds = %60
  %74 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %75 = bitcast %union.anon* %6 to %struct.usb_ctrlrequest*
  %76 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i8*
  %80 = bitcast %union.anon* %6 to %struct.usb_ctrlrequest*
  %81 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = bitcast %union.anon* %6 to %struct.usb_ctrlrequest*
  %84 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @le16_to_cpu(i32 %85)
  %87 = bitcast %union.anon* %6 to %struct.usb_ctrlrequest*
  %88 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @le16_to_cpu(i32 %89)
  %91 = bitcast %union.anon* %6 to %struct.usb_ctrlrequest*
  %92 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @le16_to_cpu(i32 %93)
  %95 = call i32 (%struct.pxa_ep*, i8*, i8*, i32, ...) @ep_dbg(%struct.pxa_ep* %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %79, i32 %82, i32 %86, i32 %90, i32 %94)
  %96 = load i32, i32* %8, align 4
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %73
  br label %147

100:                                              ; preds = %73
  %101 = bitcast %union.anon* %6 to %struct.usb_ctrlrequest*
  %102 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @USB_DIR_IN, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %109 = load i32, i32* @IN_DATA_STAGE, align 4
  %110 = call i32 @set_ep0state(%struct.pxa_udc* %108, i32 %109)
  br label %115

111:                                              ; preds = %100
  %112 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %113 = load i32, i32* @OUT_DATA_STAGE, align 4
  %114 = call i32 @set_ep0state(%struct.pxa_udc* %112, i32 %113)
  br label %115

115:                                              ; preds = %111, %107
  %116 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %117 = load i32, i32* @UDCCSR0_SA, align 4
  %118 = load i32, i32* @UDCCSR0_OPC, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @ep_write_UDCCSR(%struct.pxa_ep* %116, i32 %119)
  %121 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %122 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %121, i32 0, i32 0
  %123 = load i64, i64* %9, align 8
  %124 = call i32 @spin_unlock_irqrestore(i32* %122, i64 %123)
  %125 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %126 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %125, i32 0, i32 1
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32 (i32*, %struct.usb_ctrlrequest*)*, i32 (i32*, %struct.usb_ctrlrequest*)** %128, align 8
  %130 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %131 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %130, i32 0, i32 0
  %132 = bitcast %union.anon* %6 to %struct.usb_ctrlrequest*
  %133 = call i32 %129(i32* %131, %struct.usb_ctrlrequest* %132)
  store i32 %133, i32* %7, align 4
  %134 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %135 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %134, i32 0, i32 0
  %136 = load i64, i64* %9, align 8
  %137 = call i32 @spin_lock_irqsave(i32* %135, i64 %136)
  %138 = load i32, i32* %7, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %115
  br label %147

141:                                              ; preds = %115
  br label %142

142:                                              ; preds = %147, %141
  %143 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %144 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %143, i32 0, i32 0
  %145 = load i64, i64* %9, align 8
  %146 = call i32 @spin_unlock_irqrestore(i32* %144, i64 %145)
  ret void

147:                                              ; preds = %140, %99, %42
  %148 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %149 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %150 = load i32, i32* @UDCCSR, align 4
  %151 = call i8* @udc_ep_readl(%struct.pxa_ep* %149, i32 %150)
  %152 = load i32, i32* %7, align 4
  %153 = call i32 (%struct.pxa_ep*, i8*, i8*, i32, ...) @ep_dbg(%struct.pxa_ep* %148, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %151, i32 %152)
  %154 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %155 = load i32, i32* @UDCCSR0_FST, align 4
  %156 = load i32, i32* @UDCCSR0_FTF, align 4
  %157 = or i32 %155, %156
  %158 = call i32 @ep_write_UDCCSR(%struct.pxa_ep* %154, i32 %157)
  %159 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %160 = load i32, i32* @STALL, align 4
  %161 = call i32 @set_ep0state(%struct.pxa_udc* %159, i32 %160)
  br label %142
}

declare dso_local i32 @nuke(%struct.pxa_ep*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @epout_has_pkt(%struct.pxa_ep*) #1

declare dso_local i64 @ep_count_bytes_remain(%struct.pxa_ep*) #1

declare dso_local i32 @ep_write_UDCCSR(%struct.pxa_ep*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ep_is_empty(%struct.pxa_ep*) #1

declare dso_local i8* @udc_ep_readl(%struct.pxa_ep*, i32) #1

declare dso_local i32 @ep_err(%struct.pxa_ep*, i8*, i32) #1

declare dso_local i32 @ep_dbg(%struct.pxa_ep*, i8*, i8*, i32, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @set_ep0state(%struct.pxa_udc*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
