; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ene_send_scsi_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ene_send_scsi_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, i32, i32, i32*, i64 }
%struct.bulk_cb_wrap = type { i32, i64, i32 }
%struct.bulk_cs_wrap = type { i32, i64, i32 }

@US_BULK_CB_WRAP_LEN = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"send cmd to out endpoint fail ---\0A\00", align 1
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@FDIR_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"data transfer fail ---\0A\00", align 1
@US_BULK_CS_WRAP_LEN = common dso_local global i32 0, align 4
@USB_STOR_XFER_SHORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Received 0-length CSW; retrying...\0A\00", align 1
@USB_STOR_XFER_STALLED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Attempting to get CSW (2nd try)...\0A\00", align 1
@US_FL_IGNORE_RESIDUE = common dso_local global i32 0, align 4
@US_BULK_STAT_OK = common dso_local global i64 0, align 8
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i32, i8*, i32)* @ene_send_scsi_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ene_send_scsi_cmd(%struct.us_data* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.us_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bulk_cb_wrap*, align 8
  %11 = alloca %struct.bulk_cs_wrap*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.us_data*, %struct.us_data** %6, align 8
  %19 = getelementptr inbounds %struct.us_data, %struct.us_data* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.bulk_cb_wrap*
  store %struct.bulk_cb_wrap* %21, %struct.bulk_cb_wrap** %10, align 8
  %22 = load %struct.us_data*, %struct.us_data** %6, align 8
  %23 = getelementptr inbounds %struct.us_data, %struct.us_data* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.bulk_cs_wrap*
  store %struct.bulk_cs_wrap* %25, %struct.bulk_cs_wrap** %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %26 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %10, align 8
  %27 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %16, align 4
  %29 = load %struct.us_data*, %struct.us_data** %6, align 8
  %30 = load %struct.us_data*, %struct.us_data** %6, align 8
  %31 = getelementptr inbounds %struct.us_data, %struct.us_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %10, align 8
  %34 = bitcast %struct.bulk_cb_wrap* %33 to %struct.bulk_cs_wrap*
  %35 = load i32, i32* @US_BULK_CB_WRAP_LEN, align 4
  %36 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %29, i32 %32, %struct.bulk_cs_wrap* %34, i32 %35, i32* null)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %4
  %41 = load %struct.us_data*, %struct.us_data** %6, align 8
  %42 = call i32 @usb_stor_dbg(%struct.us_data* %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %43, i32* %5, align 4
  br label %173

44:                                               ; preds = %4
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %85

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @FDIR_READ, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.us_data*, %struct.us_data** %6, align 8
  %54 = getelementptr inbounds %struct.us_data, %struct.us_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %17, align 4
  br label %60

56:                                               ; preds = %47
  %57 = load %struct.us_data*, %struct.us_data** %6, align 8
  %58 = getelementptr inbounds %struct.us_data, %struct.us_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %17, align 4
  br label %60

60:                                               ; preds = %56, %52
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load %struct.us_data*, %struct.us_data** %6, align 8
  %65 = load i32, i32* %17, align 4
  %66 = load %struct.us_data*, %struct.us_data** %6, align 8
  %67 = getelementptr inbounds %struct.us_data, %struct.us_data* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @usb_stor_bulk_srb(%struct.us_data* %64, i32 %65, i32* %68)
  store i32 %69, i32* %12, align 4
  br label %76

70:                                               ; preds = %60
  %71 = load %struct.us_data*, %struct.us_data** %6, align 8
  %72 = load i32, i32* %17, align 4
  %73 = load i8*, i8** %8, align 8
  %74 = load i32, i32* %16, align 4
  %75 = call i32 @usb_stor_bulk_transfer_sg(%struct.us_data* %71, i32 %72, i8* %73, i32 %74, i32 0, i32* %15)
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %70, %63
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load %struct.us_data*, %struct.us_data** %6, align 8
  %82 = call i32 @usb_stor_dbg(%struct.us_data* %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %83, i32* %5, align 4
  br label %173

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %84, %44
  %86 = load %struct.us_data*, %struct.us_data** %6, align 8
  %87 = load %struct.us_data*, %struct.us_data** %6, align 8
  %88 = getelementptr inbounds %struct.us_data, %struct.us_data* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.bulk_cs_wrap*, %struct.bulk_cs_wrap** %11, align 8
  %91 = load i32, i32* @US_BULK_CS_WRAP_LEN, align 4
  %92 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %86, i32 %89, %struct.bulk_cs_wrap* %90, i32 %91, i32* %14)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @USB_STOR_XFER_SHORT, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %85
  %97 = load i32, i32* %14, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %96
  %100 = load %struct.us_data*, %struct.us_data** %6, align 8
  %101 = call i32 @usb_stor_dbg(%struct.us_data* %100, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %102 = load %struct.us_data*, %struct.us_data** %6, align 8
  %103 = load %struct.us_data*, %struct.us_data** %6, align 8
  %104 = getelementptr inbounds %struct.us_data, %struct.us_data* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.bulk_cs_wrap*, %struct.bulk_cs_wrap** %11, align 8
  %107 = load i32, i32* @US_BULK_CS_WRAP_LEN, align 4
  %108 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %102, i32 %105, %struct.bulk_cs_wrap* %106, i32 %107, i32* %14)
  store i32 %108, i32* %12, align 4
  br label %109

109:                                              ; preds = %99, %96, %85
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* @USB_STOR_XFER_STALLED, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %109
  %114 = load %struct.us_data*, %struct.us_data** %6, align 8
  %115 = call i32 @usb_stor_dbg(%struct.us_data* %114, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %116 = load %struct.us_data*, %struct.us_data** %6, align 8
  %117 = load %struct.us_data*, %struct.us_data** %6, align 8
  %118 = getelementptr inbounds %struct.us_data, %struct.us_data* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.bulk_cs_wrap*, %struct.bulk_cs_wrap** %11, align 8
  %121 = load i32, i32* @US_BULK_CS_WRAP_LEN, align 4
  %122 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %116, i32 %119, %struct.bulk_cs_wrap* %120, i32 %121, i32* null)
  store i32 %122, i32* %12, align 4
  br label %123

123:                                              ; preds = %113, %109
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %128, i32* %5, align 4
  br label %173

129:                                              ; preds = %123
  %130 = load %struct.bulk_cs_wrap*, %struct.bulk_cs_wrap** %11, align 8
  %131 = getelementptr inbounds %struct.bulk_cs_wrap, %struct.bulk_cs_wrap* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @le32_to_cpu(i32 %132)
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %163

136:                                              ; preds = %129
  %137 = load %struct.us_data*, %struct.us_data** %6, align 8
  %138 = getelementptr inbounds %struct.us_data, %struct.us_data* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @US_FL_IGNORE_RESIDUE, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %163, label %143

143:                                              ; preds = %136
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %16, align 4
  %146 = call i32 @min(i32 %144, i32 %145)
  store i32 %146, i32* %13, align 4
  %147 = load %struct.us_data*, %struct.us_data** %6, align 8
  %148 = getelementptr inbounds %struct.us_data, %struct.us_data* %147, i32 0, i32 3
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %162

151:                                              ; preds = %143
  %152 = load %struct.us_data*, %struct.us_data** %6, align 8
  %153 = getelementptr inbounds %struct.us_data, %struct.us_data* %152, i32 0, i32 3
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.us_data*, %struct.us_data** %6, align 8
  %156 = getelementptr inbounds %struct.us_data, %struct.us_data* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @scsi_get_resid(i32* %157)
  %159 = load i32, i32* %13, align 4
  %160 = call i32 @max(i32 %158, i32 %159)
  %161 = call i32 @scsi_set_resid(i32* %154, i32 %160)
  br label %162

162:                                              ; preds = %151, %143
  br label %163

163:                                              ; preds = %162, %136, %129
  %164 = load %struct.bulk_cs_wrap*, %struct.bulk_cs_wrap** %11, align 8
  %165 = getelementptr inbounds %struct.bulk_cs_wrap, %struct.bulk_cs_wrap* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @US_BULK_STAT_OK, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %163
  %170 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %170, i32* %5, align 4
  br label %173

171:                                              ; preds = %163
  %172 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %172, i32* %5, align 4
  br label %173

173:                                              ; preds = %171, %169, %127, %80, %40
  %174 = load i32, i32* %5, align 4
  ret i32 %174
}

declare dso_local i32 @usb_stor_bulk_transfer_buf(%struct.us_data*, i32, %struct.bulk_cs_wrap*, i32, i32*) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*) #1

declare dso_local i32 @usb_stor_bulk_srb(%struct.us_data*, i32, i32*) #1

declare dso_local i32 @usb_stor_bulk_transfer_sg(%struct.us_data*, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @scsi_set_resid(i32*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @scsi_get_resid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
