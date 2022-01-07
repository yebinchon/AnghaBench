; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_request = type { i32, i64, i64, i32, %struct.dummy*, i32 }
%struct.dummy = type { i32, i32, %struct.dummy_request, i32, i32 }
%struct.dummy_request = type { i32, %struct.usb_request }
%struct.dummy_ep = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dummy_hcd = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ep0name = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@FIFO_SIZE = common dso_local global i64 0, align 8
@fifo_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_request*, i32)* @dummy_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_queue(%struct.usb_ep* %0, %struct.usb_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_ep*, align 8
  %6 = alloca %struct.usb_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dummy_ep*, align 8
  %9 = alloca %struct.dummy_request*, align 8
  %10 = alloca %struct.dummy*, align 8
  %11 = alloca %struct.dummy_hcd*, align 8
  %12 = alloca i64, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %5, align 8
  store %struct.usb_request* %1, %struct.usb_request** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %14 = call %struct.dummy_request* @usb_request_to_dummy_request(%struct.usb_request* %13)
  store %struct.dummy_request* %14, %struct.dummy_request** %9, align 8
  %15 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %16 = icmp ne %struct.usb_request* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load %struct.dummy_request*, %struct.dummy_request** %9, align 8
  %19 = getelementptr inbounds %struct.dummy_request, %struct.dummy_request* %18, i32 0, i32 0
  %20 = call i64 @list_empty(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %24 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22, %17, %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %171

30:                                               ; preds = %22
  %31 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %32 = call %struct.dummy_ep* @usb_ep_to_dummy_ep(%struct.usb_ep* %31)
  store %struct.dummy_ep* %32, %struct.dummy_ep** %8, align 8
  %33 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %34 = icmp ne %struct.usb_ep* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %37 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = icmp ne %struct.TYPE_2__* %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %35
  %41 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %42 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ep0name, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40, %30
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %171

49:                                               ; preds = %40, %35
  %50 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %51 = call %struct.dummy* @ep_to_dummy(%struct.dummy_ep* %50)
  store %struct.dummy* %51, %struct.dummy** %10, align 8
  %52 = load %struct.dummy*, %struct.dummy** %10, align 8
  %53 = getelementptr inbounds %struct.dummy, %struct.dummy* %52, i32 0, i32 4
  %54 = call %struct.dummy_hcd* @gadget_to_dummy_hcd(i32* %53)
  store %struct.dummy_hcd* %54, %struct.dummy_hcd** %11, align 8
  %55 = load %struct.dummy*, %struct.dummy** %10, align 8
  %56 = getelementptr inbounds %struct.dummy, %struct.dummy* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  %60 = load %struct.dummy_hcd*, %struct.dummy_hcd** %11, align 8
  %61 = call i32 @is_enabled(%struct.dummy_hcd* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59, %49
  %64 = load i32, i32* @ESHUTDOWN, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %171

66:                                               ; preds = %59
  %67 = load i32, i32* @EINPROGRESS, align 4
  %68 = sub nsw i32 0, %67
  %69 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %70 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %72 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  %73 = load %struct.dummy*, %struct.dummy** %10, align 8
  %74 = getelementptr inbounds %struct.dummy, %struct.dummy* %73, i32 0, i32 0
  %75 = load i64, i64* %12, align 8
  %76 = call i32 @spin_lock_irqsave(i32* %74, i64 %75)
  %77 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %78 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = icmp ne %struct.TYPE_2__* %79, null
  br i1 %80, label %81, label %160

81:                                               ; preds = %66
  %82 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %83 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @USB_DIR_IN, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %160

90:                                               ; preds = %81
  %91 = load %struct.dummy*, %struct.dummy** %10, align 8
  %92 = getelementptr inbounds %struct.dummy, %struct.dummy* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.dummy_request, %struct.dummy_request* %92, i32 0, i32 0
  %94 = call i64 @list_empty(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %160

96:                                               ; preds = %90
  %97 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %98 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %97, i32 0, i32 0
  %99 = call i64 @list_empty(i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %160

101:                                              ; preds = %96
  %102 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %103 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @FIFO_SIZE, align 8
  %106 = icmp sle i64 %104, %105
  br i1 %106, label %107, label %160

107:                                              ; preds = %101
  %108 = load %struct.dummy*, %struct.dummy** %10, align 8
  %109 = getelementptr inbounds %struct.dummy, %struct.dummy* %108, i32 0, i32 2
  store %struct.dummy_request* %109, %struct.dummy_request** %9, align 8
  %110 = load %struct.dummy_request*, %struct.dummy_request** %9, align 8
  %111 = getelementptr inbounds %struct.dummy_request, %struct.dummy_request* %110, i32 0, i32 1
  %112 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %113 = bitcast %struct.usb_request* %111 to i8*
  %114 = bitcast %struct.usb_request* %112 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %113, i8* align 8 %114, i64 48, i1 false)
  %115 = load %struct.dummy*, %struct.dummy** %10, align 8
  %116 = getelementptr inbounds %struct.dummy, %struct.dummy* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.dummy_request*, %struct.dummy_request** %9, align 8
  %119 = getelementptr inbounds %struct.dummy_request, %struct.dummy_request* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %119, i32 0, i32 5
  store i32 %117, i32* %120, align 8
  %121 = load %struct.dummy*, %struct.dummy** %10, align 8
  %122 = getelementptr inbounds %struct.dummy, %struct.dummy* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %125 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %128 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @memcpy(i32 %123, i32 %126, i64 %129)
  %131 = load %struct.dummy*, %struct.dummy** %10, align 8
  %132 = load %struct.dummy_request*, %struct.dummy_request** %9, align 8
  %133 = getelementptr inbounds %struct.dummy_request, %struct.dummy_request* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %133, i32 0, i32 4
  store %struct.dummy* %131, %struct.dummy** %134, align 8
  %135 = load i32, i32* @fifo_complete, align 4
  %136 = load %struct.dummy_request*, %struct.dummy_request** %9, align 8
  %137 = getelementptr inbounds %struct.dummy_request, %struct.dummy_request* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %137, i32 0, i32 3
  store i32 %135, i32* %138, align 8
  %139 = load %struct.dummy_request*, %struct.dummy_request** %9, align 8
  %140 = getelementptr inbounds %struct.dummy_request, %struct.dummy_request* %139, i32 0, i32 0
  %141 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %142 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %141, i32 0, i32 0
  %143 = call i32 @list_add_tail(i32* %140, i32* %142)
  %144 = load %struct.dummy*, %struct.dummy** %10, align 8
  %145 = getelementptr inbounds %struct.dummy, %struct.dummy* %144, i32 0, i32 0
  %146 = call i32 @spin_unlock(i32* %145)
  %147 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %148 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %151 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %150, i32 0, i32 2
  store i64 %149, i64* %151, align 8
  %152 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %153 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %152, i32 0, i32 0
  store i32 0, i32* %153, align 8
  %154 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %155 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %156 = call i32 @usb_gadget_giveback_request(%struct.usb_ep* %154, %struct.usb_request* %155)
  %157 = load %struct.dummy*, %struct.dummy** %10, align 8
  %158 = getelementptr inbounds %struct.dummy, %struct.dummy* %157, i32 0, i32 0
  %159 = call i32 @spin_lock(i32* %158)
  br label %166

160:                                              ; preds = %101, %96, %90, %81, %66
  %161 = load %struct.dummy_request*, %struct.dummy_request** %9, align 8
  %162 = getelementptr inbounds %struct.dummy_request, %struct.dummy_request* %161, i32 0, i32 0
  %163 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %164 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %163, i32 0, i32 0
  %165 = call i32 @list_add_tail(i32* %162, i32* %164)
  br label %166

166:                                              ; preds = %160, %107
  %167 = load %struct.dummy*, %struct.dummy** %10, align 8
  %168 = getelementptr inbounds %struct.dummy, %struct.dummy* %167, i32 0, i32 0
  %169 = load i64, i64* %12, align 8
  %170 = call i32 @spin_unlock_irqrestore(i32* %168, i64 %169)
  store i32 0, i32* %4, align 4
  br label %171

171:                                              ; preds = %166, %63, %46, %27
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local %struct.dummy_request* @usb_request_to_dummy_request(%struct.usb_request*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.dummy_ep* @usb_ep_to_dummy_ep(%struct.usb_ep*) #1

declare dso_local %struct.dummy* @ep_to_dummy(%struct.dummy_ep*) #1

declare dso_local %struct.dummy_hcd* @gadget_to_dummy_hcd(i32*) #1

declare dso_local i32 @is_enabled(%struct.dummy_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_gadget_giveback_request(%struct.usb_ep*, %struct.usb_request*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
