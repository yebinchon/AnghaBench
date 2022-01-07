; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_zd_usb_iowrite16v_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_zd_usb_iowrite16v_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_usb = type { %struct.urb*, i32 }
%struct.urb = type { i32 }
%struct.zd_ioreq16 = type { i32, i64 }
%struct.usb_device = type { i32 }
%struct.usb_req_write_regs = type { %struct.reg_data*, i8* }
%struct.reg_data = type { i8*, i8* }
%struct.usb_host_endpoint = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@USB_MAX_IOWRITE16_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"error: count %u exceeds possible max %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"error: io in atomic context not supported\0A\00", align 1
@EWOULDBLOCK = common dso_local global i32 0, align 4
@EP_REGS_OUT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@reg_writes = common dso_local global i32 0, align 4
@USB_REQ_WRITE_REGS = common dso_local global i32 0, align 4
@iowrite16v_urb_complete = common dso_local global i32 0, align 4
@URB_FREE_BUFFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"error in zd_submit_waiting_usb(). Error number %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_usb_iowrite16v_async(%struct.zd_usb* %0, %struct.zd_ioreq16* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zd_usb*, align 8
  %6 = alloca %struct.zd_ioreq16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca %struct.usb_req_write_regs*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.urb*, align 8
  %14 = alloca %struct.usb_host_endpoint*, align 8
  %15 = alloca %struct.reg_data*, align 8
  store %struct.zd_usb* %0, %struct.zd_usb** %5, align 8
  store %struct.zd_ioreq16* %1, %struct.zd_ioreq16** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.usb_req_write_regs* null, %struct.usb_req_write_regs** %10, align 8
  %16 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %17 = call %struct.TYPE_3__* @zd_usb_to_chip(%struct.zd_usb* %16)
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @mutex_is_locked(i32* %18)
  %20 = call i32 @ZD_ASSERT(i32 %19)
  %21 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %22 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ZD_ASSERT(i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %175

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @USB_MAX_IOWRITE16_COUNT, align 4
  %31 = icmp ugt i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %34 = call i32 @zd_usb_dev(%struct.zd_usb* %33)
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @USB_MAX_IOWRITE16_COUNT, align 4
  %37 = call i32 (i32, i8*, ...) @dev_dbg_f(i32 %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %175

40:                                               ; preds = %28
  %41 = call i64 (...) @in_atomic()
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %45 = call i32 @zd_usb_dev(%struct.zd_usb* %44)
  %46 = call i32 (i32, i8*, ...) @dev_dbg_f(i32 %45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EWOULDBLOCK, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %175

49:                                               ; preds = %40
  %50 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %51 = call %struct.usb_device* @zd_usb_to_usbdev(%struct.zd_usb* %50)
  store %struct.usb_device* %51, %struct.usb_device** %9, align 8
  %52 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %53 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %54 = load i32, i32* @EP_REGS_OUT, align 4
  %55 = call i32 @usb_sndintpipe(%struct.usb_device* %53, i32 %54)
  %56 = call %struct.usb_host_endpoint* @usb_pipe_endpoint(%struct.usb_device* %52, i32 %55)
  store %struct.usb_host_endpoint* %56, %struct.usb_host_endpoint** %14, align 8
  %57 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %58 = icmp ne %struct.usb_host_endpoint* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %49
  %60 = load i32, i32* @ENOENT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %175

62:                                               ; preds = %49
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %63)
  store %struct.urb* %64, %struct.urb** %13, align 8
  %65 = load %struct.urb*, %struct.urb** %13, align 8
  %66 = icmp ne %struct.urb* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %175

70:                                               ; preds = %62
  %71 = load %struct.usb_req_write_regs*, %struct.usb_req_write_regs** %10, align 8
  %72 = load i32, i32* @reg_writes, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @struct_size(%struct.usb_req_write_regs* %71, i32 %72, i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call %struct.usb_req_write_regs* @kmalloc(i32 %75, i32 %76)
  store %struct.usb_req_write_regs* %77, %struct.usb_req_write_regs** %10, align 8
  %78 = load %struct.usb_req_write_regs*, %struct.usb_req_write_regs** %10, align 8
  %79 = icmp ne %struct.usb_req_write_regs* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %70
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %8, align 4
  br label %171

83:                                               ; preds = %70
  %84 = load i32, i32* @USB_REQ_WRITE_REGS, align 4
  %85 = call i8* @cpu_to_le16(i32 %84)
  %86 = load %struct.usb_req_write_regs*, %struct.usb_req_write_regs** %10, align 8
  %87 = getelementptr inbounds %struct.usb_req_write_regs, %struct.usb_req_write_regs* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  store i32 0, i32* %11, align 4
  br label %88

88:                                               ; preds = %118, %83
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %92, label %121

92:                                               ; preds = %88
  %93 = load %struct.usb_req_write_regs*, %struct.usb_req_write_regs** %10, align 8
  %94 = getelementptr inbounds %struct.usb_req_write_regs, %struct.usb_req_write_regs* %93, i32 0, i32 0
  %95 = load %struct.reg_data*, %struct.reg_data** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.reg_data, %struct.reg_data* %95, i64 %97
  store %struct.reg_data* %98, %struct.reg_data** %15, align 8
  %99 = load %struct.zd_ioreq16*, %struct.zd_ioreq16** %6, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %99, i64 %101
  %103 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i8* @cpu_to_le16(i32 %105)
  %107 = load %struct.reg_data*, %struct.reg_data** %15, align 8
  %108 = getelementptr inbounds %struct.reg_data, %struct.reg_data* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  %109 = load %struct.zd_ioreq16*, %struct.zd_ioreq16** %6, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %109, i64 %111
  %113 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i8* @cpu_to_le16(i32 %114)
  %116 = load %struct.reg_data*, %struct.reg_data** %15, align 8
  %117 = getelementptr inbounds %struct.reg_data, %struct.reg_data* %116, i32 0, i32 0
  store i8* %115, i8** %117, align 8
  br label %118

118:                                              ; preds = %92
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %11, align 4
  br label %88

121:                                              ; preds = %88
  %122 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %123 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %122, i32 0, i32 0
  %124 = call i64 @usb_endpoint_xfer_int(%struct.TYPE_4__* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %121
  %127 = load %struct.urb*, %struct.urb** %13, align 8
  %128 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %129 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %130 = load i32, i32* @EP_REGS_OUT, align 4
  %131 = call i32 @usb_sndintpipe(%struct.usb_device* %129, i32 %130)
  %132 = load %struct.usb_req_write_regs*, %struct.usb_req_write_regs** %10, align 8
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* @iowrite16v_urb_complete, align 4
  %135 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %136 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %137 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @usb_fill_int_urb(%struct.urb* %127, %struct.usb_device* %128, i32 %131, %struct.usb_req_write_regs* %132, i32 %133, i32 %134, %struct.zd_usb* %135, i32 %139)
  br label %152

141:                                              ; preds = %121
  %142 = load %struct.urb*, %struct.urb** %13, align 8
  %143 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %144 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %145 = load i32, i32* @EP_REGS_OUT, align 4
  %146 = call i32 @usb_sndbulkpipe(%struct.usb_device* %144, i32 %145)
  %147 = load %struct.usb_req_write_regs*, %struct.usb_req_write_regs** %10, align 8
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* @iowrite16v_urb_complete, align 4
  %150 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %151 = call i32 @usb_fill_bulk_urb(%struct.urb* %142, %struct.usb_device* %143, i32 %146, %struct.usb_req_write_regs* %147, i32 %148, i32 %149, %struct.zd_usb* %150)
  br label %152

152:                                              ; preds = %141, %126
  %153 = load i32, i32* @URB_FREE_BUFFER, align 4
  %154 = load %struct.urb*, %struct.urb** %13, align 8
  %155 = getelementptr inbounds %struct.urb, %struct.urb* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 4
  %158 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %159 = call i32 @zd_submit_waiting_urb(%struct.zd_usb* %158, i32 0)
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* %8, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %152
  %163 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %164 = call i32 @zd_usb_dev(%struct.zd_usb* %163)
  %165 = load i32, i32* %8, align 4
  %166 = call i32 (i32, i8*, ...) @dev_dbg_f(i32 %164, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %165)
  br label %171

167:                                              ; preds = %152
  %168 = load %struct.urb*, %struct.urb** %13, align 8
  %169 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %170 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %169, i32 0, i32 0
  store %struct.urb* %168, %struct.urb** %170, align 8
  store i32 0, i32* %4, align 4
  br label %175

171:                                              ; preds = %162, %80
  %172 = load %struct.urb*, %struct.urb** %13, align 8
  %173 = call i32 @usb_free_urb(%struct.urb* %172)
  %174 = load i32, i32* %8, align 4
  store i32 %174, i32* %4, align 4
  br label %175

175:                                              ; preds = %171, %167, %67, %59, %43, %32, %27
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local i32 @ZD_ASSERT(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local %struct.TYPE_3__* @zd_usb_to_chip(%struct.zd_usb*) #1

declare dso_local i32 @dev_dbg_f(i32, i8*, ...) #1

declare dso_local i32 @zd_usb_dev(%struct.zd_usb*) #1

declare dso_local i64 @in_atomic(...) #1

declare dso_local %struct.usb_device* @zd_usb_to_usbdev(%struct.zd_usb*) #1

declare dso_local %struct.usb_host_endpoint* @usb_pipe_endpoint(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndintpipe(%struct.usb_device*, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @struct_size(%struct.usb_req_write_regs*, i32, i32) #1

declare dso_local %struct.usb_req_write_regs* @kmalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @usb_endpoint_xfer_int(%struct.TYPE_4__*) #1

declare dso_local i32 @usb_fill_int_urb(%struct.urb*, %struct.usb_device*, i32, %struct.usb_req_write_regs*, i32, i32, %struct.zd_usb*, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, %struct.usb_device*, i32, %struct.usb_req_write_regs*, i32, i32, %struct.zd_usb*) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @zd_submit_waiting_urb(%struct.zd_usb*, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
