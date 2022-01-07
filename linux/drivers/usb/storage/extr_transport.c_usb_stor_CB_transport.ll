; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_transport.c_usb_stor_CB_transport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_transport.c_usb_stor_CB_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64*, i64, i32 }
%struct.us_data = type { i32*, i32, i32, i64, i64, i32, i32 }

@US_CBI_ADSC = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Call to usb_stor_ctrl_transfer() returned %d\0A\00", align 1
@USB_STOR_XFER_STALLED = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_FAILED = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"CBI data stage result is 0x%x\0A\00", align 1
@USB_PR_CBI = common dso_local global i64 0, align 8
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Got interrupt data (0x%x, 0x%x)\0A\00", align 1
@USB_SC_UFI = common dso_local global i64 0, align 8
@REQUEST_SENSE = common dso_local global i64 0, align 8
@INQUIRY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"CBI IRQ data showed reserved bType 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_stor_CB_transport(%struct.scsi_cmnd* %0, %struct.us_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.us_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.us_data* %1, %struct.us_data** %5, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %10 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %9)
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.us_data*, %struct.us_data** %5, align 8
  %12 = getelementptr inbounds %struct.us_data, %struct.us_data* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @memcpy(i32* %13, i64* %16, i32 %19)
  %21 = load %struct.us_data*, %struct.us_data** %5, align 8
  %22 = load %struct.us_data*, %struct.us_data** %5, align 8
  %23 = getelementptr inbounds %struct.us_data, %struct.us_data* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @US_CBI_ADSC, align 4
  %26 = load i32, i32* @USB_TYPE_CLASS, align 4
  %27 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.us_data*, %struct.us_data** %5, align 8
  %30 = getelementptr inbounds %struct.us_data, %struct.us_data* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.us_data*, %struct.us_data** %5, align 8
  %33 = getelementptr inbounds %struct.us_data, %struct.us_data* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @usb_stor_ctrl_transfer(%struct.us_data* %21, i32 %24, i32 %25, i32 %28, i32 0, i32 %31, i32* %34, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.us_data*, %struct.us_data** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 (%struct.us_data*, i8*, i32, ...) @usb_stor_dbg(%struct.us_data* %39, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @USB_STOR_XFER_STALLED, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %2
  %46 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %46, i32* %3, align 4
  br label %192

47:                                               ; preds = %2
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %52, i32* %3, align 4
  br label %192

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %91

56:                                               ; preds = %53
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %58 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.us_data*, %struct.us_data** %5, align 8
  %64 = getelementptr inbounds %struct.us_data, %struct.us_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  br label %70

66:                                               ; preds = %56
  %67 = load %struct.us_data*, %struct.us_data** %5, align 8
  %68 = getelementptr inbounds %struct.us_data, %struct.us_data* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  br label %70

70:                                               ; preds = %66, %62
  %71 = phi i32 [ %65, %62 ], [ %69, %66 ]
  store i32 %71, i32* %7, align 4
  %72 = load %struct.us_data*, %struct.us_data** %5, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %75 = call i32 @usb_stor_bulk_srb(%struct.us_data* %72, i32 %73, %struct.scsi_cmnd* %74)
  store i32 %75, i32* %8, align 4
  %76 = load %struct.us_data*, %struct.us_data** %5, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 (%struct.us_data*, i8*, i32, ...) @usb_stor_dbg(%struct.us_data* %76, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @USB_STOR_XFER_STALLED, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %70
  %83 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %83, i32* %3, align 4
  br label %192

84:                                               ; preds = %70
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @USB_STOR_XFER_STALLED, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %89, i32* %3, align 4
  br label %192

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90, %53
  %92 = load %struct.us_data*, %struct.us_data** %5, align 8
  %93 = getelementptr inbounds %struct.us_data, %struct.us_data* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @USB_PR_CBI, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %98, i32* %3, align 4
  br label %192

99:                                               ; preds = %91
  %100 = load %struct.us_data*, %struct.us_data** %5, align 8
  %101 = load %struct.us_data*, %struct.us_data** %5, align 8
  %102 = getelementptr inbounds %struct.us_data, %struct.us_data* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @usb_stor_intr_transfer(%struct.us_data* %100, i32* %103, i32 2)
  store i32 %104, i32* %8, align 4
  %105 = load %struct.us_data*, %struct.us_data** %5, align 8
  %106 = load %struct.us_data*, %struct.us_data** %5, align 8
  %107 = getelementptr inbounds %struct.us_data, %struct.us_data* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.us_data*, %struct.us_data** %5, align 8
  %112 = getelementptr inbounds %struct.us_data, %struct.us_data* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (%struct.us_data*, i8*, i32, ...) @usb_stor_dbg(%struct.us_data* %105, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %110, i32 %115)
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %99
  %121 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %121, i32* %3, align 4
  br label %192

122:                                              ; preds = %99
  %123 = load %struct.us_data*, %struct.us_data** %5, align 8
  %124 = getelementptr inbounds %struct.us_data, %struct.us_data* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @USB_SC_UFI, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %156

128:                                              ; preds = %122
  %129 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %130 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %129, i32 0, i32 0
  %131 = load i64*, i64** %130, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @REQUEST_SENSE, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %144, label %136

136:                                              ; preds = %128
  %137 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %138 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %137, i32 0, i32 0
  %139 = load i64*, i64** %138, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @INQUIRY, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %136, %128
  %145 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %145, i32* %3, align 4
  br label %192

146:                                              ; preds = %136
  %147 = load %struct.us_data*, %struct.us_data** %5, align 8
  %148 = getelementptr inbounds %struct.us_data, %struct.us_data* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  br label %183

154:                                              ; preds = %146
  %155 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %155, i32* %3, align 4
  br label %192

156:                                              ; preds = %122
  %157 = load %struct.us_data*, %struct.us_data** %5, align 8
  %158 = getelementptr inbounds %struct.us_data, %struct.us_data* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %156
  %164 = load %struct.us_data*, %struct.us_data** %5, align 8
  %165 = load %struct.us_data*, %struct.us_data** %5, align 8
  %166 = getelementptr inbounds %struct.us_data, %struct.us_data* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 (%struct.us_data*, i8*, i32, ...) @usb_stor_dbg(%struct.us_data* %164, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %169)
  br label %183

171:                                              ; preds = %156
  %172 = load %struct.us_data*, %struct.us_data** %5, align 8
  %173 = getelementptr inbounds %struct.us_data, %struct.us_data* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  %176 = load i32, i32* %175, align 4
  %177 = and i32 %176, 15
  switch i32 %177, label %181 [
    i32 0, label %178
    i32 1, label %180
  ]

178:                                              ; preds = %171
  %179 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %179, i32* %3, align 4
  br label %192

180:                                              ; preds = %171
  br label %183

181:                                              ; preds = %171
  %182 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %182, i32* %3, align 4
  br label %192

183:                                              ; preds = %180, %163, %153
  %184 = load i32, i32* %7, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %183
  %187 = load %struct.us_data*, %struct.us_data** %5, align 8
  %188 = load i32, i32* %7, align 4
  %189 = call i32 @usb_stor_clear_halt(%struct.us_data* %187, i32 %188)
  br label %190

190:                                              ; preds = %186, %183
  %191 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %191, i32* %3, align 4
  br label %192

192:                                              ; preds = %190, %181, %178, %154, %144, %120, %97, %88, %82, %51, %45
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i32 @usb_stor_ctrl_transfer(%struct.us_data*, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, i32, ...) #1

declare dso_local i32 @usb_stor_bulk_srb(%struct.us_data*, i32, %struct.scsi_cmnd*) #1

declare dso_local i32 @usb_stor_intr_transfer(%struct.us_data*, i32*, i32) #1

declare dso_local i32 @usb_stor_clear_halt(%struct.us_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
