; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_cypress_cy7c63.c_vendor_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_cypress_cy7c63.c_vendor_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cypress = type { i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@CYPRESS_MAX_REQSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Sending usb_control_msg (data: %d)\0A\00", align 1
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_OTHER = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@CYPRESS_READ_PORT_ID0 = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"READ_PORT0 returned: %d\0A\00", align 1
@CYPRESS_READ_PORT_ID1 = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"READ_PORT1 returned: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cypress*, i8, i8, i8)* @vendor_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vendor_command(%struct.cypress* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.cypress*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.cypress* %0, %struct.cypress** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @CYPRESS_MAX_REQSIZE, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kzalloc(i32 %12, i32 %13)
  store i8* %14, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %9, align 4
  br label %102

20:                                               ; preds = %4
  %21 = load %struct.cypress*, %struct.cypress** %5, align 8
  %22 = getelementptr inbounds %struct.cypress, %struct.cypress* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i8, i8* %8, align 1
  %26 = call i32 @dev_dbg(i32* %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8 zeroext %25)
  %27 = load %struct.cypress*, %struct.cypress** %5, align 8
  %28 = getelementptr inbounds %struct.cypress, %struct.cypress* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = call i32 @usb_rcvctrlpipe(%struct.TYPE_3__* %29, i32 0)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.cypress*, %struct.cypress** %5, align 8
  %32 = getelementptr inbounds %struct.cypress, %struct.cypress* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i8, i8* %6, align 1
  %36 = load i32, i32* @USB_DIR_IN, align 4
  %37 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @USB_RECIP_OTHER, align 4
  %40 = or i32 %38, %39
  %41 = load i8, i8* %7, align 1
  %42 = load i8, i8* %8, align 1
  %43 = load i8*, i8** %11, align 8
  %44 = load i32, i32* @CYPRESS_MAX_REQSIZE, align 4
  %45 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %46 = call i32 @usb_control_msg(%struct.TYPE_3__* %33, i32 %34, i8 zeroext %35, i32 %40, i8 zeroext %41, i8 zeroext %42, i8* %43, i32 %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i8, i8* %6, align 1
  %48 = zext i8 %47 to i32
  switch i32 %48, label %99 [
    i32 128, label %49
  ]

49:                                               ; preds = %20
  %50 = load i8, i8* %7, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* @CYPRESS_READ_PORT_ID0, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %49
  %56 = load i8*, i8** %11, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = load %struct.cypress*, %struct.cypress** %5, align 8
  %60 = getelementptr inbounds %struct.cypress, %struct.cypress* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  store i8 %58, i8* %62, align 1
  %63 = load %struct.cypress*, %struct.cypress** %5, align 8
  %64 = getelementptr inbounds %struct.cypress, %struct.cypress* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load %struct.cypress*, %struct.cypress** %5, align 8
  %68 = getelementptr inbounds %struct.cypress, %struct.cypress* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = call i32 @dev_dbg(i32* %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %71)
  br label %98

73:                                               ; preds = %49
  %74 = load i8, i8* %7, align 1
  %75 = zext i8 %74 to i32
  %76 = load i8, i8* @CYPRESS_READ_PORT_ID1, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %73
  %80 = load i8*, i8** %11, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = load %struct.cypress*, %struct.cypress** %5, align 8
  %84 = getelementptr inbounds %struct.cypress, %struct.cypress* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  store i8 %82, i8* %86, align 1
  %87 = load %struct.cypress*, %struct.cypress** %5, align 8
  %88 = getelementptr inbounds %struct.cypress, %struct.cypress* %87, i32 0, i32 1
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load %struct.cypress*, %struct.cypress** %5, align 8
  %92 = getelementptr inbounds %struct.cypress, %struct.cypress* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8, i8* %94, align 1
  %96 = call i32 @dev_dbg(i32* %90, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %95)
  br label %97

97:                                               ; preds = %79, %73
  br label %98

98:                                               ; preds = %97, %55
  br label %99

99:                                               ; preds = %20, %98
  %100 = load i8*, i8** %11, align 8
  %101 = call i32 @kfree(i8* %100)
  br label %102

102:                                              ; preds = %99, %17
  %103 = load i32, i32* %9, align 4
  ret i32 %103
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8 zeroext) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @usb_control_msg(%struct.TYPE_3__*, i32, i8 zeroext, i32, i8 zeroext, i8 zeroext, i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
