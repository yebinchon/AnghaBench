; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_transport.c_usb_stor_bulk_transfer_sglist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_transport.c_usb_stor_bulk_transfer_sglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.scatterlist = type { i32 }

@US_FLIDX_ABORTING = common dso_local global i32 0, align 4
@USB_STOR_XFER_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"xfer %u bytes, %d entries\0A\00", align 1
@GFP_NOIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"usb_sg_init returned %d\0A\00", align 1
@US_FLIDX_SG_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"-- cancelling sg request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i32, %struct.scatterlist*, i32, i32, i32*)* @usb_stor_bulk_transfer_sglist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_stor_bulk_transfer_sglist(%struct.us_data* %0, i32 %1, %struct.scatterlist* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.us_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.scatterlist* %2, %struct.scatterlist** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %15 = load i32, i32* @US_FLIDX_ABORTING, align 4
  %16 = load %struct.us_data*, %struct.us_data** %8, align 8
  %17 = getelementptr inbounds %struct.us_data, %struct.us_data* %16, i32 0, i32 1
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32, i32* @USB_STOR_XFER_ERROR, align 4
  store i32 %21, i32* %7, align 4
  br label %98

22:                                               ; preds = %6
  %23 = load %struct.us_data*, %struct.us_data** %8, align 8
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load %struct.us_data*, %struct.us_data** %8, align 8
  %28 = getelementptr inbounds %struct.us_data, %struct.us_data* %27, i32 0, i32 0
  %29 = load %struct.us_data*, %struct.us_data** %8, align 8
  %30 = getelementptr inbounds %struct.us_data, %struct.us_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @GFP_NOIO, align 4
  %37 = call i32 @usb_sg_init(%struct.TYPE_4__* %28, i32 %31, i32 %32, i32 0, %struct.scatterlist* %33, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %22
  %41 = load %struct.us_data*, %struct.us_data** %8, align 8
  %42 = load i32, i32* %14, align 4
  %43 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @USB_STOR_XFER_ERROR, align 4
  store i32 %44, i32* %7, align 4
  br label %98

45:                                               ; preds = %22
  %46 = load i32, i32* @US_FLIDX_SG_ACTIVE, align 4
  %47 = load %struct.us_data*, %struct.us_data** %8, align 8
  %48 = getelementptr inbounds %struct.us_data, %struct.us_data* %47, i32 0, i32 1
  %49 = call i32 @set_bit(i32 %46, i32* %48)
  %50 = load i32, i32* @US_FLIDX_ABORTING, align 4
  %51 = load %struct.us_data*, %struct.us_data** %8, align 8
  %52 = getelementptr inbounds %struct.us_data, %struct.us_data* %51, i32 0, i32 1
  %53 = call i64 @test_bit(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %45
  %56 = load i32, i32* @US_FLIDX_SG_ACTIVE, align 4
  %57 = load %struct.us_data*, %struct.us_data** %8, align 8
  %58 = getelementptr inbounds %struct.us_data, %struct.us_data* %57, i32 0, i32 1
  %59 = call i64 @test_and_clear_bit(i32 %56, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.us_data*, %struct.us_data** %8, align 8
  %63 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.us_data*, %struct.us_data** %8, align 8
  %65 = getelementptr inbounds %struct.us_data, %struct.us_data* %64, i32 0, i32 0
  %66 = call i32 @usb_sg_cancel(%struct.TYPE_4__* %65)
  br label %67

67:                                               ; preds = %61, %55
  br label %68

68:                                               ; preds = %67, %45
  %69 = load %struct.us_data*, %struct.us_data** %8, align 8
  %70 = getelementptr inbounds %struct.us_data, %struct.us_data* %69, i32 0, i32 0
  %71 = call i32 @usb_sg_wait(%struct.TYPE_4__* %70)
  %72 = load i32, i32* @US_FLIDX_SG_ACTIVE, align 4
  %73 = load %struct.us_data*, %struct.us_data** %8, align 8
  %74 = getelementptr inbounds %struct.us_data, %struct.us_data* %73, i32 0, i32 1
  %75 = call i32 @clear_bit(i32 %72, i32* %74)
  %76 = load %struct.us_data*, %struct.us_data** %8, align 8
  %77 = getelementptr inbounds %struct.us_data, %struct.us_data* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %14, align 4
  %80 = load i32*, i32** %13, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %68
  %83 = load %struct.us_data*, %struct.us_data** %8, align 8
  %84 = getelementptr inbounds %struct.us_data, %struct.us_data* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %13, align 8
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %82, %68
  %89 = load %struct.us_data*, %struct.us_data** %8, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %14, align 4
  %93 = load %struct.us_data*, %struct.us_data** %8, align 8
  %94 = getelementptr inbounds %struct.us_data, %struct.us_data* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @interpret_urb_result(%struct.us_data* %89, i32 %90, i32 %91, i32 %92, i32 %96)
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %88, %40, %20
  %99 = load i32, i32* %7, align 4
  ret i32 %99
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, ...) #1

declare dso_local i32 @usb_sg_init(%struct.TYPE_4__*, i32, i32, i32, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @usb_sg_cancel(%struct.TYPE_4__*) #1

declare dso_local i32 @usb_sg_wait(%struct.TYPE_4__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @interpret_urb_result(%struct.us_data*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
