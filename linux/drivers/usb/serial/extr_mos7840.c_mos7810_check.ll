; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7840.c_mos7810_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7840.c_mos7810_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i32 }

@VENDOR_READ_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MCS_RDREQ = common dso_local global i32 0, align 4
@MCS_RD_RTYPE = common dso_local global i32 0, align 4
@MODEM_CONTROL_REGISTER = common dso_local global i32 0, align 4
@MOS_WDR_TIMEOUT = common dso_local global i32 0, align 4
@MCS_WRREQ = common dso_local global i32 0, align 4
@MCS_WR_RTYPE = common dso_local global i32 0, align 4
@GPIO_REGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*)* @mos7810_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mos7810_check(%struct.usb_serial* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 21930, i32* %9, align 4
  %11 = load i32, i32* @VENDOR_READ_LENGTH, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32* @kmalloc(i32 %11, i32 %12)
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %119

17:                                               ; preds = %1
  %18 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %19 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %22 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @usb_rcvctrlpipe(i32 %23, i32 0)
  %25 = load i32, i32* @MCS_RDREQ, align 4
  %26 = load i32, i32* @MCS_RD_RTYPE, align 4
  %27 = load i32, i32* @MODEM_CONTROL_REGISTER, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @VENDOR_READ_LENGTH, align 4
  %30 = load i32, i32* @MOS_WDR_TIMEOUT, align 4
  %31 = call i32 @usb_control_msg(i32 %20, i32 %24, i32 %25, i32 %26, i32 768, i32 %27, i32* %28, i32 %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @VENDOR_READ_LENGTH, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %17
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %35, %17
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %95, %38
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 16
  br i1 %41, label %42, label %98

42:                                               ; preds = %39
  %43 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %44 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %47 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @usb_sndctrlpipe(i32 %48, i32 0)
  %50 = load i32, i32* @MCS_WRREQ, align 4
  %51 = load i32, i32* @MCS_WR_RTYPE, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %4, align 4
  %54 = ashr i32 %52, %53
  %55 = and i32 %54, 1
  %56 = shl i32 %55, 1
  %57 = or i32 768, %56
  %58 = load i32, i32* @MODEM_CONTROL_REGISTER, align 4
  %59 = load i32, i32* @MOS_WDR_TIMEOUT, align 4
  %60 = call i32 @usb_control_msg(i32 %45, i32 %49, i32 %50, i32 %51, i32 %57, i32 %58, i32* null, i32 0, i32 %59)
  %61 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %62 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %65 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @usb_rcvctrlpipe(i32 %66, i32 0)
  %68 = load i32, i32* @MCS_RDREQ, align 4
  %69 = load i32, i32* @MCS_RD_RTYPE, align 4
  %70 = load i32, i32* @GPIO_REGISTER, align 4
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* @VENDOR_READ_LENGTH, align 4
  %73 = load i32, i32* @MOS_WDR_TIMEOUT, align 4
  %74 = call i32 @usb_control_msg(i32 %63, i32 %67, i32 %68, i32 %69, i32 0, i32 %70, i32* %71, i32 %72, i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @VENDOR_READ_LENGTH, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %42
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %78, %42
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %4, align 4
  %84 = ashr i32 %82, %83
  %85 = load i32, i32* %7, align 4
  %86 = xor i32 %85, -1
  %87 = ashr i32 %86, 1
  %88 = xor i32 %84, %87
  %89 = and i32 %88, 1
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %98

92:                                               ; preds = %81
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %4, align 4
  br label %39

98:                                               ; preds = %91, %39
  %99 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %100 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %103 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @usb_sndctrlpipe(i32 %104, i32 0)
  %106 = load i32, i32* @MCS_WRREQ, align 4
  %107 = load i32, i32* @MCS_WR_RTYPE, align 4
  %108 = load i32, i32* %8, align 4
  %109 = or i32 768, %108
  %110 = load i32, i32* @MODEM_CONTROL_REGISTER, align 4
  %111 = load i32, i32* @MOS_WDR_TIMEOUT, align 4
  %112 = call i32 @usb_control_msg(i32 %101, i32 %105, i32 %106, i32 %107, i32 %109, i32 %110, i32* null, i32 0, i32 %111)
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @kfree(i32* %113)
  %115 = load i32, i32* %5, align 4
  %116 = icmp eq i32 %115, 16
  br i1 %116, label %117, label %118

117:                                              ; preds = %98
  store i32 1, i32* %2, align 4
  br label %119

118:                                              ; preds = %98
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %118, %117, %16
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
