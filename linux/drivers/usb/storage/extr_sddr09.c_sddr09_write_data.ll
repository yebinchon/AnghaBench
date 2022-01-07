; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sddr09.c_sddr09_write_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sddr09.c_sddr09_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, i64 }
%struct.sddr09_card_info = type { i64, i64, i32, i32, i32, i32 }
%struct.scatterlist = type { i32 }

@EIO = common dso_local global i32 0, align 4
@CONTROL_SHIFT = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Error: Requested lba %u exceeds maximum %u\0A\00", align 1
@FROM_XFER_BUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i64, i32)* @sddr09_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sddr09_write_data(%struct.us_data* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.us_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sddr09_card_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.scatterlist*, align 8
  %20 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load %struct.us_data*, %struct.us_data** %5, align 8
  %22 = getelementptr inbounds %struct.us_data, %struct.us_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.sddr09_card_info*
  store %struct.sddr09_card_info* %24, %struct.sddr09_card_info** %8, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %8, align 8
  %27 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = lshr i64 %25, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %9, align 4
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %8, align 8
  %33 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = and i64 %31, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %11, align 4
  %37 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %8, align 8
  %38 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %8, align 8
  %41 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = zext i32 %42 to i64
  %44 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %8, align 8
  %45 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %43, %46
  %48 = trunc i64 %47 to i32
  %49 = lshr i32 %39, %48
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp uge i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %3
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %155

56:                                               ; preds = %3
  %57 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %8, align 8
  %58 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 1, %59
  %61 = load i32, i32* @CONTROL_SHIFT, align 4
  %62 = shl i32 1, %61
  %63 = add nsw i32 %60, %62
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %8, align 8
  %66 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = shl i32 %64, %68
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @GFP_NOIO, align 4
  %72 = call i8* @kmalloc(i32 %70, i32 %71)
  store i8* %72, i8** %15, align 8
  %73 = load i8*, i8** %15, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %56
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %155

78:                                               ; preds = %56
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %8, align 8
  %81 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @min(i32 %79, i32 %82)
  %84 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %8, align 8
  %85 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = mul i32 %83, %86
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* @GFP_NOIO, align 4
  %90 = call i8* @kmalloc(i32 %88, i32 %89)
  store i8* %90, i8** %16, align 8
  %91 = load i8*, i8** %16, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %98, label %93

93:                                               ; preds = %78
  %94 = load i8*, i8** %15, align 8
  %95 = call i32 @kfree(i8* %94)
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %155

98:                                               ; preds = %78
  store i32 0, i32* %20, align 4
  store i32 0, i32* %18, align 4
  store %struct.scatterlist* null, %struct.scatterlist** %19, align 8
  br label %99

99:                                               ; preds = %143, %98
  %100 = load i32, i32* %7, align 4
  %101 = icmp ugt i32 %100, 0
  br i1 %101, label %102, label %149

102:                                              ; preds = %99
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %8, align 8
  %105 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sub i32 %106, %107
  %109 = call i32 @min(i32 %103, i32 %108)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %8, align 8
  %112 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %110, %113
  store i32 %114, i32* %17, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp uge i32 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %102
  %119 = load %struct.us_data*, %struct.us_data** %5, align 8
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @usb_stor_dbg(%struct.us_data* %119, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %120, i32 %121)
  %123 = load i32, i32* @EIO, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %20, align 4
  br label %149

125:                                              ; preds = %102
  %126 = load i8*, i8** %16, align 8
  %127 = load i32, i32* %17, align 4
  %128 = load %struct.us_data*, %struct.us_data** %5, align 8
  %129 = getelementptr inbounds %struct.us_data, %struct.us_data* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @FROM_XFER_BUF, align 4
  %132 = call i32 @usb_stor_access_xfer_buf(i8* %126, i32 %127, i32 %130, %struct.scatterlist** %19, i32* %18, i32 %131)
  %133 = load %struct.us_data*, %struct.us_data** %5, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %12, align 4
  %137 = load i8*, i8** %16, align 8
  %138 = load i8*, i8** %15, align 8
  %139 = call i32 @sddr09_write_lba(%struct.us_data* %133, i32 %134, i32 %135, i32 %136, i8* %137, i8* %138)
  store i32 %139, i32* %20, align 4
  %140 = load i32, i32* %20, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %125
  br label %149

143:                                              ; preds = %125
  store i32 0, i32* %11, align 4
  %144 = load i32, i32* %9, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* %7, align 4
  %148 = sub i32 %147, %146
  store i32 %148, i32* %7, align 4
  br label %99

149:                                              ; preds = %142, %118, %99
  %150 = load i8*, i8** %16, align 8
  %151 = call i32 @kfree(i8* %150)
  %152 = load i8*, i8** %15, align 8
  %153 = call i32 @kfree(i8* %152)
  %154 = load i32, i32* %20, align 4
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %149, %93, %75, %53
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, i32, i32) #1

declare dso_local i32 @usb_stor_access_xfer_buf(i8*, i32, i32, %struct.scatterlist**, i32*, i32) #1

declare dso_local i32 @sddr09_write_lba(%struct.us_data*, i32, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
