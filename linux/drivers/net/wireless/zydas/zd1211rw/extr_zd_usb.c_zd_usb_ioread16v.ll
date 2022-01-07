; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_zd_usb_ioread16v.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_zd_usb_ioread16v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_usb = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.usb_device = type { i32 }
%struct.usb_req_read_regs = type { i8**, i8* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"error: count is zero\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@USB_MAX_IOREAD16_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"error: count %u exceeds possible max %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"error: io in atomic context not supported\0A\00", align 1
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"error: usb interrupt not enabled\0A\00", align 1
@USB_REQ_READ_REGS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"error in zd_ep_regs_out_msg(). Error number %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"error in zd_ep_regs_out_msg()\0A req_len %d != actual_req_len %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"read timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"read retry, tries so far: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_usb_ioread16v(%struct.zd_usb* %0, i32* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.zd_usb*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.usb_device*, align 8
  %16 = alloca %struct.usb_req_read_regs*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.zd_usb* %0, %struct.zd_usb** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %14, align 4
  store %struct.usb_req_read_regs* null, %struct.usb_req_read_regs** %16, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ult i32 %19, 1
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load %struct.zd_usb*, %struct.zd_usb** %6, align 8
  %23 = call i32 @zd_usb_dev(%struct.zd_usb* %22)
  %24 = call i32 (i32, i8*, ...) @dev_dbg_f(i32 %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %182

27:                                               ; preds = %4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @USB_MAX_IOREAD16_COUNT, align 4
  %30 = icmp ugt i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load %struct.zd_usb*, %struct.zd_usb** %6, align 8
  %33 = call i32 @zd_usb_dev(%struct.zd_usb* %32)
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @USB_MAX_IOREAD16_COUNT, align 4
  %36 = call i32 (i32, i8*, ...) @dev_dbg_f(i32 %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %182

39:                                               ; preds = %27
  %40 = call i64 (...) @in_atomic()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.zd_usb*, %struct.zd_usb** %6, align 8
  %44 = call i32 @zd_usb_dev(%struct.zd_usb* %43)
  %45 = call i32 (i32, i8*, ...) @dev_dbg_f(i32 %44, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @EWOULDBLOCK, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %182

48:                                               ; preds = %39
  %49 = load %struct.zd_usb*, %struct.zd_usb** %6, align 8
  %50 = call i32 @usb_int_enabled(%struct.zd_usb* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %48
  %53 = load %struct.zd_usb*, %struct.zd_usb** %6, align 8
  %54 = call i32 @zd_usb_dev(%struct.zd_usb* %53)
  %55 = call i32 (i32, i8*, ...) @dev_dbg_f(i32 %54, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* @EWOULDBLOCK, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %182

58:                                               ; preds = %48
  %59 = load %struct.zd_usb*, %struct.zd_usb** %6, align 8
  %60 = call %struct.TYPE_6__* @zd_usb_to_chip(%struct.zd_usb* %59)
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = call i32 @mutex_is_locked(i32* %61)
  %63 = call i32 @ZD_ASSERT(i32 %62)
  %64 = load i32, i32* @USB_MAX_IOREAD16_COUNT, align 4
  %65 = zext i32 %64 to i64
  %66 = mul i64 %65, 4
  %67 = add i64 16, %66
  %68 = icmp ugt i64 %67, 8
  %69 = zext i1 %68 to i32
  %70 = call i32 @BUILD_BUG_ON(i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = zext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = add i64 16, %73
  %75 = icmp ugt i64 %74, 8
  %76 = zext i1 %75 to i32
  %77 = call i32 @BUG_ON(i32 %76)
  %78 = load i32, i32* %9, align 4
  %79 = zext i32 %78 to i64
  %80 = mul i64 %79, 4
  %81 = add i64 16, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %12, align 4
  %83 = load %struct.zd_usb*, %struct.zd_usb** %6, align 8
  %84 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i8*
  %87 = bitcast i8* %86 to %struct.usb_req_read_regs*
  store %struct.usb_req_read_regs* %87, %struct.usb_req_read_regs** %16, align 8
  %88 = load i32, i32* @USB_REQ_READ_REGS, align 4
  %89 = call i8* @cpu_to_le16(i32 %88)
  %90 = load %struct.usb_req_read_regs*, %struct.usb_req_read_regs** %16, align 8
  %91 = getelementptr inbounds %struct.usb_req_read_regs, %struct.usb_req_read_regs* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  store i32 0, i32* %11, align 4
  br label %92

92:                                               ; preds = %110, %58
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %96, label %113

96:                                               ; preds = %92
  %97 = load i64*, i64** %8, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = call i8* @cpu_to_le16(i32 %102)
  %104 = load %struct.usb_req_read_regs*, %struct.usb_req_read_regs** %16, align 8
  %105 = getelementptr inbounds %struct.usb_req_read_regs, %struct.usb_req_read_regs* %104, i32 0, i32 0
  %106 = load i8**, i8*** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  store i8* %103, i8** %109, align 8
  br label %110

110:                                              ; preds = %96
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  br label %92

113:                                              ; preds = %92
  br label %114

114:                                              ; preds = %174, %113
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %14, align 4
  %117 = load %struct.zd_usb*, %struct.zd_usb** %6, align 8
  %118 = call %struct.usb_device* @zd_usb_to_usbdev(%struct.zd_usb* %117)
  store %struct.usb_device* %118, %struct.usb_device** %15, align 8
  %119 = load %struct.zd_usb*, %struct.zd_usb** %6, align 8
  %120 = load %struct.usb_req_read_regs*, %struct.usb_req_read_regs** %16, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @prepare_read_regs_int(%struct.zd_usb* %119, %struct.usb_req_read_regs* %120, i32 %121)
  %123 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %124 = load %struct.usb_req_read_regs*, %struct.usb_req_read_regs** %16, align 8
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @zd_ep_regs_out_msg(%struct.usb_device* %123, %struct.usb_req_read_regs* %124, i32 %125, i32* %13, i32 50)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %114
  %130 = load %struct.zd_usb*, %struct.zd_usb** %6, align 8
  %131 = call i32 @zd_usb_dev(%struct.zd_usb* %130)
  %132 = load i32, i32* %10, align 4
  %133 = call i32 (i32, i8*, ...) @dev_dbg_f(i32 %131, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %132)
  br label %180

134:                                              ; preds = %114
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %146

138:                                              ; preds = %134
  %139 = load %struct.zd_usb*, %struct.zd_usb** %6, align 8
  %140 = call i32 @zd_usb_dev(%struct.zd_usb* %139)
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %13, align 4
  %143 = call i32 (i32, i8*, ...) @dev_dbg_f(i32 %140, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i32 %141, i32 %142)
  %144 = load i32, i32* @EIO, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %10, align 4
  br label %180

146:                                              ; preds = %134
  %147 = load %struct.zd_usb*, %struct.zd_usb** %6, align 8
  %148 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = call i32 @msecs_to_jiffies(i32 50)
  %152 = call i64 @wait_for_completion_timeout(i32* %150, i32 %151)
  store i64 %152, i64* %17, align 8
  %153 = load i64, i64* %17, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %163, label %155

155:                                              ; preds = %146
  %156 = load %struct.zd_usb*, %struct.zd_usb** %6, align 8
  %157 = call i32 @disable_read_regs_int(%struct.zd_usb* %156)
  %158 = load %struct.zd_usb*, %struct.zd_usb** %6, align 8
  %159 = call i32 @zd_usb_dev(%struct.zd_usb* %158)
  %160 = call i32 (i32, i8*, ...) @dev_dbg_f(i32 %159, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %161 = load i32, i32* @ETIMEDOUT, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %10, align 4
  br label %180

163:                                              ; preds = %146
  %164 = load %struct.zd_usb*, %struct.zd_usb** %6, align 8
  %165 = load i32*, i32** %7, align 8
  %166 = load %struct.usb_req_read_regs*, %struct.usb_req_read_regs** %16, align 8
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @get_results(%struct.zd_usb* %164, i32* %165, %struct.usb_req_read_regs* %166, i32 %167, i32* %18)
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %18, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %163
  %172 = load i32, i32* %14, align 4
  %173 = icmp slt i32 %172, 20
  br i1 %173, label %174, label %179

174:                                              ; preds = %171
  %175 = load %struct.zd_usb*, %struct.zd_usb** %6, align 8
  %176 = call i32 @zd_usb_dev(%struct.zd_usb* %175)
  %177 = load i32, i32* %14, align 4
  %178 = call i32 (i32, i8*, ...) @dev_dbg_f(i32 %176, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %177)
  br label %114

179:                                              ; preds = %171, %163
  br label %180

180:                                              ; preds = %179, %155, %138, %129
  %181 = load i32, i32* %10, align 4
  store i32 %181, i32* %5, align 4
  br label %182

182:                                              ; preds = %180, %52, %42, %31, %21
  %183 = load i32, i32* %5, align 4
  ret i32 %183
}

declare dso_local i32 @dev_dbg_f(i32, i8*, ...) #1

declare dso_local i32 @zd_usb_dev(%struct.zd_usb*) #1

declare dso_local i64 @in_atomic(...) #1

declare dso_local i32 @usb_int_enabled(%struct.zd_usb*) #1

declare dso_local i32 @ZD_ASSERT(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local %struct.TYPE_6__* @zd_usb_to_chip(%struct.zd_usb*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local %struct.usb_device* @zd_usb_to_usbdev(%struct.zd_usb*) #1

declare dso_local i32 @prepare_read_regs_int(%struct.zd_usb*, %struct.usb_req_read_regs*, i32) #1

declare dso_local i32 @zd_ep_regs_out_msg(%struct.usb_device*, %struct.usb_req_read_regs*, i32, i32*, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @disable_read_regs_int(%struct.zd_usb*) #1

declare dso_local i32 @get_results(%struct.zd_usb*, i32*, %struct.usb_req_read_regs*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
