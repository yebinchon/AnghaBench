; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_jumpshot.c_jumpshot_handle_mode_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_jumpshot.c_jumpshot_handle_mode_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8*, i64 }
%struct.scsi_cmnd = type { i32* }
%struct.jumpshot_info = type { i32, i32, i32 }

@jumpshot_handle_mode_sense.rw_err_page = internal global [12 x i8] c"\01\0A!\01\00\00\00\00\01\00\00\00", align 1
@jumpshot_handle_mode_sense.cache_page = internal global <{ i8, i8, i8, [9 x i8] }> <{ i8 8, i8 10, i8 1, [9 x i8] zeroinitializer }>, align 1
@jumpshot_handle_mode_sense.rbac_page = internal global <{ i8, i8, i8, i8, [8 x i8] }> <{ i8 27, i8 10, i8 0, i8 -127, [8 x i8] zeroinitializer }>, align 1
@jumpshot_handle_mode_sense.timer_page = internal global [8 x i8] c"\1C\06\00\00\00\00\00\00", align 1
@.str = private unnamed_addr constant [16 x i8] c"Current values\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Changeable values\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Default values\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Saves values\0A\00", align 1
@USB_STOR_TRANSPORT_FAILED = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, %struct.scsi_cmnd*, i32)* @jumpshot_handle_mode_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jumpshot_handle_mode_sense(%struct.us_data* %0, %struct.scsi_cmnd* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.us_data*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca %struct.jumpshot_info*, align 8
  %12 = alloca i8*, align 8
  store %struct.us_data* %0, %struct.us_data** %5, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.us_data*, %struct.us_data** %5, align 8
  %14 = getelementptr inbounds %struct.us_data, %struct.us_data* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.jumpshot_info*
  store %struct.jumpshot_info* %16, %struct.jumpshot_info** %11, align 8
  %17 = load %struct.us_data*, %struct.us_data** %5, align 8
  %18 = getelementptr inbounds %struct.us_data, %struct.us_data* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %12, align 8
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %21 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 6
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %8, align 1
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %28 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 63
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %9, align 1
  %34 = load i8, i8* %8, align 1
  %35 = zext i8 %34 to i32
  switch i32 %35, label %48 [
    i32 0, label %36
    i32 1, label %39
    i32 2, label %42
    i32 3, label %45
  ]

36:                                               ; preds = %3
  %37 = load %struct.us_data*, %struct.us_data** %5, align 8
  %38 = call i32 @usb_stor_dbg(%struct.us_data* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %48

39:                                               ; preds = %3
  %40 = load %struct.us_data*, %struct.us_data** %5, align 8
  %41 = call i32 @usb_stor_dbg(%struct.us_data* %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %48

42:                                               ; preds = %3
  %43 = load %struct.us_data*, %struct.us_data** %5, align 8
  %44 = call i32 @usb_stor_dbg(%struct.us_data* %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %48

45:                                               ; preds = %3
  %46 = load %struct.us_data*, %struct.us_data** %5, align 8
  %47 = call i32 @usb_stor_dbg(%struct.us_data* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %3, %45, %42, %39, %36
  %49 = load i8*, i8** %12, align 8
  %50 = call i32 @memset(i8* %49, i32 0, i32 8)
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i8*, i8** %12, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  store i8 0, i8* %55, align 1
  store i32 4, i32* %10, align 4
  br label %59

56:                                               ; preds = %48
  %57 = load i8*, i8** %12, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 3
  store i8 0, i8* %58, align 1
  store i32 8, i32* %10, align 4
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i8, i8* %9, align 1
  %61 = zext i8 %60 to i32
  switch i32 %61, label %147 [
    i32 0, label %62
    i32 1, label %70
    i32 8, label %80
    i32 27, label %90
    i32 28, label %100
    i32 63, label %110
  ]

62:                                               ; preds = %59
  %63 = load %struct.jumpshot_info*, %struct.jumpshot_info** %11, align 8
  %64 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %63, i32 0, i32 0
  store i32 5, i32* %64, align 4
  %65 = load %struct.jumpshot_info*, %struct.jumpshot_info** %11, align 8
  %66 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %65, i32 0, i32 1
  store i32 36, i32* %66, align 4
  %67 = load %struct.jumpshot_info*, %struct.jumpshot_info** %11, align 8
  %68 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %67, i32 0, i32 2
  store i32 0, i32* %68, align 4
  %69 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %69, i32* %4, align 4
  br label %169

70:                                               ; preds = %59
  %71 = load i8*, i8** %12, align 8
  %72 = load i32, i32* %10, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = call i32 @memcpy(i8* %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @jumpshot_handle_mode_sense.rw_err_page, i64 0, i64 0), i32 12)
  %76 = load i32, i32* %10, align 4
  %77 = zext i32 %76 to i64
  %78 = add i64 %77, 12
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %10, align 4
  br label %147

80:                                               ; preds = %59
  %81 = load i8*, i8** %12, align 8
  %82 = load i32, i32* %10, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = call i32 @memcpy(i8* %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* bitcast (<{ i8, i8, i8, [9 x i8] }>* @jumpshot_handle_mode_sense.cache_page to [12 x i8]*), i64 0, i64 0), i32 12)
  %86 = load i32, i32* %10, align 4
  %87 = zext i32 %86 to i64
  %88 = add i64 %87, 12
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %10, align 4
  br label %147

90:                                               ; preds = %59
  %91 = load i8*, i8** %12, align 8
  %92 = load i32, i32* %10, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = call i32 @memcpy(i8* %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* bitcast (<{ i8, i8, i8, i8, [8 x i8] }>* @jumpshot_handle_mode_sense.rbac_page to [12 x i8]*), i64 0, i64 0), i32 12)
  %96 = load i32, i32* %10, align 4
  %97 = zext i32 %96 to i64
  %98 = add i64 %97, 12
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %10, align 4
  br label %147

100:                                              ; preds = %59
  %101 = load i8*, i8** %12, align 8
  %102 = load i32, i32* %10, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = call i32 @memcpy(i8* %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @jumpshot_handle_mode_sense.timer_page, i64 0, i64 0), i32 8)
  %106 = load i32, i32* %10, align 4
  %107 = zext i32 %106 to i64
  %108 = add i64 %107, 8
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %10, align 4
  br label %147

110:                                              ; preds = %59
  %111 = load i8*, i8** %12, align 8
  %112 = load i32, i32* %10, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = call i32 @memcpy(i8* %114, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @jumpshot_handle_mode_sense.timer_page, i64 0, i64 0), i32 8)
  %116 = load i32, i32* %10, align 4
  %117 = zext i32 %116 to i64
  %118 = add i64 %117, 8
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %10, align 4
  %120 = load i8*, i8** %12, align 8
  %121 = load i32, i32* %10, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = call i32 @memcpy(i8* %123, i8* getelementptr inbounds ([12 x i8], [12 x i8]* bitcast (<{ i8, i8, i8, i8, [8 x i8] }>* @jumpshot_handle_mode_sense.rbac_page to [12 x i8]*), i64 0, i64 0), i32 12)
  %125 = load i32, i32* %10, align 4
  %126 = zext i32 %125 to i64
  %127 = add i64 %126, 12
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %10, align 4
  %129 = load i8*, i8** %12, align 8
  %130 = load i32, i32* %10, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = call i32 @memcpy(i8* %132, i8* getelementptr inbounds ([12 x i8], [12 x i8]* bitcast (<{ i8, i8, i8, [9 x i8] }>* @jumpshot_handle_mode_sense.cache_page to [12 x i8]*), i64 0, i64 0), i32 12)
  %134 = load i32, i32* %10, align 4
  %135 = zext i32 %134 to i64
  %136 = add i64 %135, 12
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %10, align 4
  %138 = load i8*, i8** %12, align 8
  %139 = load i32, i32* %10, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = call i32 @memcpy(i8* %141, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @jumpshot_handle_mode_sense.rw_err_page, i64 0, i64 0), i32 12)
  %143 = load i32, i32* %10, align 4
  %144 = zext i32 %143 to i64
  %145 = add i64 %144, 12
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %10, align 4
  br label %147

147:                                              ; preds = %59, %110, %100, %90, %80, %70
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = load i32, i32* %10, align 4
  %152 = sub i32 %151, 1
  %153 = trunc i32 %152 to i8
  %154 = load i8*, i8** %12, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 0
  store i8 %153, i8* %155, align 1
  br label %163

156:                                              ; preds = %147
  %157 = load i32, i32* %10, align 4
  %158 = sub i32 %157, 2
  %159 = call i32 @cpu_to_be16(i32 %158)
  %160 = load i8*, i8** %12, align 8
  %161 = bitcast i8* %160 to i32*
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  store i32 %159, i32* %162, align 4
  br label %163

163:                                              ; preds = %156, %150
  %164 = load i8*, i8** %12, align 8
  %165 = load i32, i32* %10, align 4
  %166 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %167 = call i32 @usb_stor_set_xfer_buf(i8* %164, i32 %165, %struct.scsi_cmnd* %166)
  %168 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %168, i32* %4, align 4
  br label %169

169:                                              ; preds = %163, %62
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @usb_stor_set_xfer_buf(i8*, i32, %struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
