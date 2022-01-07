; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c-hsudc.c_s3c_hsudc_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c-hsudc.c_s3c_hsudc_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_request = type { i64, i64, i32, i32, i32 }
%struct.s3c_hsudc_req = type { i32 }
%struct.s3c_hsudc_ep = type { i32, i32, i32, %struct.s3c_hsudc* }
%struct.s3c_hsudc = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@ESHUTDOWN = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@WAIT_FOR_SETUP = common dso_local global i32 0, align 4
@S3C_ESR = common dso_local global i32 0, align 4
@S3C_EP0SR = common dso_local global i32 0, align 4
@S3C_ESR_TX_SUCCESS = common dso_local global i32 0, align 4
@S3C_ESR_RX_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_request*, i32)* @s3c_hsudc_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_hsudc_queue(%struct.usb_ep* %0, %struct.usb_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_ep*, align 8
  %6 = alloca %struct.usb_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.s3c_hsudc_req*, align 8
  %9 = alloca %struct.s3c_hsudc_ep*, align 8
  %10 = alloca %struct.s3c_hsudc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %5, align 8
  store %struct.usb_request* %1, %struct.usb_request** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %15 = call %struct.s3c_hsudc_req* @our_req(%struct.usb_request* %14)
  store %struct.s3c_hsudc_req* %15, %struct.s3c_hsudc_req** %8, align 8
  %16 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %17 = icmp ne %struct.usb_request* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %3
  %19 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %20 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %25 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.s3c_hsudc_req*, %struct.s3c_hsudc_req** %8, align 8
  %30 = getelementptr inbounds %struct.s3c_hsudc_req, %struct.s3c_hsudc_req* %29, i32 0, i32 0
  %31 = call i64 @list_empty(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28, %23, %18, %3
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %165

36:                                               ; preds = %28
  %37 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %38 = call %struct.s3c_hsudc_ep* @our_ep(%struct.usb_ep* %37)
  store %struct.s3c_hsudc_ep* %38, %struct.s3c_hsudc_ep** %9, align 8
  %39 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %9, align 8
  %40 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %39, i32 0, i32 3
  %41 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %40, align 8
  store %struct.s3c_hsudc* %41, %struct.s3c_hsudc** %10, align 8
  %42 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %10, align 8
  %43 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %36
  %47 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %10, align 8
  %48 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %46, %36
  %54 = load i32, i32* @ESHUTDOWN, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %165

56:                                               ; preds = %46
  %57 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %10, align 8
  %58 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %57, i32 0, i32 1
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %10, align 8
  %62 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %9, align 8
  %63 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @set_index(%struct.s3c_hsudc* %61, i32 %64)
  %66 = load i32, i32* @EINPROGRESS, align 4
  %67 = sub nsw i32 0, %66
  %68 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %69 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %71 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %9, align 8
  %73 = call i64 @ep_index(%struct.s3c_hsudc_ep* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %91, label %75

75:                                               ; preds = %56
  %76 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %77 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %75
  %81 = load i32, i32* @WAIT_FOR_SETUP, align 4
  %82 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %10, align 8
  %83 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %9, align 8
  %85 = load %struct.s3c_hsudc_req*, %struct.s3c_hsudc_req** %8, align 8
  %86 = call i32 @s3c_hsudc_complete_request(%struct.s3c_hsudc_ep* %84, %struct.s3c_hsudc_req* %85, i32 0)
  %87 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %10, align 8
  %88 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %87, i32 0, i32 1
  %89 = load i64, i64* %11, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  store i32 0, i32* %4, align 4
  br label %165

91:                                               ; preds = %75, %56
  %92 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %9, align 8
  %93 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %92, i32 0, i32 0
  %94 = call i64 @list_empty(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %151

96:                                               ; preds = %91
  %97 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %9, align 8
  %98 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %151, label %101

101:                                              ; preds = %96
  %102 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %9, align 8
  %103 = call i64 @ep_index(%struct.s3c_hsudc_ep* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i32, i32* @S3C_ESR, align 4
  br label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @S3C_EP0SR, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32 [ %106, %105 ], [ %108, %107 ]
  store i32 %110, i32* %12, align 4
  %111 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %9, align 8
  %112 = call i64 @ep_is_in(%struct.s3c_hsudc_ep* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %132

114:                                              ; preds = %109
  %115 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %10, align 8
  %116 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %117, %118
  %120 = call i32 @readl(i32 %119)
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* @S3C_ESR_TX_SUCCESS, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %114
  %126 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %9, align 8
  %127 = load %struct.s3c_hsudc_req*, %struct.s3c_hsudc_req** %8, align 8
  %128 = call i32 @s3c_hsudc_write_fifo(%struct.s3c_hsudc_ep* %126, %struct.s3c_hsudc_req* %127)
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  store %struct.s3c_hsudc_req* null, %struct.s3c_hsudc_req** %8, align 8
  br label %131

131:                                              ; preds = %130, %125, %114
  br label %150

132:                                              ; preds = %109
  %133 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %10, align 8
  %134 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %135, %136
  %138 = call i32 @readl(i32 %137)
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* @S3C_ESR_RX_SUCCESS, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %132
  %144 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %9, align 8
  %145 = load %struct.s3c_hsudc_req*, %struct.s3c_hsudc_req** %8, align 8
  %146 = call i32 @s3c_hsudc_read_fifo(%struct.s3c_hsudc_ep* %144, %struct.s3c_hsudc_req* %145)
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  store %struct.s3c_hsudc_req* null, %struct.s3c_hsudc_req** %8, align 8
  br label %149

149:                                              ; preds = %148, %143, %132
  br label %150

150:                                              ; preds = %149, %131
  br label %151

151:                                              ; preds = %150, %96, %91
  %152 = load %struct.s3c_hsudc_req*, %struct.s3c_hsudc_req** %8, align 8
  %153 = icmp ne %struct.s3c_hsudc_req* %152, null
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = load %struct.s3c_hsudc_req*, %struct.s3c_hsudc_req** %8, align 8
  %156 = getelementptr inbounds %struct.s3c_hsudc_req, %struct.s3c_hsudc_req* %155, i32 0, i32 0
  %157 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %9, align 8
  %158 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %157, i32 0, i32 0
  %159 = call i32 @list_add_tail(i32* %156, i32* %158)
  br label %160

160:                                              ; preds = %154, %151
  %161 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %10, align 8
  %162 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %161, i32 0, i32 1
  %163 = load i64, i64* %11, align 8
  %164 = call i32 @spin_unlock_irqrestore(i32* %162, i64 %163)
  store i32 0, i32* %4, align 4
  br label %165

165:                                              ; preds = %160, %80, %53, %33
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local %struct.s3c_hsudc_req* @our_req(%struct.usb_request*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.s3c_hsudc_ep* @our_ep(%struct.usb_ep*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_index(%struct.s3c_hsudc*, i32) #1

declare dso_local i64 @ep_index(%struct.s3c_hsudc_ep*) #1

declare dso_local i32 @s3c_hsudc_complete_request(%struct.s3c_hsudc_ep*, %struct.s3c_hsudc_req*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @ep_is_in(%struct.s3c_hsudc_ep*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @s3c_hsudc_write_fifo(%struct.s3c_hsudc_ep*, %struct.s3c_hsudc_req*) #1

declare dso_local i32 @s3c_hsudc_read_fifo(%struct.s3c_hsudc_ep*, %struct.s3c_hsudc_req*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
