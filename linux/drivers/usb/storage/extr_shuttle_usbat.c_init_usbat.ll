; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_shuttle_usbat.c_init_usbat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_shuttle_usbat.c_init_usbat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8*, i64 }
%struct.usbat_info = type { i32 }

@USBAT_ATA_LBA_HI = common dso_local global i8 0, align 1
@USBAT_ATA_LBA_ME = common dso_local global i8 0, align 1
@GFP_NOIO = common dso_local global i32 0, align 4
@USBAT_UIO_OE1 = common dso_local global i32 0, align 4
@USBAT_UIO_OE0 = common dso_local global i32 0, align 4
@USBAT_UIO_EPAD = common dso_local global i32 0, align 4
@USBAT_UIO_1 = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"INIT 1\0A\00", align 1
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"INIT 2\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"INIT 3\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"INIT 4\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"INIT 5\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"INIT 6\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"INIT 7\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"INIT 8\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"INIT 9\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"INIT 10\0A\00", align 1
@USBAT_DEV_FLASH = common dso_local global i64 0, align 8
@USBAT_FEAT_ETEN = common dso_local global i32 0, align 4
@USBAT_FEAT_ET2 = common dso_local global i32 0, align 4
@USBAT_FEAT_ET1 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"INIT 11\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i32)* @init_usbat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_usbat(%struct.us_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usbat_info*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  store %struct.us_data* %0, %struct.us_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i8, i8* @USBAT_ATA_LBA_HI, align 1
  store i8 %11, i8* %8, align 1
  %12 = load i8, i8* @USBAT_ATA_LBA_ME, align 1
  store i8 %12, i8* %9, align 1
  %13 = load %struct.us_data*, %struct.us_data** %4, align 8
  %14 = getelementptr inbounds %struct.us_data, %struct.us_data* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %10, align 8
  %16 = load i32, i32* @GFP_NOIO, align 4
  %17 = call i64 @kzalloc(i32 4, i32 %16)
  %18 = load %struct.us_data*, %struct.us_data** %4, align 8
  %19 = getelementptr inbounds %struct.us_data, %struct.us_data* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load %struct.us_data*, %struct.us_data** %4, align 8
  %21 = getelementptr inbounds %struct.us_data, %struct.us_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %176

25:                                               ; preds = %2
  %26 = load %struct.us_data*, %struct.us_data** %4, align 8
  %27 = getelementptr inbounds %struct.us_data, %struct.us_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.usbat_info*
  store %struct.usbat_info* %29, %struct.usbat_info** %7, align 8
  %30 = load %struct.us_data*, %struct.us_data** %4, align 8
  %31 = load i32, i32* @USBAT_UIO_OE1, align 4
  %32 = load i32, i32* @USBAT_UIO_OE0, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @USBAT_UIO_EPAD, align 4
  %35 = load i32, i32* @USBAT_UIO_1, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @usbat_write_user_io(%struct.us_data* %30, i32 %33, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %25
  %42 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %42, i32* %3, align 4
  br label %176

43:                                               ; preds = %25
  %44 = load %struct.us_data*, %struct.us_data** %4, align 8
  %45 = call i32 @usb_stor_dbg(%struct.us_data* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %46 = call i32 @msleep(i32 2000)
  %47 = load %struct.us_data*, %struct.us_data** %4, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @usbat_read_user_io(%struct.us_data* %47, i8* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %176

55:                                               ; preds = %43
  %56 = load %struct.us_data*, %struct.us_data** %4, align 8
  %57 = call i32 @usb_stor_dbg(%struct.us_data* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.us_data*, %struct.us_data** %4, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @usbat_read_user_io(%struct.us_data* %58, i8* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %65, i32* %3, align 4
  br label %176

66:                                               ; preds = %55
  %67 = load %struct.us_data*, %struct.us_data** %4, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 @usbat_read_user_io(%struct.us_data* %67, i8* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %74, i32* %3, align 4
  br label %176

75:                                               ; preds = %66
  %76 = load %struct.us_data*, %struct.us_data** %4, align 8
  %77 = call i32 @usb_stor_dbg(%struct.us_data* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %78 = load %struct.us_data*, %struct.us_data** %4, align 8
  %79 = call i32 @usbat_select_and_test_registers(%struct.us_data* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %3, align 4
  br label %176

85:                                               ; preds = %75
  %86 = load %struct.us_data*, %struct.us_data** %4, align 8
  %87 = call i32 @usb_stor_dbg(%struct.us_data* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %88 = load %struct.us_data*, %struct.us_data** %4, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = call i32 @usbat_read_user_io(%struct.us_data* %88, i8* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %95, i32* %3, align 4
  br label %176

96:                                               ; preds = %85
  %97 = load %struct.us_data*, %struct.us_data** %4, align 8
  %98 = call i32 @usb_stor_dbg(%struct.us_data* %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %99 = load %struct.us_data*, %struct.us_data** %4, align 8
  %100 = call i32 @usbat_device_enable_cdt(%struct.us_data* %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %96
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %3, align 4
  br label %176

106:                                              ; preds = %96
  %107 = load %struct.us_data*, %struct.us_data** %4, align 8
  %108 = call i32 @usb_stor_dbg(%struct.us_data* %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %109 = load %struct.us_data*, %struct.us_data** %4, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = call i32 @usbat_read_user_io(%struct.us_data* %109, i8* %110)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %106
  %116 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %116, i32* %3, align 4
  br label %176

117:                                              ; preds = %106
  %118 = load %struct.us_data*, %struct.us_data** %4, align 8
  %119 = call i32 @usb_stor_dbg(%struct.us_data* %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %120 = call i32 @msleep(i32 1400)
  %121 = load %struct.us_data*, %struct.us_data** %4, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = call i32 @usbat_read_user_io(%struct.us_data* %121, i8* %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %117
  %128 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %128, i32* %3, align 4
  br label %176

129:                                              ; preds = %117
  %130 = load %struct.us_data*, %struct.us_data** %4, align 8
  %131 = call i32 @usb_stor_dbg(%struct.us_data* %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %132 = load %struct.us_data*, %struct.us_data** %4, align 8
  %133 = call i32 @usbat_select_and_test_registers(%struct.us_data* %132)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %129
  %138 = load i32, i32* %6, align 4
  store i32 %138, i32* %3, align 4
  br label %176

139:                                              ; preds = %129
  %140 = load %struct.us_data*, %struct.us_data** %4, align 8
  %141 = call i32 @usb_stor_dbg(%struct.us_data* %140, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %142 = load %struct.us_data*, %struct.us_data** %4, align 8
  %143 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %144 = load i32, i32* %5, align 4
  %145 = call i64 @usbat_set_transport(%struct.us_data* %142, %struct.usbat_info* %143, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %139
  %148 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %148, i32* %3, align 4
  br label %176

149:                                              ; preds = %139
  %150 = load %struct.us_data*, %struct.us_data** %4, align 8
  %151 = call i32 @usb_stor_dbg(%struct.us_data* %150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %152 = load %struct.us_data*, %struct.us_data** %4, align 8
  %153 = call i64 @usbat_get_device_type(%struct.us_data* %152)
  %154 = load i64, i64* @USBAT_DEV_FLASH, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  store i8 2, i8* %8, align 1
  store i8 0, i8* %9, align 1
  br label %157

157:                                              ; preds = %156, %149
  %158 = load %struct.us_data*, %struct.us_data** %4, align 8
  %159 = load i32, i32* @USBAT_FEAT_ETEN, align 4
  %160 = load i32, i32* @USBAT_FEAT_ET2, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @USBAT_FEAT_ET1, align 4
  %163 = or i32 %161, %162
  %164 = load i8, i8* %8, align 1
  %165 = load i8, i8* %9, align 1
  %166 = call i32 @usbat_set_shuttle_features(%struct.us_data* %158, i32 %163, i32 0, i32 136, i32 8, i8 zeroext %164, i8 zeroext %165)
  store i32 %166, i32* %6, align 4
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %157
  %171 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %171, i32* %3, align 4
  br label %176

172:                                              ; preds = %157
  %173 = load %struct.us_data*, %struct.us_data** %4, align 8
  %174 = call i32 @usb_stor_dbg(%struct.us_data* %173, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %175 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %172, %170, %147, %137, %127, %115, %104, %94, %83, %73, %64, %53, %41, %24
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @usbat_write_user_io(%struct.us_data*, i32, i32) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usbat_read_user_io(%struct.us_data*, i8*) #1

declare dso_local i32 @usbat_select_and_test_registers(%struct.us_data*) #1

declare dso_local i32 @usbat_device_enable_cdt(%struct.us_data*) #1

declare dso_local i64 @usbat_set_transport(%struct.us_data*, %struct.usbat_info*, i32) #1

declare dso_local i64 @usbat_get_device_type(%struct.us_data*) #1

declare dso_local i32 @usbat_set_shuttle_features(%struct.us_data*, i32, i32, i32, i32, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
