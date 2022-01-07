; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32, i32, i32, i32 }
%struct.fsg_dev = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.usb_request* }
%struct.usb_request = type { i64, i64, i32* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ep0-setup\00", align 1
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@EDOM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"bulk reset request\0A\00", align 1
@FSG_STATE_PROTOCOL_RESET = common dso_local global i32 0, align 4
@USB_GADGET_DELAYED_STATUS = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"get max LUN\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"unknown class-specific control req %02x.%02x v%04x i%04x l%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_function*, %struct.usb_ctrlrequest*)* @fsg_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsg_setup(%struct.usb_function* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_function*, align 8
  %5 = alloca %struct.usb_ctrlrequest*, align 8
  %6 = alloca %struct.fsg_dev*, align 8
  %7 = alloca %struct.usb_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_function* %0, %struct.usb_function** %4, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %5, align 8
  %11 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %12 = call %struct.fsg_dev* @fsg_from_func(%struct.usb_function* %11)
  store %struct.fsg_dev* %12, %struct.fsg_dev** %6, align 8
  %13 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %14 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load %struct.usb_request*, %struct.usb_request** %16, align 8
  store %struct.usb_request* %17, %struct.usb_request** %7, align 8
  %18 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %19 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %23 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le16_to_cpu(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %27 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %31 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = call i32 @fsg_is_set(%struct.TYPE_5__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %153

38:                                               ; preds = %2
  %39 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %40 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %46 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %45, i32 0, i32 2
  store i32* null, i32** %46, align 8
  %47 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %48 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %50 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %51 = bitcast %struct.usb_ctrlrequest* %50 to i32*
  %52 = call i32 @dump_msg(%struct.fsg_dev* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %51, i32 20)
  %53 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %54 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %136 [
    i32 128, label %56
    i32 129, label %91
  ]

56:                                               ; preds = %38
  %57 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %58 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @USB_DIR_OUT, align 4
  %61 = load i32, i32* @USB_TYPE_CLASS, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %64 = or i32 %62, %63
  %65 = icmp ne i32 %59, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %136

67:                                               ; preds = %56
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %70 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %68, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76, %73, %67
  %80 = load i32, i32* @EDOM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %153

82:                                               ; preds = %76
  %83 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %84 = call i32 @DBG(%struct.fsg_dev* %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %85 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %86 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load i32, i32* @FSG_STATE_PROTOCOL_RESET, align 4
  %89 = call i32 @raise_exception(%struct.TYPE_5__* %87, i32 %88)
  %90 = load i32, i32* @USB_GADGET_DELAYED_STATUS, align 4
  store i32 %90, i32* %3, align 4
  br label %153

91:                                               ; preds = %38
  %92 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %93 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @USB_DIR_IN, align 4
  %96 = load i32, i32* @USB_TYPE_CLASS, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %99 = or i32 %97, %98
  %100 = icmp ne i32 %94, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  br label %136

102:                                              ; preds = %91
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %105 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %103, %106
  br i1 %107, label %114, label %108

108:                                              ; preds = %102
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 1
  br i1 %113, label %114, label %117

114:                                              ; preds = %111, %108, %102
  %115 = load i32, i32* @EDOM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %153

117:                                              ; preds = %111
  %118 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %119 = call i32 (%struct.fsg_dev*, i8*, ...) @VDBG(%struct.fsg_dev* %118, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %120 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %121 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %120, i32 0, i32 1
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = call i32 @_fsg_common_get_max_lun(%struct.TYPE_5__* %122)
  %124 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %125 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = inttoptr i64 %126 to i32*
  store i32 %123, i32* %127, align 4
  %128 = load i32, i32* %10, align 4
  %129 = call i64 @min(i32 1, i32 %128)
  %130 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %131 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  %132 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %133 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %132, i32 0, i32 1
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = call i32 @ep0_queue(%struct.TYPE_5__* %134)
  store i32 %135, i32* %3, align 4
  br label %153

136:                                              ; preds = %38, %101, %66
  %137 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %138 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %139 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %142 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %145 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @le16_to_cpu(i32 %146)
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %10, align 4
  %150 = call i32 (%struct.fsg_dev*, i8*, ...) @VDBG(%struct.fsg_dev* %137, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %140, i32 %143, i32 %147, i32 %148, i32 %149)
  %151 = load i32, i32* @EOPNOTSUPP, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %136, %117, %114, %82, %79, %35
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local %struct.fsg_dev* @fsg_from_func(%struct.usb_function*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @fsg_is_set(%struct.TYPE_5__*) #1

declare dso_local i32 @dump_msg(%struct.fsg_dev*, i8*, i32*, i32) #1

declare dso_local i32 @DBG(%struct.fsg_dev*, i8*) #1

declare dso_local i32 @raise_exception(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @VDBG(%struct.fsg_dev*, i8*, ...) #1

declare dso_local i32 @_fsg_common_get_max_lun(%struct.TYPE_5__*) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @ep0_queue(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
