; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_jumpshot.c_jumpshot_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_jumpshot.c_jumpshot_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8*, i32, i32 }
%struct.jumpshot_info = type { i32 }
%struct.scatterlist = type { i32 }

@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%d bytes\0A\00", align 1
@TO_XFER_BUF = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, %struct.jumpshot_info*, i32, i32)* @jumpshot_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jumpshot_read_data(%struct.us_data* %0, %struct.jumpshot_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.us_data*, align 8
  %7 = alloca %struct.jumpshot_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.scatterlist*, align 8
  store %struct.us_data* %0, %struct.us_data** %6, align 8
  store %struct.jumpshot_info* %1, %struct.jumpshot_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.us_data*, %struct.us_data** %6, align 8
  %20 = getelementptr inbounds %struct.us_data, %struct.us_data* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %10, align 8
  store i32 0, i32* %17, align 4
  store %struct.scatterlist* null, %struct.scatterlist** %18, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp sgt i32 %22, 268435455
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %25, i32* %5, align 4
  br label %134

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.jumpshot_info*, %struct.jumpshot_info** %7, align 8
  %29 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %27, %30
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = call i8* @min(i32 %32, i32 65536)
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @GFP_NOIO, align 4
  %37 = call i8* @kmalloc(i32 %35, i32 %36)
  store i8* %37, i8** %11, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %41, i32* %5, align 4
  br label %134

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %123, %42
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i8* @min(i32 %44, i32 %45)
  %47 = ptrtoint i8* %46 to i32
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load %struct.jumpshot_info*, %struct.jumpshot_info** %7, align 8
  %50 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sdiv i32 %48, %51
  %53 = and i32 %52, 255
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %12, align 1
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  store i8 0, i8* %56, align 1
  %57 = load i8, i8* %12, align 1
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  store i8 %57, i8* %59, align 1
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %60, 255
  %62 = trunc i32 %61 to i8
  %63 = load i8*, i8** %10, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  store i8 %62, i8* %64, align 1
  %65 = load i32, i32* %8, align 4
  %66 = ashr i32 %65, 8
  %67 = and i32 %66, 255
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %10, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 3
  store i8 %68, i8* %70, align 1
  %71 = load i32, i32* %8, align 4
  %72 = ashr i32 %71, 16
  %73 = and i32 %72, 255
  %74 = trunc i32 %73 to i8
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 4
  store i8 %74, i8* %76, align 1
  %77 = load i32, i32* %8, align 4
  %78 = ashr i32 %77, 24
  %79 = and i32 %78, 15
  %80 = or i32 224, %79
  %81 = trunc i32 %80 to i8
  %82 = load i8*, i8** %10, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 5
  store i8 %81, i8* %83, align 1
  %84 = load i8*, i8** %10, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 6
  store i8 32, i8* %85, align 1
  %86 = load %struct.us_data*, %struct.us_data** %6, align 8
  %87 = load %struct.us_data*, %struct.us_data** %6, align 8
  %88 = getelementptr inbounds %struct.us_data, %struct.us_data* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i8*, i8** %10, align 8
  %91 = call i32 @usb_stor_ctrl_transfer(%struct.us_data* %86, i32 %89, i32 0, i32 32, i32 0, i32 1, i8* %90, i32 7)
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %43
  br label %130

96:                                               ; preds = %43
  %97 = load %struct.us_data*, %struct.us_data** %6, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = load i32, i32* %15, align 4
  %100 = call i32 @jumpshot_bulk_read(%struct.us_data* %97, i8* %98, i32 %99)
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %130

105:                                              ; preds = %96
  %106 = load %struct.us_data*, %struct.us_data** %6, align 8
  %107 = load i32, i32* %15, align 4
  %108 = call i32 @usb_stor_dbg(%struct.us_data* %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %107)
  %109 = load i8*, i8** %11, align 8
  %110 = load i32, i32* %15, align 4
  %111 = load %struct.us_data*, %struct.us_data** %6, align 8
  %112 = getelementptr inbounds %struct.us_data, %struct.us_data* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @TO_XFER_BUF, align 4
  %115 = call i32 @usb_stor_access_xfer_buf(i8* %109, i32 %110, i32 %113, %struct.scatterlist** %18, i32* %17, i32 %114)
  %116 = load i8, i8* %12, align 1
  %117 = zext i8 %116 to i32
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %13, align 4
  %122 = sub i32 %121, %120
  store i32 %122, i32* %13, align 4
  br label %123

123:                                              ; preds = %105
  %124 = load i32, i32* %13, align 4
  %125 = icmp ugt i32 %124, 0
  br i1 %125, label %43, label %126

126:                                              ; preds = %123
  %127 = load i8*, i8** %11, align 8
  %128 = call i32 @kfree(i8* %127)
  %129 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %129, i32* %5, align 4
  br label %134

130:                                              ; preds = %104, %95
  %131 = load i8*, i8** %11, align 8
  %132 = call i32 @kfree(i8* %131)
  %133 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %130, %126, %40, %24
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i8* @min(i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_stor_ctrl_transfer(%struct.us_data*, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @jumpshot_bulk_read(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @usb_stor_access_xfer_buf(i8*, i32, i32, %struct.scatterlist**, i32*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
