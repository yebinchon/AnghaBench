; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_ctrl_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_ctrl_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtest_dev = type { i32 }
%struct.usb_device = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"ctrl_out, wlen %d (expected %d)\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"ctrl_out, rlen %d (expected %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"ctrl_out, byte %d is %d not %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@realworld = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [39 x i8] c"ctrl_out %s failed, code %d, count %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtest_dev*, i32, i32, i32, i32)* @ctrl_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_out(%struct.usbtest_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.usbtest_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.usb_device*, align 8
  store %struct.usbtest_dev* %0, %struct.usbtest_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %19 = load i32, i32* %9, align 4
  %20 = icmp ult i32 %19, 1
  br i1 %20, label %28, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = icmp ugt i32 %22, 65535
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp uge i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %21, %5
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %190

31:                                               ; preds = %24
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %11, align 4
  %34 = add i32 %32, %33
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32* @kmalloc(i32 %34, i32 %35)
  store i32* %36, i32** %16, align 8
  %37 = load i32*, i32** %16, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %190

42:                                               ; preds = %31
  %43 = load i32, i32* %11, align 4
  %44 = load i32*, i32** %16, align 8
  %45 = zext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32* %46, i32** %16, align 8
  %47 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %48 = call %struct.usb_device* @testdev_to_usbdev(%struct.usbtest_dev* %47)
  store %struct.usb_device* %48, %struct.usb_device** %18, align 8
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %170, %42
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %173

54:                                               ; preds = %50
  store i32 0, i32* %13, align 4
  br label %55

55:                                               ; preds = %67, %54
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %13, align 4
  %62 = add i32 %60, %61
  %63 = load i32*, i32** %16, align 8
  %64 = load i32, i32* %13, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %62, i32* %66, align 4
  br label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %13, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %55

70:                                               ; preds = %55
  %71 = load %struct.usb_device*, %struct.usb_device** %18, align 8
  %72 = load %struct.usb_device*, %struct.usb_device** %18, align 8
  %73 = call i32 @usb_sndctrlpipe(%struct.usb_device* %72, i32 0)
  %74 = load i32, i32* @USB_DIR_OUT, align 4
  %75 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %76 = or i32 %74, %75
  %77 = load i32*, i32** %16, align 8
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %80 = call i32 @usb_control_msg(%struct.usb_device* %71, i32 %73, i32 91, i32 %76, i32 0, i32 0, i32* %77, i32 %78, i32 %79)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %70
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  %85 = load i32, i32* %15, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %14, align 4
  %91 = call i32 (%struct.usbtest_dev*, i8*, ...) @ERROR(%struct.usbtest_dev* %88, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %89, i32 %90)
  %92 = load i32, i32* @EBADMSG, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %15, align 4
  br label %94

94:                                               ; preds = %87, %84
  br label %173

95:                                               ; preds = %70
  %96 = load %struct.usb_device*, %struct.usb_device** %18, align 8
  %97 = load %struct.usb_device*, %struct.usb_device** %18, align 8
  %98 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %97, i32 0)
  %99 = load i32, i32* @USB_DIR_IN, align 4
  %100 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %101 = or i32 %99, %100
  %102 = load i32*, i32** %16, align 8
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %105 = call i32 @usb_control_msg(%struct.usb_device* %96, i32 %98, i32 92, i32 %101, i32 0, i32 0, i32* %102, i32 %103, i32 %104)
  store i32 %105, i32* %15, align 4
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %120

109:                                              ; preds = %95
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %17, align 8
  %110 = load i32, i32* %15, align 4
  %111 = icmp sge i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %14, align 4
  %116 = call i32 (%struct.usbtest_dev*, i8*, ...) @ERROR(%struct.usbtest_dev* %113, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %114, i32 %115)
  %117 = load i32, i32* @EBADMSG, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %15, align 4
  br label %119

119:                                              ; preds = %112, %109
  br label %173

120:                                              ; preds = %95
  store i32 0, i32* %13, align 4
  br label %121

121:                                              ; preds = %150, %120
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %14, align 4
  %124 = icmp ult i32 %122, %123
  br i1 %124, label %125, label %153

125:                                              ; preds = %121
  %126 = load i32*, i32** %16, align 8
  %127 = load i32, i32* %13, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %13, align 4
  %133 = add i32 %131, %132
  %134 = icmp ne i32 %130, %133
  br i1 %134, label %135, label %149

135:                                              ; preds = %125
  %136 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %137 = load i32, i32* %13, align 4
  %138 = load i32*, i32** %16, align 8
  %139 = load i32, i32* %13, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %13, align 4
  %145 = add i32 %143, %144
  %146 = call i32 (%struct.usbtest_dev*, i8*, ...) @ERROR(%struct.usbtest_dev* %136, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %137, i32 %142, i32 %145)
  %147 = load i32, i32* @EBADMSG, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %15, align 4
  br label %153

149:                                              ; preds = %125
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %13, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %13, align 4
  br label %121

153:                                              ; preds = %135, %121
  %154 = load i32, i32* %15, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %17, align 8
  br label %173

157:                                              ; preds = %153
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* %14, align 4
  %160 = add i32 %159, %158
  store i32 %160, i32* %14, align 4
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* %9, align 4
  %163 = icmp ugt i32 %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %157
  %165 = load i64, i64* @realworld, align 8
  %166 = icmp ne i64 %165, 0
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i32 1, i32 0
  store i32 %168, i32* %14, align 4
  br label %169

169:                                              ; preds = %164, %157
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %12, align 4
  %172 = add i32 %171, 1
  store i32 %172, i32* %12, align 4
  br label %50

173:                                              ; preds = %156, %119, %94, %50
  %174 = load i32, i32* %15, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %173
  %177 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %178 = load i8*, i8** %17, align 8
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* %12, align 4
  %181 = call i32 (%struct.usbtest_dev*, i8*, ...) @ERROR(%struct.usbtest_dev* %177, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i8* %178, i32 %179, i32 %180)
  br label %182

182:                                              ; preds = %176, %173
  %183 = load i32*, i32** %16, align 8
  %184 = load i32, i32* %11, align 4
  %185 = zext i32 %184 to i64
  %186 = sub i64 0, %185
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  %188 = call i32 @kfree(i32* %187)
  %189 = load i32, i32* %15, align 4
  store i32 %189, i32* %6, align 4
  br label %190

190:                                              ; preds = %182, %39, %28
  %191 = load i32, i32* %6, align 4
  ret i32 %191
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local %struct.usb_device* @testdev_to_usbdev(%struct.usbtest_dev*) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @ERROR(%struct.usbtest_dev*, i8*, ...) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
