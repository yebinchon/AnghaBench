; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_alauda.c_alauda_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_alauda.c_alauda_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64, i32, i32** }
%struct.scatterlist = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Error: Requested lba %u exceeds maximum %u\0A\00", align 1
@UNDEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Read %d zero pages (LBA %d) page %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Read %d pages, from PBA %d (LBA %d) page %d\0A\00", align 1
@TO_XFER_BUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i64, i32)* @alauda_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alauda_read_data(%struct.us_data* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.us_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_2__, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_2__, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_2__, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_2__, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_2__, align 8
  %24 = alloca %struct.scatterlist*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_2__, align 8
  %27 = alloca %struct.TYPE_2__, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_2__, align 8
  store %struct.us_data* %0, %struct.us_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %33 = load %struct.us_data*, %struct.us_data** %5, align 8
  call void @MEDIA_INFO(%struct.TYPE_2__* sret %15, %struct.us_data* %33)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %14, align 4
  %36 = load %struct.us_data*, %struct.us_data** %5, align 8
  call void @MEDIA_INFO(%struct.TYPE_2__* sret %17, %struct.us_data* %36)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %16, align 4
  %39 = load %struct.us_data*, %struct.us_data** %5, align 8
  call void @MEDIA_INFO(%struct.TYPE_2__* sret %19, %struct.us_data* %39)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %18, align 4
  %42 = load %struct.us_data*, %struct.us_data** %5, align 8
  call void @MEDIA_INFO(%struct.TYPE_2__* sret %21, %struct.us_data* %42)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %20, align 4
  %45 = load %struct.us_data*, %struct.us_data** %5, align 8
  call void @MEDIA_INFO(%struct.TYPE_2__* sret %23, %struct.us_data* %45)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %22, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %18, align 4
  %50 = call i32 @min(i32 %48, i32 %49)
  %51 = load i32, i32* %20, align 4
  %52 = add i32 %51, 64
  %53 = mul i32 %50, %52
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @GFP_NOIO, align 4
  %56 = call i8* @kmalloc(i32 %54, i32 %55)
  store i8* %56, i8** %8, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %3
  %60 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %60, i32* %4, align 4
  br label %172

61:                                               ; preds = %3
  %62 = load i64, i64* %6, align 8
  %63 = load i32, i32* %14, align 4
  %64 = zext i32 %63 to i64
  %65 = lshr i64 %62, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %9, align 4
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.us_data*, %struct.us_data** %5, align 8
  call void @MEDIA_INFO(%struct.TYPE_2__* sret %26, %struct.us_data* %68)
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = and i64 %67, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %11, align 4
  %73 = load %struct.us_data*, %struct.us_data** %5, align 8
  call void @MEDIA_INFO(%struct.TYPE_2__* sret %27, %struct.us_data* %73)
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %16, align 4
  %78 = add i32 %76, %77
  %79 = lshr i32 %75, %78
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %80, i32* %25, align 4
  store i32 0, i32* %13, align 4
  store %struct.scatterlist* null, %struct.scatterlist** %24, align 8
  br label %81

81:                                               ; preds = %155, %61
  %82 = load i32, i32* %7, align 4
  %83 = icmp ugt i32 %82, 0
  br i1 %83, label %84, label %168

84:                                               ; preds = %81
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %22, align 4
  %87 = udiv i32 %85, %86
  store i32 %87, i32* %28, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %28, align 4
  %90 = load i32, i32* %22, align 4
  %91 = mul i32 %89, %90
  %92 = sub i32 %88, %91
  store i32 %92, i32* %29, align 4
  %93 = load %struct.us_data*, %struct.us_data** %5, align 8
  %94 = load i32, i32* %28, align 4
  %95 = call i32 @alauda_ensure_map_for_zone(%struct.us_data* %93, i32 %94)
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp uge i32 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %84
  %100 = load %struct.us_data*, %struct.us_data** %5, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i32 (%struct.us_data*, i8*, i32, i32, ...) @usb_stor_dbg(%struct.us_data* %100, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %102)
  %104 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %104, i32* %25, align 4
  br label %168

105:                                              ; preds = %84
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* %11, align 4
  %109 = sub i32 %107, %108
  %110 = call i32 @min(i32 %106, i32 %109)
  store i32 %110, i32* %30, align 4
  %111 = load i32, i32* %30, align 4
  %112 = load i32, i32* %16, align 4
  %113 = shl i32 %111, %112
  store i32 %113, i32* %12, align 4
  %114 = load %struct.us_data*, %struct.us_data** %5, align 8
  call void @MEDIA_INFO(%struct.TYPE_2__* sret %32, %struct.us_data* %114)
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 7
  %116 = load i32**, i32*** %115, align 8
  %117 = load i32, i32* %28, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %29, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %31, align 4
  %125 = load i32, i32* %31, align 4
  %126 = load i32, i32* @UNDEF, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %137

128:                                              ; preds = %105
  %129 = load %struct.us_data*, %struct.us_data** %5, align 8
  %130 = load i32, i32* %30, align 4
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %11, align 4
  %133 = call i32 (%struct.us_data*, i8*, i32, i32, ...) @usb_stor_dbg(%struct.us_data* %129, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %130, i32 %131, i32 %132)
  %134 = load i8*, i8** %8, align 8
  %135 = load i32, i32* %12, align 4
  %136 = call i32 @memset(i8* %134, i32 0, i32 %135)
  br label %155

137:                                              ; preds = %105
  %138 = load %struct.us_data*, %struct.us_data** %5, align 8
  %139 = load i32, i32* %30, align 4
  %140 = load i32, i32* %31, align 4
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %11, align 4
  %143 = call i32 (%struct.us_data*, i8*, i32, i32, ...) @usb_stor_dbg(%struct.us_data* %138, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %139, i32 %140, i32 %141, i32 %142)
  %144 = load %struct.us_data*, %struct.us_data** %5, align 8
  %145 = load i32, i32* %31, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %30, align 4
  %148 = load i8*, i8** %8, align 8
  %149 = call i32 @alauda_read_block(%struct.us_data* %144, i32 %145, i32 %146, i32 %147, i8* %148)
  store i32 %149, i32* %25, align 4
  %150 = load i32, i32* %25, align 4
  %151 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %137
  br label %168

154:                                              ; preds = %137
  br label %155

155:                                              ; preds = %154, %128
  %156 = load i8*, i8** %8, align 8
  %157 = load i32, i32* %12, align 4
  %158 = load %struct.us_data*, %struct.us_data** %5, align 8
  %159 = getelementptr inbounds %struct.us_data, %struct.us_data* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @TO_XFER_BUF, align 4
  %162 = call i32 @usb_stor_access_xfer_buf(i8* %156, i32 %157, i32 %160, %struct.scatterlist** %24, i32* %13, i32 %161)
  store i32 0, i32* %11, align 4
  %163 = load i32, i32* %9, align 4
  %164 = add i32 %163, 1
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %30, align 4
  %166 = load i32, i32* %7, align 4
  %167 = sub i32 %166, %165
  store i32 %167, i32* %7, align 4
  br label %81

168:                                              ; preds = %153, %99, %81
  %169 = load i8*, i8** %8, align 8
  %170 = call i32 @kfree(i8* %169)
  %171 = load i32, i32* %25, align 4
  store i32 %171, i32* %4, align 4
  br label %172

172:                                              ; preds = %168, %59
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local void @MEDIA_INFO(%struct.TYPE_2__* sret, %struct.us_data*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @alauda_ensure_map_for_zone(%struct.us_data*, i32) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, i32, i32, ...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @alauda_read_block(%struct.us_data*, i32, i32, i32, i8*) #1

declare dso_local i32 @usb_stor_access_xfer_buf(i8*, i32, i32, %struct.scatterlist**, i32*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
