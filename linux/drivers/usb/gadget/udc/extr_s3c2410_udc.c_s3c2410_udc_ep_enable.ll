; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c2410_udc.c_s3c2410_udc_ep_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c2410_udc.c_s3c2410_udc_ep_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i64, i32 }
%struct.usb_endpoint_descriptor = type { i64, i32 }
%struct.s3c2410_udc = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.s3c2410_ep = type { i32, i32, i64, %struct.TYPE_4__, %struct.s3c2410_udc* }
%struct.TYPE_4__ = type { %struct.usb_endpoint_descriptor* }

@ep0name = common dso_local global i64 0, align 8
@USB_DT_ENDPOINT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@ESHUTDOWN = common dso_local global i32 0, align 4
@S3C2410_UDC_INDEX_REG = common dso_local global i32 0, align 4
@S3C2410_UDC_MAXP_REG = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@S3C2410_UDC_ICSR1_FFLUSH = common dso_local global i32 0, align 4
@S3C2410_UDC_ICSR1_CLRDT = common dso_local global i32 0, align 4
@S3C2410_UDC_ICSR2_MODEIN = common dso_local global i32 0, align 4
@S3C2410_UDC_ICSR2_DMAIEN = common dso_local global i32 0, align 4
@S3C2410_UDC_IN_CSR1_REG = common dso_local global i32 0, align 4
@S3C2410_UDC_IN_CSR2_REG = common dso_local global i32 0, align 4
@S3C2410_UDC_OCSR1_FFLUSH = common dso_local global i32 0, align 4
@S3C2410_UDC_OCSR1_CLRDT = common dso_local global i32 0, align 4
@S3C2410_UDC_OCSR2_DMAIEN = common dso_local global i32 0, align 4
@S3C2410_UDC_OUT_CSR1_REG = common dso_local global i32 0, align 4
@S3C2410_UDC_OUT_CSR2_REG = common dso_local global i32 0, align 4
@S3C2410_UDC_EP_INT_EN_REG = common dso_local global i32 0, align 4
@DEBUG_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"enable %s(%d) ep%x%s-blk max %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_endpoint_descriptor*)* @s3c2410_udc_ep_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2410_udc_ep_enable(%struct.usb_ep* %0, %struct.usb_endpoint_descriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ep*, align 8
  %5 = alloca %struct.usb_endpoint_descriptor*, align 8
  %6 = alloca %struct.s3c2410_udc*, align 8
  %7 = alloca %struct.s3c2410_ep*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %4, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %5, align 8
  %14 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %15 = call %struct.s3c2410_ep* @to_s3c2410_ep(%struct.usb_ep* %14)
  store %struct.s3c2410_ep* %15, %struct.s3c2410_ep** %7, align 8
  %16 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %17 = icmp ne %struct.usb_ep* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %2
  %19 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %20 = icmp ne %struct.usb_endpoint_descriptor* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %23 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ep0name, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %29 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @USB_DT_ENDPOINT, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %21, %18, %2
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %186

36:                                               ; preds = %27
  %37 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %7, align 8
  %38 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %37, i32 0, i32 4
  %39 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %38, align 8
  store %struct.s3c2410_udc* %39, %struct.s3c2410_udc** %6, align 8
  %40 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %41 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %36
  %45 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %46 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %44, %36
  %52 = load i32, i32* @ESHUTDOWN, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %186

54:                                               ; preds = %44
  %55 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %56 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @local_irq_save(i64 %57)
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %61 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %63 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %7, align 8
  %64 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %62, %struct.usb_endpoint_descriptor** %65, align 8
  %66 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %7, align 8
  %67 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %69 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %7, align 8
  %72 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %7, align 8
  %74 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %77 = call i32 @udc_write(i32 %75, i32 %76)
  %78 = load i32, i32* %8, align 4
  %79 = ashr i32 %78, 3
  %80 = load i32, i32* @S3C2410_UDC_MAXP_REG, align 4
  %81 = call i32 @udc_write(i32 %79, i32 %80)
  %82 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %83 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @USB_DIR_IN, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %111

88:                                               ; preds = %54
  %89 = load i32, i32* @S3C2410_UDC_ICSR1_FFLUSH, align 4
  %90 = load i32, i32* @S3C2410_UDC_ICSR1_CLRDT, align 4
  %91 = or i32 %89, %90
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* @S3C2410_UDC_ICSR2_MODEIN, align 4
  %93 = load i32, i32* @S3C2410_UDC_ICSR2_DMAIEN, align 4
  %94 = or i32 %92, %93
  store i32 %94, i32* %12, align 4
  %95 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %7, align 8
  %96 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %99 = call i32 @udc_write(i32 %97, i32 %98)
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @S3C2410_UDC_IN_CSR1_REG, align 4
  %102 = call i32 @udc_write(i32 %100, i32 %101)
  %103 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %7, align 8
  %104 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %107 = call i32 @udc_write(i32 %105, i32 %106)
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* @S3C2410_UDC_IN_CSR2_REG, align 4
  %110 = call i32 @udc_write(i32 %108, i32 %109)
  br label %150

111:                                              ; preds = %54
  %112 = load i32, i32* @S3C2410_UDC_ICSR1_CLRDT, align 4
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* @S3C2410_UDC_ICSR2_DMAIEN, align 4
  store i32 %113, i32* %12, align 4
  %114 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %7, align 8
  %115 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %118 = call i32 @udc_write(i32 %116, i32 %117)
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* @S3C2410_UDC_IN_CSR1_REG, align 4
  %121 = call i32 @udc_write(i32 %119, i32 %120)
  %122 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %7, align 8
  %123 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %126 = call i32 @udc_write(i32 %124, i32 %125)
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* @S3C2410_UDC_IN_CSR2_REG, align 4
  %129 = call i32 @udc_write(i32 %127, i32 %128)
  %130 = load i32, i32* @S3C2410_UDC_OCSR1_FFLUSH, align 4
  %131 = load i32, i32* @S3C2410_UDC_OCSR1_CLRDT, align 4
  %132 = or i32 %130, %131
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* @S3C2410_UDC_OCSR2_DMAIEN, align 4
  store i32 %133, i32* %12, align 4
  %134 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %7, align 8
  %135 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %138 = call i32 @udc_write(i32 %136, i32 %137)
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* @S3C2410_UDC_OUT_CSR1_REG, align 4
  %141 = call i32 @udc_write(i32 %139, i32 %140)
  %142 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %7, align 8
  %143 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %146 = call i32 @udc_write(i32 %144, i32 %145)
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* @S3C2410_UDC_OUT_CSR2_REG, align 4
  %149 = call i32 @udc_write(i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %111, %88
  %151 = load i32, i32* @S3C2410_UDC_EP_INT_EN_REG, align 4
  %152 = call i32 @udc_read(i32 %151)
  store i32 %152, i32* %13, align 4
  %153 = load i32, i32* %13, align 4
  %154 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %7, align 8
  %155 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = shl i32 1, %156
  %158 = or i32 %153, %157
  %159 = load i32, i32* @S3C2410_UDC_EP_INT_EN_REG, align 4
  %160 = call i32 @udc_write(i32 %158, i32 %159)
  %161 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %162 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* @DEBUG_NORMAL, align 4
  %165 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %166 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %7, align 8
  %169 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %9, align 4
  %172 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %173 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @USB_DIR_IN, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %180 = load i32, i32* %8, align 4
  %181 = call i32 @dprintk(i32 %164, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %167, i32 %170, i32 %171, i8* %179, i32 %180)
  %182 = load i64, i64* %10, align 8
  %183 = call i32 @local_irq_restore(i64 %182)
  %184 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %185 = call i32 @s3c2410_udc_set_halt(%struct.usb_ep* %184, i32 0)
  store i32 0, i32* %3, align 4
  br label %186

186:                                              ; preds = %150, %51, %33
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local %struct.s3c2410_ep* @to_s3c2410_ep(%struct.usb_ep*) #1

declare dso_local i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @udc_write(i32, i32) #1

declare dso_local i32 @udc_read(i32) #1

declare dso_local i32 @dprintk(i32, i8*, i64, i32, i32, i8*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @s3c2410_udc_set_halt(%struct.usb_ep*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
