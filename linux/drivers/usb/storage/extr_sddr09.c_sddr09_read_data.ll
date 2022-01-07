; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sddr09.c_sddr09_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sddr09.c_sddr09_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, i64 }
%struct.sddr09_card_info = type { i64, i64, i32, i32, i32, i32, i32* }
%struct.scatterlist = type { i32 }

@EIO = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Error: Requested lba %u exceeds maximum %u\0A\00", align 1
@UNDEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Read %d zero pages (LBA %d) page %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Read %d pages, from PBA %d (LBA %d) page %d\0A\00", align 1
@TO_XFER_BUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i64, i32)* @sddr09_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sddr09_read_data(%struct.us_data* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.us_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sddr09_card_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.scatterlist*, align 8
  %18 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.us_data*, %struct.us_data** %5, align 8
  %20 = getelementptr inbounds %struct.us_data, %struct.us_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.sddr09_card_info*
  store %struct.sddr09_card_info* %22, %struct.sddr09_card_info** %8, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %8, align 8
  %25 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = lshr i64 %23, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %8, align 8
  %31 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = and i64 %29, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %13, align 4
  %35 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %8, align 8
  %36 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %8, align 8
  %39 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = zext i32 %40 to i64
  %42 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %8, align 8
  %43 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %41, %44
  %46 = trunc i64 %45 to i32
  %47 = lshr i32 %37, %46
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp uge i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %3
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %169

54:                                               ; preds = %3
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %8, align 8
  %57 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @min(i32 %55, i32 %58)
  %60 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %8, align 8
  %61 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = mul i32 %59, %62
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* @GFP_NOIO, align 4
  %66 = call i8* @kmalloc(i32 %64, i32 %65)
  store i8* %66, i8** %9, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %54
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %169

72:                                               ; preds = %54
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  store %struct.scatterlist* null, %struct.scatterlist** %17, align 8
  br label %73

73:                                               ; preds = %152, %72
  %74 = load i32, i32* %7, align 4
  %75 = icmp ugt i32 %74, 0
  br i1 %75, label %76, label %165

76:                                               ; preds = %73
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %8, align 8
  %79 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sub i32 %80, %81
  %83 = call i32 @min(i32 %77, i32 %82)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %8, align 8
  %86 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %84, %87
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp uge i32 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %76
  %93 = load %struct.us_data*, %struct.us_data** %5, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 (%struct.us_data*, i8*, i32, i32, ...) @usb_stor_dbg(%struct.us_data* %93, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %95)
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %18, align 4
  br label %165

99:                                               ; preds = %76
  %100 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %8, align 8
  %101 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %100, i32 0, i32 6
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* @UNDEF, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %99
  %111 = load %struct.us_data*, %struct.us_data** %5, align 8
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %13, align 4
  %115 = call i32 (%struct.us_data*, i8*, i32, i32, ...) @usb_stor_dbg(%struct.us_data* %111, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %112, i32 %113, i32 %114)
  %116 = load i8*, i8** %9, align 8
  %117 = load i32, i32* %15, align 4
  %118 = call i32 @memset(i8* %116, i32 0, i32 %117)
  br label %152

119:                                              ; preds = %99
  %120 = load %struct.us_data*, %struct.us_data** %5, align 8
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %13, align 4
  %125 = call i32 (%struct.us_data*, i8*, i32, i32, ...) @usb_stor_dbg(%struct.us_data* %120, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %121, i32 %122, i32 %123, i32 %124)
  %126 = load i32, i32* %12, align 4
  %127 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %8, align 8
  %128 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  %131 = shl i32 %126, %130
  %132 = load i32, i32* %13, align 4
  %133 = add i32 %131, %132
  %134 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %8, align 8
  %135 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = shl i32 %133, %136
  %138 = zext i32 %137 to i64
  store i64 %138, i64* %6, align 8
  %139 = load %struct.us_data*, %struct.us_data** %5, align 8
  %140 = load i64, i64* %6, align 8
  %141 = lshr i64 %140, 1
  %142 = load i32, i32* %14, align 4
  %143 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %8, align 8
  %144 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load i8*, i8** %9, align 8
  %147 = call i32 @sddr09_read20(%struct.us_data* %139, i64 %141, i32 %142, i32 %145, i8* %146, i32 0)
  store i32 %147, i32* %18, align 4
  %148 = load i32, i32* %18, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %119
  br label %165

151:                                              ; preds = %119
  br label %152

152:                                              ; preds = %151, %110
  %153 = load i8*, i8** %9, align 8
  %154 = load i32, i32* %15, align 4
  %155 = load %struct.us_data*, %struct.us_data** %5, align 8
  %156 = getelementptr inbounds %struct.us_data, %struct.us_data* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @TO_XFER_BUF, align 4
  %159 = call i32 @usb_stor_access_xfer_buf(i8* %153, i32 %154, i32 %157, %struct.scatterlist** %17, i32* %16, i32 %158)
  store i32 0, i32* %13, align 4
  %160 = load i32, i32* %10, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* %7, align 4
  %164 = sub i32 %163, %162
  store i32 %164, i32* %7, align 4
  br label %73

165:                                              ; preds = %150, %92, %73
  %166 = load i8*, i8** %9, align 8
  %167 = call i32 @kfree(i8* %166)
  %168 = load i32, i32* %18, align 4
  store i32 %168, i32* %4, align 4
  br label %169

169:                                              ; preds = %165, %69, %51
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, i32, i32, ...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sddr09_read20(%struct.us_data*, i64, i32, i32, i8*, i32) #1

declare dso_local i32 @usb_stor_access_xfer_buf(i8*, i32, i32, %struct.scatterlist**, i32*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
