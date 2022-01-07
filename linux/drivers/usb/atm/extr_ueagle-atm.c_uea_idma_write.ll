; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_uea_idma_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_uea_idma_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uea_softc = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"can't allocate xfer_buff\0A\00", align 1
@UEA_IDMA_PIPE = common dso_local global i32 0, align 4
@BULK_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"size != bytes_read %d %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uea_softc*, i8*, i32)* @uea_idma_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uea_idma_write(%struct.uea_softc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uea_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.uea_softc* %0, %struct.uea_softc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32* @kmemdup(i8* %13, i32 %14, i32 %15)
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load %struct.uea_softc*, %struct.uea_softc** %5, align 8
  %21 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %20)
  %22 = call i32 (i32, i8*, ...) @uea_err(i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %56

24:                                               ; preds = %3
  %25 = load %struct.uea_softc*, %struct.uea_softc** %5, align 8
  %26 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.uea_softc*, %struct.uea_softc** %5, align 8
  %29 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @UEA_IDMA_PIPE, align 4
  %32 = call i32 @usb_sndbulkpipe(i32 %30, i32 %31)
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @BULK_TIMEOUT, align 4
  %36 = call i32 @usb_bulk_msg(i32 %27, i32 %32, i32* %33, i32 %34, i32* %10, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @kfree(i32* %37)
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %24
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %56

43:                                               ; preds = %24
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load %struct.uea_softc*, %struct.uea_softc** %5, align 8
  %49 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %48)
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 (i32, i8*, ...) @uea_err(i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %56

55:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %47, %41, %19
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32* @kmemdup(i8*, i32, i32) #1

declare dso_local i32 @uea_err(i32, i8*, ...) #1

declare dso_local i32 @INS_TO_USBDEV(%struct.uea_softc*) #1

declare dso_local i32 @usb_bulk_msg(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
