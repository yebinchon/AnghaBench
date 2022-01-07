; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c-hsudc.c_s3c_hsudc_initep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c-hsudc.c_s3c_hsudc_initep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_hsudc = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.s3c_hsudc_ep = type { i32, %struct.TYPE_6__, i64, i64, i64, i32, %struct.s3c_hsudc*, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32*, i32*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"ep%d%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ep0name = common dso_local global i8* null, align 8
@s3c_hsudc_ep_ops = common dso_local global i32 0, align 4
@S3C_MPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c_hsudc*, %struct.s3c_hsudc_ep*, i32)* @s3c_hsudc_initep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_hsudc_initep(%struct.s3c_hsudc* %0, %struct.s3c_hsudc_ep* %1, i32 %2) #0 {
  %4 = alloca %struct.s3c_hsudc*, align 8
  %5 = alloca %struct.s3c_hsudc_ep*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.s3c_hsudc* %0, %struct.s3c_hsudc** %4, align 8
  store %struct.s3c_hsudc_ep* %1, %struct.s3c_hsudc_ep** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = srem i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %16

12:                                               ; preds = %3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %13 = load i32, i32* @USB_DIR_IN, align 4
  %14 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %5, align 8
  %15 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  br label %16

16:                                               ; preds = %12, %11
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %5, align 8
  %19 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %16
  %25 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %5, align 8
  %26 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %27, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %28, i8* %29)
  br label %37

31:                                               ; preds = %16
  %32 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %5, align 8
  %33 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** @ep0name, align 8
  %36 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %34, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %31, %24
  %38 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %5, align 8
  %39 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %38, i32 0, i32 7
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %5, align 8
  %42 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 5
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %37
  %48 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %5, align 8
  %49 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 5
  %51 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %4, align 8
  %52 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = call i32 @list_add_tail(i32* %50, i32* %53)
  br label %55

55:                                               ; preds = %47, %37
  %56 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %4, align 8
  %57 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %5, align 8
  %58 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %57, i32 0, i32 6
  store %struct.s3c_hsudc* %56, %struct.s3c_hsudc** %58, align 8
  %59 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %5, align 8
  %60 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %5, align 8
  %63 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 4
  store i32 %61, i32* %64, align 8
  %65 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %5, align 8
  %66 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %65, i32 0, i32 1
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 512, i32 64
  %71 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_6__* %66, i32 %70)
  %72 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %5, align 8
  %73 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  store i32* @s3c_hsudc_ep_ops, i32** %74, align 8
  %75 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %4, align 8
  %76 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i64 @S3C_BR(i32 %78)
  %80 = add nsw i64 %77, %79
  %81 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %5, align 8
  %82 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %81, i32 0, i32 4
  store i64 %80, i64* %82, align 8
  %83 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %5, align 8
  %84 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  store i32* null, i32** %85, align 8
  %86 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %5, align 8
  %87 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %86, i32 0, i32 3
  store i64 0, i64* %87, align 8
  %88 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %5, align 8
  %89 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  %90 = load i32, i32* %6, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %55
  %93 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %5, align 8
  %94 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i32 1, i32* %96, align 4
  %97 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %5, align 8
  %98 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  store i32 1, i32* %100, align 4
  %101 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %5, align 8
  %102 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  store i32 1, i32* %104, align 4
  br label %118

105:                                              ; preds = %55
  %106 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %5, align 8
  %107 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 3
  store i32 1, i32* %109, align 4
  %110 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %5, align 8
  %111 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 4
  store i32 1, i32* %113, align 4
  %114 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %5, align 8
  %115 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 5
  store i32 1, i32* %117, align 4
  br label %118

118:                                              ; preds = %105, %92
  %119 = load i32, i32* %6, align 4
  %120 = and i32 %119, 1
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %5, align 8
  %124 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  store i32 1, i32* %126, align 4
  br label %132

127:                                              ; preds = %118
  %128 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %5, align 8
  %129 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 2
  store i32 1, i32* %131, align 4
  br label %132

132:                                              ; preds = %127, %122
  %133 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %4, align 8
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @set_index(%struct.s3c_hsudc* %133, i32 %134)
  %136 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %5, align 8
  %137 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %4, align 8
  %141 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @S3C_MPR, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @writel(i32 %139, i64 %144)
  ret void
}

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @S3C_BR(i32) #1

declare dso_local i32 @set_index(%struct.s3c_hsudc*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
