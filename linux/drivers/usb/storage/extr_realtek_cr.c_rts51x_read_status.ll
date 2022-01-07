; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_realtek_cr.c_rts51x_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_realtek_cr.c_rts51x_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"lun = %d\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i32, i32*, i32, i32*)* @rts51x_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rts51x_read_status(%struct.us_data* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.us_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [12 x i32], align 16
  %14 = alloca i32*, align 8
  store %struct.us_data* %0, %struct.us_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = bitcast [12 x i32]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 48, i1 false)
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @GFP_NOIO, align 4
  %18 = call i32* @kmalloc(i32 %16, i32 %17)
  store i32* %18, i32** %14, align 8
  %19 = load i32*, i32** %14, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %22, i32* %6, align 4
  br label %52

23:                                               ; preds = %5
  %24 = load %struct.us_data*, %struct.us_data** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @usb_stor_dbg(%struct.us_data* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = getelementptr inbounds [12 x i32], [12 x i32]* %13, i64 0, i64 0
  store i32 240, i32* %27, align 16
  %28 = getelementptr inbounds [12 x i32], [12 x i32]* %13, i64 0, i64 1
  store i32 9, i32* %28, align 4
  %29 = load %struct.us_data*, %struct.us_data** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = getelementptr inbounds [12 x i32], [12 x i32]* %13, i64 0, i64 0
  %32 = load i32*, i32** %14, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = call i32 @rts51x_bulk_transport(%struct.us_data* %29, i32 %30, i32* %31, i32 12, i32* %32, i32 %33, i32 %34, i32* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %23
  %41 = load i32*, i32** %14, align 8
  %42 = call i32 @kfree(i32* %41)
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %52

45:                                               ; preds = %23
  %46 = load i32*, i32** %9, align 8
  %47 = load i32*, i32** %14, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @memcpy(i32* %46, i32* %47, i32 %48)
  %50 = load i32*, i32** %14, align 8
  %51 = call i32 @kfree(i32* %50)
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %45, %40, %21
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @kmalloc(i32, i32) #2

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, i32) #2

declare dso_local i32 @rts51x_bulk_transport(%struct.us_data*, i32, i32*, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @kfree(i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
