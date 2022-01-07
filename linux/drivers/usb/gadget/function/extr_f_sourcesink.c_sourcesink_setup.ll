; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_sourcesink.c_sourcesink_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_sourcesink.c_sourcesink_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { %struct.usb_configuration* }
%struct.usb_configuration = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, %struct.usb_request* }
%struct.TYPE_4__ = type { i32 }
%struct.usb_request = type { i32, i64 }
%struct.usb_ctrlrequest = type { i32, i32, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@USB_COMP_EP0_BUFSIZ = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"unknown control req%02x.%02x v%04x i%04x l%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"source/sink req%02x.%02x v%04x i%04x l%d\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"source/sink response, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_function*, %struct.usb_ctrlrequest*)* @sourcesink_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sourcesink_setup(%struct.usb_function* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca %struct.usb_function*, align 8
  %4 = alloca %struct.usb_ctrlrequest*, align 8
  %5 = alloca %struct.usb_configuration*, align 8
  %6 = alloca %struct.usb_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_function* %0, %struct.usb_function** %3, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %4, align 8
  %11 = load %struct.usb_function*, %struct.usb_function** %3, align 8
  %12 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %11, i32 0, i32 0
  %13 = load %struct.usb_configuration*, %struct.usb_configuration** %12, align 8
  store %struct.usb_configuration* %13, %struct.usb_configuration** %5, align 8
  %14 = load %struct.usb_configuration*, %struct.usb_configuration** %5, align 8
  %15 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load %struct.usb_request*, %struct.usb_request** %17, align 8
  store %struct.usb_request* %18, %struct.usb_request** %6, align 8
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %22 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le16_to_cpu(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %26 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le16_to_cpu(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %30 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le16_to_cpu(i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* @USB_COMP_EP0_BUFSIZ, align 4
  %34 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %35 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %37 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %89 [
    i32 91, label %39
    i32 92, label %64
  ]

39:                                               ; preds = %2
  %40 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %41 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @USB_DIR_OUT, align 4
  %44 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %45 = or i32 %43, %44
  %46 = icmp ne i32 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %90

48:                                               ; preds = %39
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %48
  br label %104

55:                                               ; preds = %51
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %58 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp sgt i32 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %104

62:                                               ; preds = %55
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %7, align 4
  br label %104

64:                                               ; preds = %2
  %65 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %66 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @USB_DIR_IN, align 4
  %69 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %70 = or i32 %68, %69
  %71 = icmp ne i32 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %90

73:                                               ; preds = %64
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76, %73
  br label %104

80:                                               ; preds = %76
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %83 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp sgt i32 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %104

87:                                               ; preds = %80
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %7, align 4
  br label %104

89:                                               ; preds = %2
  br label %90

90:                                               ; preds = %89, %72, %47
  %91 = load %struct.usb_configuration*, %struct.usb_configuration** %5, align 8
  %92 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %95 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %98 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @VDBG(%struct.TYPE_5__* %93, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %99, i32 %100, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %90, %87, %86, %79, %62, %61, %54
  %105 = load i32, i32* %7, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %145

107:                                              ; preds = %104
  %108 = load %struct.usb_configuration*, %struct.usb_configuration** %5, align 8
  %109 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %108, i32 0, i32 0
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %112 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %115 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @VDBG(%struct.TYPE_5__* %110, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %113, i32 %116, i32 %117, i32 %118, i32 %119)
  %121 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %122 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %121, i32 0, i32 1
  store i64 0, i64* %122, align 8
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %125 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.usb_configuration*, %struct.usb_configuration** %5, align 8
  %127 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %126, i32 0, i32 0
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %134 = load i32, i32* @GFP_ATOMIC, align 4
  %135 = call i32 @usb_ep_queue(i32 %132, %struct.usb_request* %133, i32 %134)
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %107
  %139 = load %struct.usb_configuration*, %struct.usb_configuration** %5, align 8
  %140 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %139, i32 0, i32 0
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @ERROR(%struct.TYPE_5__* %141, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %138, %107
  br label %145

145:                                              ; preds = %144, %104
  %146 = load i32, i32* %7, align 4
  ret i32 %146
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @VDBG(%struct.TYPE_5__*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @usb_ep_queue(i32, %struct.usb_request*, i32) #1

declare dso_local i32 @ERROR(%struct.TYPE_5__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
