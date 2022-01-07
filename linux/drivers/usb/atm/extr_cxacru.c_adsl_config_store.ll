; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_cxacru.c_adsl_config_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_cxacru.c_adsl_config_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.cxacru_data = type { i32 }

@CMD_PACKET_SIZE = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%x=%x%n\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CMD_MAX_CONFIG = common dso_local global i32 0, align 4
@CM_REQUEST_CARD_DATA_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"set card data returned %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c" %02x=%08x\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"config%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @adsl_config_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adsl_config_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cxacru_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = call i32 @to_usb_interface(%struct.device* %23)
  %25 = call %struct.cxacru_data* @to_usbatm_driver_data(i32 %24)
  store %struct.cxacru_data* %25, %struct.cxacru_data** %10, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @strlen(i8* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* @CMD_PACKET_SIZE, align 4
  %29 = sdiv i32 %28, 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %15, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %16, align 8
  %33 = load i32, i32* @CAP_NET_ADMIN, align 4
  %34 = call i32 @capable(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %4
  %37 = load i32, i32* @EACCES, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %188

39:                                               ; preds = %4
  %40 = load %struct.cxacru_data*, %struct.cxacru_data** %10, align 8
  %41 = icmp eq %struct.cxacru_data* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %188

45:                                               ; preds = %39
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %185, %45
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %186

50:                                               ; preds = %46
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = call i32 @sscanf(i8* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %19, i32* %20, i32* %18)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp slt i32 %56, 2
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %188

61:                                               ; preds = %50
  %62 = load i32, i32* %19, align 4
  %63 = icmp sgt i32 %62, 127
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %188

67:                                               ; preds = %61
  %68 = load i32, i32* %18, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %13, align 4
  %74 = sub nsw i32 %72, %73
  %75 = icmp sgt i32 %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70, %67
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %188

79:                                               ; preds = %70
  %80 = load i32, i32* %18, align 4
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %13, align 4
  %83 = load i8*, i8** %8, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 10
  br i1 %89, label %90, label %98

90:                                               ; preds = %79
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %11, align 4
  %93 = sub nsw i32 %92, 1
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %98

98:                                               ; preds = %95, %90, %79
  %99 = load i32, i32* %19, align 4
  %100 = call i32 @cpu_to_le32(i32 %99)
  %101 = load i32, i32* %14, align 4
  %102 = mul nsw i32 %101, 2
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %32, i64 %104
  store i32 %100, i32* %105, align 4
  %106 = load i32, i32* %20, align 4
  %107 = call i32 @cpu_to_le32(i32 %106)
  %108 = load i32, i32* %14, align 4
  %109 = mul nsw i32 %108, 2
  %110 = add nsw i32 %109, 2
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %32, i64 %111
  store i32 %107, i32* %112, align 4
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp sge i32 %115, %116
  br i1 %117, label %122, label %118

118:                                              ; preds = %98
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* @CMD_MAX_CONFIG, align 4
  %121 = icmp sge i32 %119, %120
  br i1 %121, label %122, label %185

122:                                              ; preds = %118, %98
  %123 = load i32, i32* @CMD_MAX_CONFIG, align 4
  %124 = mul nsw i32 %123, 12
  %125 = add nsw i32 %124, 1
  %126 = zext i32 %125 to i64
  %127 = call i8* @llvm.stacksave()
  store i8* %127, i8** %21, align 8
  %128 = alloca i8, i64 %126, align 16
  store i64 %126, i64* %22, align 8
  %129 = load i32, i32* %14, align 4
  %130 = call i32 @cpu_to_le32(i32 %129)
  %131 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %130, i32* %131, align 16
  %132 = load %struct.cxacru_data*, %struct.cxacru_data** %10, align 8
  %133 = load i32, i32* @CM_REQUEST_CARD_DATA_SET, align 4
  %134 = load i32, i32* %14, align 4
  %135 = mul nsw i32 %134, 8
  %136 = add nsw i32 4, %135
  %137 = call i32 @cxacru_cm(%struct.cxacru_data* %132, i32 %133, i32* %32, i32 %136, i32* null, i32 0)
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %12, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %122
  %141 = load %struct.cxacru_data*, %struct.cxacru_data** %10, align 8
  %142 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @atm_err(i32 %143, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* @EIO, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %181

148:                                              ; preds = %122
  store i32 0, i32* %18, align 4
  br label %149

149:                                              ; preds = %173, %148
  %150 = load i32, i32* %18, align 4
  %151 = load i32, i32* %14, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %176

153:                                              ; preds = %149
  %154 = load i32, i32* %18, align 4
  %155 = mul nsw i32 %154, 12
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %128, i64 %156
  %158 = load i32, i32* %18, align 4
  %159 = mul nsw i32 %158, 2
  %160 = add nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %32, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @le32_to_cpu(i32 %163)
  %165 = load i32, i32* %18, align 4
  %166 = mul nsw i32 %165, 2
  %167 = add nsw i32 %166, 2
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %32, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @le32_to_cpu(i32 %170)
  %172 = call i32 @snprintf(i8* %157, i32 13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %164, i32 %171)
  br label %173

173:                                              ; preds = %153
  %174 = load i32, i32* %18, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %18, align 4
  br label %149

176:                                              ; preds = %149
  %177 = load %struct.cxacru_data*, %struct.cxacru_data** %10, align 8
  %178 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @atm_info(i32 %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %128)
  store i32 0, i32* %14, align 4
  store i32 0, i32* %17, align 4
  br label %181

181:                                              ; preds = %176, %140
  %182 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %182)
  %183 = load i32, i32* %17, align 4
  switch i32 %183, label %188 [
    i32 0, label %184
  ]

184:                                              ; preds = %181
  br label %185

185:                                              ; preds = %184, %118
  br label %46

186:                                              ; preds = %46
  %187 = load i32, i32* %11, align 4
  store i32 %187, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %188

188:                                              ; preds = %186, %181, %76, %64, %58, %42, %36
  %189 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %189)
  %190 = load i32, i32* %5, align 4
  ret i32 %190
}

declare dso_local %struct.cxacru_data* @to_usbatm_driver_data(i32) #1

declare dso_local i32 @to_usb_interface(%struct.device*) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cxacru_cm(%struct.cxacru_data*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @atm_err(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @atm_info(i32, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
