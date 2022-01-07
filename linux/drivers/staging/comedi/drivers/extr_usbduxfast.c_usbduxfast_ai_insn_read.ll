; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxfast.c_usbduxfast_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxfast.c_usbduxfast_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.usbduxfast_private* }
%struct.usbduxfast_private = type { i32, i64, i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }
%struct.usb_device = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"ai_insn_read not possible, async cmd is running\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@SENDADCOMMANDS = common dso_local global i32 0, align 4
@PACKETS_TO_IGNORE = common dso_local global i32 0, align 4
@BULKINEP = common dso_local global i32 0, align 4
@SIZEINBUF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"insn timeout, no data\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"insn data error: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"insn data packet corrupted\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @usbduxfast_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbduxfast_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca %struct.usbduxfast_private*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %21 = call %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device* %20)
  store %struct.usb_device* %21, %struct.usb_device** %10, align 8
  %22 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 1
  %24 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %23, align 8
  store %struct.usbduxfast_private* %24, %struct.usbduxfast_private** %11, align 8
  %25 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %26 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @CR_CHAN(i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %30 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @CR_RANGE(i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 251, i32 255
  store i32 %36, i32* %14, align 4
  %37 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %11, align 8
  %38 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %11, align 8
  %41 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %4
  %45 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %46 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i32, i8*, ...) @dev_err(i32 %47, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %11, align 8
  %50 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %207

54:                                               ; preds = %4
  %55 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @usbduxfast_cmd_data(%struct.comedi_device* %55, i32 0, i32 1, i32 2, i32 %56, i32 0)
  %58 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %59 = load i32, i32* %14, align 4
  %60 = and i32 254, %59
  %61 = call i32 @usbduxfast_cmd_data(%struct.comedi_device* %58, i32 1, i32 12, i32 0, i32 %60, i32 0)
  %62 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %63 = load i32, i32* %14, align 4
  %64 = and i32 254, %63
  %65 = call i32 @usbduxfast_cmd_data(%struct.comedi_device* %62, i32 2, i32 1, i32 0, i32 %64, i32 0)
  %66 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %67 = load i32, i32* %14, align 4
  %68 = and i32 254, %67
  %69 = call i32 @usbduxfast_cmd_data(%struct.comedi_device* %66, i32 3, i32 1, i32 0, i32 %68, i32 0)
  %70 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %71 = load i32, i32* %14, align 4
  %72 = and i32 254, %71
  %73 = call i32 @usbduxfast_cmd_data(%struct.comedi_device* %70, i32 4, i32 1, i32 0, i32 %72, i32 0)
  %74 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @usbduxfast_cmd_data(%struct.comedi_device* %74, i32 5, i32 12, i32 0, i32 %75, i32 0)
  %77 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @usbduxfast_cmd_data(%struct.comedi_device* %77, i32 6, i32 1, i32 0, i32 %78, i32 0)
  %80 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %81 = load i32, i32* @SENDADCOMMANDS, align 4
  %82 = call i32 @usbduxfast_send_cmd(%struct.comedi_device* %80, i32 %81)
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* %19, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %54
  %86 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %11, align 8
  %87 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %86, i32 0, i32 0
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load i32, i32* %19, align 4
  store i32 %89, i32* %5, align 4
  br label %207

90:                                               ; preds = %54
  store i32 0, i32* %15, align 4
  br label %91

91:                                               ; preds = %117, %90
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* @PACKETS_TO_IGNORE, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %120

95:                                               ; preds = %91
  %96 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %97 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %98 = load i32, i32* @BULKINEP, align 4
  %99 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %97, i32 %98)
  %100 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %11, align 8
  %101 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* @SIZEINBUF, align 4
  %104 = call i32 @usb_bulk_msg(%struct.usb_device* %96, i32 %99, i64 %102, i32 %103, i32* %18, i32 10000)
  store i32 %104, i32* %19, align 4
  %105 = load i32, i32* %19, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %95
  %108 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %109 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (i32, i8*, ...) @dev_err(i32 %110, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %112 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %11, align 8
  %113 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %112, i32 0, i32 0
  %114 = call i32 @mutex_unlock(i32* %113)
  %115 = load i32, i32* %19, align 4
  store i32 %115, i32* %5, align 4
  br label %207

116:                                              ; preds = %95
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %15, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %15, align 4
  br label %91

120:                                              ; preds = %91
  store i32 0, i32* %15, align 4
  br label %121

121:                                              ; preds = %199, %120
  %122 = load i32, i32* %15, align 4
  %123 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %124 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %200

127:                                              ; preds = %121
  %128 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %129 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %130 = load i32, i32* @BULKINEP, align 4
  %131 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %129, i32 %130)
  %132 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %11, align 8
  %133 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* @SIZEINBUF, align 4
  %136 = call i32 @usb_bulk_msg(%struct.usb_device* %128, i32 %131, i64 %134, i32 %135, i32* %18, i32 10000)
  store i32 %136, i32* %19, align 4
  %137 = load i32, i32* %19, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %127
  %140 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %141 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %19, align 4
  %144 = call i32 (i32, i8*, ...) @dev_err(i32 %142, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %143)
  %145 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %11, align 8
  %146 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %145, i32 0, i32 0
  %147 = call i32 @mutex_unlock(i32* %146)
  %148 = load i32, i32* %19, align 4
  store i32 %148, i32* %5, align 4
  br label %207

149:                                              ; preds = %127
  %150 = load i32, i32* %18, align 4
  %151 = sext i32 %150 to i64
  %152 = udiv i64 %151, 4
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %17, align 4
  %154 = load i32, i32* %17, align 4
  %155 = srem i32 %154, 16
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %149
  %158 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %159 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 (i32, i8*, ...) @dev_err(i32 %160, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %162 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %11, align 8
  %163 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %162, i32 0, i32 0
  %164 = call i32 @mutex_unlock(i32* %163)
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %5, align 4
  br label %207

167:                                              ; preds = %149
  %168 = load i32, i32* %12, align 4
  store i32 %168, i32* %16, align 4
  br label %169

169:                                              ; preds = %196, %167
  %170 = load i32, i32* %16, align 4
  %171 = load i32, i32* %17, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %169
  %174 = load i32, i32* %15, align 4
  %175 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %176 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp slt i32 %174, %177
  br label %179

179:                                              ; preds = %173, %169
  %180 = phi i1 [ false, %169 ], [ %178, %173 ]
  br i1 %180, label %181, label %199

181:                                              ; preds = %179
  %182 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %11, align 8
  %183 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = inttoptr i64 %184 to i32*
  %186 = load i32, i32* %16, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i32*, i32** %9, align 8
  %191 = load i32, i32* %15, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  store i32 %189, i32* %193, align 4
  %194 = load i32, i32* %15, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %15, align 4
  br label %196

196:                                              ; preds = %181
  %197 = load i32, i32* %16, align 4
  %198 = add nsw i32 %197, 16
  store i32 %198, i32* %16, align 4
  br label %169

199:                                              ; preds = %179
  br label %121

200:                                              ; preds = %121
  %201 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %11, align 8
  %202 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %201, i32 0, i32 0
  %203 = call i32 @mutex_unlock(i32* %202)
  %204 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %205 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* %5, align 4
  br label %207

207:                                              ; preds = %200, %157, %139, %107, %85, %44
  %208 = load i32, i32* %5, align 4
  ret i32 %208
}

declare dso_local %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device*) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usbduxfast_cmd_data(%struct.comedi_device*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @usbduxfast_send_cmd(%struct.comedi_device*, i32) #1

declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, i64, i32, i32*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
