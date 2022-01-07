; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_security.c_wusb_dev_sec_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_security.c_wusb_dev_sec_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32 }
%struct.usb_device = type { %struct.device }
%struct.device = type { i32 }
%struct.wusb_dev = type { %struct.usb_encryption_descriptor }
%struct.usb_encryption_descriptor = type { i32, i64, i32, i32 }
%struct.usb_security_descriptor = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_DT_SECURITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Can't read security descriptor or not enough data: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Can't allocate space for security descriptors\0A\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c"BUG: bad device security descriptor; not enough data (%zu vs %zu bytes left)\0A\00", align 1
@.str.3 = private unnamed_addr constant [83 x i8] c"BUG: bad device encryption descriptor; descriptor is too short (%u vs %zu needed)\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"%s (0x%02x/%02x) \00", align 1
@USB_ENC_TYPE_CCM_1 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [57 x i8] c"WUSB device doesn't support CCM1 encryption, can't use!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"supported encryption: %s; using %s (0x%02x/%02x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wusb_dev_sec_add(%struct.wusbhc* %0, %struct.usb_device* %1, %struct.wusb_dev* %2) #0 {
  %4 = alloca %struct.wusbhc*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.wusb_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.usb_security_descriptor*, align 8
  %12 = alloca %struct.usb_security_descriptor*, align 8
  %13 = alloca %struct.usb_encryption_descriptor*, align 8
  %14 = alloca %struct.usb_encryption_descriptor*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca [64 x i8], align 16
  store %struct.wusbhc* %0, %struct.wusbhc** %4, align 8
  store %struct.usb_device* %1, %struct.usb_device** %5, align 8
  store %struct.wusb_dev* %2, %struct.wusb_dev** %6, align 8
  %18 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %19 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %10, align 8
  store %struct.usb_encryption_descriptor* null, %struct.usb_encryption_descriptor** %14, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.usb_security_descriptor* @kmalloc(i32 4, i32 %20)
  store %struct.usb_security_descriptor* %21, %struct.usb_security_descriptor** %11, align 8
  %22 = load %struct.usb_security_descriptor*, %struct.usb_security_descriptor** %11, align 8
  %23 = icmp eq %struct.usb_security_descriptor* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %175

27:                                               ; preds = %3
  %28 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %29 = load i32, i32* @USB_DT_SECURITY, align 4
  %30 = load %struct.usb_security_descriptor*, %struct.usb_security_descriptor** %11, align 8
  %31 = call i32 @usb_get_descriptor(%struct.usb_device* %28, i32 %29, i32 0, %struct.usb_security_descriptor* %30, i32 4)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.device*, %struct.device** %10, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %35, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %175

38:                                               ; preds = %27
  %39 = load %struct.usb_security_descriptor*, %struct.usb_security_descriptor** %11, align 8
  %40 = getelementptr inbounds %struct.usb_security_descriptor, %struct.usb_security_descriptor* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le16_to_cpu(i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.usb_security_descriptor*, %struct.usb_security_descriptor** %11, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.usb_security_descriptor* @krealloc(%struct.usb_security_descriptor* %43, i32 %44, i32 %45)
  store %struct.usb_security_descriptor* %46, %struct.usb_security_descriptor** %12, align 8
  %47 = load %struct.usb_security_descriptor*, %struct.usb_security_descriptor** %12, align 8
  %48 = icmp eq %struct.usb_security_descriptor* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load %struct.device*, %struct.device** %10, align 8
  %51 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %175

54:                                               ; preds = %38
  %55 = load %struct.usb_security_descriptor*, %struct.usb_security_descriptor** %12, align 8
  store %struct.usb_security_descriptor* %55, %struct.usb_security_descriptor** %11, align 8
  %56 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %57 = load i32, i32* @USB_DT_SECURITY, align 4
  %58 = load %struct.usb_security_descriptor*, %struct.usb_security_descriptor** %11, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @usb_get_descriptor(%struct.usb_device* %56, i32 %57, i32 0, %struct.usb_security_descriptor* %58, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %54
  %65 = load %struct.device*, %struct.device** %10, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %65, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %175

68:                                               ; preds = %54
  store i32 0, i32* %8, align 4
  %69 = load %struct.usb_security_descriptor*, %struct.usb_security_descriptor** %11, align 8
  %70 = getelementptr inbounds %struct.usb_security_descriptor, %struct.usb_security_descriptor* %69, i64 1
  %71 = bitcast %struct.usb_security_descriptor* %70 to i8*
  store i8* %71, i8** %15, align 8
  %72 = load %struct.usb_security_descriptor*, %struct.usb_security_descriptor** %11, align 8
  %73 = bitcast %struct.usb_security_descriptor* %72 to i8*
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr i8, i8* %73, i64 %75
  store i8* %76, i8** %16, align 8
  br label %77

77:                                               ; preds = %147, %68
  %78 = load i8*, i8** %15, align 8
  %79 = load i8*, i8** %16, align 8
  %80 = icmp ult i8* %78, %79
  br i1 %80, label %81, label %148

81:                                               ; preds = %77
  %82 = load i8*, i8** %15, align 8
  %83 = bitcast i8* %82 to %struct.usb_encryption_descriptor*
  store %struct.usb_encryption_descriptor* %83, %struct.usb_encryption_descriptor** %13, align 8
  %84 = load i8*, i8** %16, align 8
  %85 = load i8*, i8** %15, align 8
  %86 = ptrtoint i8* %84 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = icmp ult i64 %88, 24
  br i1 %89, label %90, label %98

90:                                               ; preds = %81
  %91 = load %struct.device*, %struct.device** %10, align 8
  %92 = load i8*, i8** %16, align 8
  %93 = load i8*, i8** %15, align 8
  %94 = ptrtoint i8* %92 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %91, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i64 %96, i64 24)
  br label %148

98:                                               ; preds = %81
  %99 = load %struct.usb_encryption_descriptor*, %struct.usb_encryption_descriptor** %13, align 8
  %100 = getelementptr inbounds %struct.usb_encryption_descriptor, %struct.usb_encryption_descriptor* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = icmp ult i64 %102, 24
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = load %struct.device*, %struct.device** %10, align 8
  %106 = load %struct.usb_encryption_descriptor*, %struct.usb_encryption_descriptor** %13, align 8
  %107 = getelementptr inbounds %struct.usb_encryption_descriptor, %struct.usb_encryption_descriptor* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %105, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0), i32 %108, i64 24)
  br label %148

110:                                              ; preds = %98
  %111 = load %struct.usb_encryption_descriptor*, %struct.usb_encryption_descriptor** %13, align 8
  %112 = getelementptr inbounds %struct.usb_encryption_descriptor, %struct.usb_encryption_descriptor* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i8*, i8** %15, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr i8, i8* %114, i64 %115
  store i8* %116, i8** %15, align 8
  %117 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = sub i64 64, %122
  %124 = trunc i64 %123 to i32
  %125 = load %struct.usb_encryption_descriptor*, %struct.usb_encryption_descriptor** %13, align 8
  %126 = getelementptr inbounds %struct.usb_encryption_descriptor, %struct.usb_encryption_descriptor* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i8* @wusb_et_name(i64 %127)
  %129 = load %struct.usb_encryption_descriptor*, %struct.usb_encryption_descriptor** %13, align 8
  %130 = getelementptr inbounds %struct.usb_encryption_descriptor, %struct.usb_encryption_descriptor* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.usb_encryption_descriptor*, %struct.usb_encryption_descriptor** %13, align 8
  %133 = getelementptr inbounds %struct.usb_encryption_descriptor, %struct.usb_encryption_descriptor* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @snprintf(i8* %120, i32 %124, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %128, i32 %131, i32 %134)
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %137, %135
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %8, align 4
  %140 = load %struct.usb_encryption_descriptor*, %struct.usb_encryption_descriptor** %13, align 8
  %141 = getelementptr inbounds %struct.usb_encryption_descriptor, %struct.usb_encryption_descriptor* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @USB_ENC_TYPE_CCM_1, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %110
  %146 = load %struct.usb_encryption_descriptor*, %struct.usb_encryption_descriptor** %13, align 8
  store %struct.usb_encryption_descriptor* %146, %struct.usb_encryption_descriptor** %14, align 8
  br label %147

147:                                              ; preds = %145, %110
  br label %77

148:                                              ; preds = %104, %90, %77
  %149 = load %struct.usb_encryption_descriptor*, %struct.usb_encryption_descriptor** %14, align 8
  %150 = icmp eq %struct.usb_encryption_descriptor* %149, null
  br i1 %150, label %151, label %156

151:                                              ; preds = %148
  %152 = load %struct.device*, %struct.device** %10, align 8
  %153 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %152, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %7, align 4
  br label %175

156:                                              ; preds = %148
  %157 = load %struct.wusb_dev*, %struct.wusb_dev** %6, align 8
  %158 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %157, i32 0, i32 0
  %159 = load %struct.usb_encryption_descriptor*, %struct.usb_encryption_descriptor** %14, align 8
  %160 = bitcast %struct.usb_encryption_descriptor* %158 to i8*
  %161 = bitcast %struct.usb_encryption_descriptor* %159 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %160, i8* align 8 %161, i64 24, i1 false)
  %162 = load %struct.device*, %struct.device** %10, align 8
  %163 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %164 = load %struct.usb_encryption_descriptor*, %struct.usb_encryption_descriptor** %14, align 8
  %165 = getelementptr inbounds %struct.usb_encryption_descriptor, %struct.usb_encryption_descriptor* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = call i8* @wusb_et_name(i64 %166)
  %168 = load %struct.usb_encryption_descriptor*, %struct.usb_encryption_descriptor** %14, align 8
  %169 = getelementptr inbounds %struct.usb_encryption_descriptor, %struct.usb_encryption_descriptor* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.usb_encryption_descriptor*, %struct.usb_encryption_descriptor** %14, align 8
  %172 = getelementptr inbounds %struct.usb_encryption_descriptor, %struct.usb_encryption_descriptor* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @dev_dbg(%struct.device* %162, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i8* %163, i8* %167, i32 %170, i32 %173)
  store i32 0, i32* %7, align 4
  br label %175

175:                                              ; preds = %156, %151, %64, %49, %34, %24
  %176 = load %struct.usb_security_descriptor*, %struct.usb_security_descriptor** %11, align 8
  %177 = call i32 @kfree(%struct.usb_security_descriptor* %176)
  %178 = load i32, i32* %7, align 4
  ret i32 %178
}

declare dso_local %struct.usb_security_descriptor* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_get_descriptor(%struct.usb_device*, i32, i32, %struct.usb_security_descriptor*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.usb_security_descriptor* @krealloc(%struct.usb_security_descriptor*, i32, i32) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*, i32, i32) #1

declare dso_local i8* @wusb_et_name(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.usb_security_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
