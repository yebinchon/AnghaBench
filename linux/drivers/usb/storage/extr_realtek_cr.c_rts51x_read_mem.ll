; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_realtek_cr.c_rts51x_read_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_realtek_cr.c_rts51x_read_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"addr = 0x%x, len = %d\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i32, i32*, i32)* @rts51x_read_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rts51x_read_mem(%struct.us_data* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.us_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [12 x i32], align 16
  %12 = alloca i32*, align 8
  store %struct.us_data* %0, %struct.us_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = bitcast [12 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 48, i1 false)
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @GFP_NOIO, align 4
  %16 = call i32* @kmalloc(i32 %14, i32 %15)
  store i32* %16, i32** %12, align 8
  %17 = load i32*, i32** %12, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %20, i32* %5, align 4
  br label %59

21:                                               ; preds = %4
  %22 = load %struct.us_data*, %struct.us_data** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @usb_stor_dbg(%struct.us_data* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 0
  store i32 240, i32* %26, align 16
  %27 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 1
  store i32 13, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = ashr i32 %28, 8
  %30 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 2
  store i32 %29, i32* %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 3
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = ashr i32 %33, 8
  %35 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 4
  store i32 %34, i32* %35, align 16
  %36 = load i32, i32* %9, align 4
  %37 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 5
  store i32 %36, i32* %37, align 4
  %38 = load %struct.us_data*, %struct.us_data** %6, align 8
  %39 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 0
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %43 = call i32 @rts51x_bulk_transport(%struct.us_data* %38, i32 0, i32* %39, i32 12, i32* %40, i32 %41, i32 %42, i32* null)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %21
  %48 = load i32*, i32** %12, align 8
  %49 = call i32 @kfree(i32* %48)
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %59

52:                                               ; preds = %21
  %53 = load i32*, i32** %8, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @memcpy(i32* %53, i32* %54, i32 %55)
  %57 = load i32*, i32** %12, align 8
  %58 = call i32 @kfree(i32* %57)
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %52, %47, %19
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @kmalloc(i32, i32) #2

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, i32, i32) #2

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
