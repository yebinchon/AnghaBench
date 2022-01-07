; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_alauda.c_alauda_write_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_alauda.c_alauda_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i32 }
%struct.scatterlist = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Requested lba %u exceeds maximum %u\0A\00", align 1
@FROM_XFER_BUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i64, i32)* @alauda_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alauda_write_data(%struct.us_data* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.us_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_2__, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_2__, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_2__, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_2__, align 8
  %21 = alloca %struct.scatterlist*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_2__, align 8
  %26 = alloca %struct.TYPE_2__, align 8
  %27 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %28 = load %struct.us_data*, %struct.us_data** %5, align 8
  call void @MEDIA_INFO(%struct.TYPE_2__* sret %14, %struct.us_data* %28)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %13, align 4
  %31 = load %struct.us_data*, %struct.us_data** %5, align 8
  call void @MEDIA_INFO(%struct.TYPE_2__* sret %16, %struct.us_data* %31)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %15, align 4
  %34 = load %struct.us_data*, %struct.us_data** %5, align 8
  call void @MEDIA_INFO(%struct.TYPE_2__* sret %18, %struct.us_data* %34)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %17, align 4
  %37 = load %struct.us_data*, %struct.us_data** %5, align 8
  call void @MEDIA_INFO(%struct.TYPE_2__* sret %20, %struct.us_data* %37)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %17, align 4
  %42 = call i32 @min(i32 %40, i32 %41)
  %43 = load i32, i32* %19, align 4
  %44 = mul i32 %42, %43
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @GFP_NOIO, align 4
  %47 = call i8* @kmalloc(i32 %45, i32 %46)
  store i8* %47, i8** %8, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %3
  %51 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %51, i32* %4, align 4
  br label %136

52:                                               ; preds = %3
  %53 = load i32, i32* %19, align 4
  %54 = add i32 %53, 64
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* @GFP_NOIO, align 4
  %57 = call i8* @kmalloc_array(i32 %54, i32 %55, i32 %56)
  store i8* %57, i8** %9, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %52
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @kfree(i8* %61)
  %63 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %63, i32* %4, align 4
  br label %136

64:                                               ; preds = %52
  %65 = load i64, i64* %6, align 8
  %66 = load i32, i32* %13, align 4
  %67 = zext i32 %66 to i64
  %68 = lshr i64 %65, %67
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %22, align 4
  %70 = load i64, i64* %6, align 8
  %71 = load %struct.us_data*, %struct.us_data** %5, align 8
  call void @MEDIA_INFO(%struct.TYPE_2__* sret %25, %struct.us_data* %71)
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = and i64 %70, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %10, align 4
  %76 = load %struct.us_data*, %struct.us_data** %5, align 8
  call void @MEDIA_INFO(%struct.TYPE_2__* sret %26, %struct.us_data* %76)
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %13, align 4
  %81 = add i32 %79, %80
  %82 = lshr i32 %78, %81
  store i32 %82, i32* %23, align 4
  %83 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %83, i32* %24, align 4
  store i32 0, i32* %12, align 4
  store %struct.scatterlist* null, %struct.scatterlist** %21, align 8
  br label %84

84:                                               ; preds = %124, %64
  %85 = load i32, i32* %7, align 4
  %86 = icmp ugt i32 %85, 0
  br i1 %86, label %87, label %130

87:                                               ; preds = %84
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* %10, align 4
  %91 = sub i32 %89, %90
  %92 = call i32 @min(i32 %88, i32 %91)
  store i32 %92, i32* %27, align 4
  %93 = load i32, i32* %27, align 4
  %94 = load i32, i32* %15, align 4
  %95 = shl i32 %93, %94
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %22, align 4
  %97 = load i32, i32* %23, align 4
  %98 = icmp uge i32 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %87
  %100 = load %struct.us_data*, %struct.us_data** %5, align 8
  %101 = load i32, i32* %22, align 4
  %102 = load i32, i32* %23, align 4
  %103 = call i32 @usb_stor_dbg(%struct.us_data* %100, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %102)
  %104 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %104, i32* %24, align 4
  br label %130

105:                                              ; preds = %87
  %106 = load i8*, i8** %8, align 8
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.us_data*, %struct.us_data** %5, align 8
  %109 = getelementptr inbounds %struct.us_data, %struct.us_data* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @FROM_XFER_BUF, align 4
  %112 = call i32 @usb_stor_access_xfer_buf(i8* %106, i32 %107, i32 %110, %struct.scatterlist** %21, i32* %12, i32 %111)
  %113 = load %struct.us_data*, %struct.us_data** %5, align 8
  %114 = load i32, i32* %22, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %27, align 4
  %117 = load i8*, i8** %8, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = call i32 @alauda_write_lba(%struct.us_data* %113, i32 %114, i32 %115, i32 %116, i8* %117, i8* %118)
  store i32 %119, i32* %24, align 4
  %120 = load i32, i32* %24, align 4
  %121 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %105
  br label %130

124:                                              ; preds = %105
  store i32 0, i32* %10, align 4
  %125 = load i32, i32* %22, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %22, align 4
  %127 = load i32, i32* %27, align 4
  %128 = load i32, i32* %7, align 4
  %129 = sub i32 %128, %127
  store i32 %129, i32* %7, align 4
  br label %84

130:                                              ; preds = %123, %99, %84
  %131 = load i8*, i8** %8, align 8
  %132 = call i32 @kfree(i8* %131)
  %133 = load i8*, i8** %9, align 8
  %134 = call i32 @kfree(i8* %133)
  %135 = load i32, i32* %24, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %130, %60, %50
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local void @MEDIA_INFO(%struct.TYPE_2__* sret, %struct.us_data*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i8* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, i32, i32) #1

declare dso_local i32 @usb_stor_access_xfer_buf(i8*, i32, i32, %struct.scatterlist**, i32*, i32) #1

declare dso_local i32 @alauda_write_lba(%struct.us_data*, i32, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
