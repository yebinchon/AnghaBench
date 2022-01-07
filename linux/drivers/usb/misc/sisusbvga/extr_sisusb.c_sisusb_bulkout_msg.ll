; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_bulkout_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_bulkout_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i32*, i32, %struct.TYPE_2__*, i32, %struct.urb** }
%struct.TYPE_2__ = type { i32* }
%struct.urb = type { i32, i32, i32 }

@sisusb_bulk_completeout = common dso_local global i32 0, align 4
@SU_URB_BUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sisusb_usb_data*, i32, i32, i8*, i32, i32*, i32, i32)* @sisusb_bulkout_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusb_bulkout_msg(%struct.sisusb_usb_data* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.sisusb_usb_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.urb*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.sisusb_usb_data* %0, %struct.sisusb_usb_data** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %20 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %9, align 8
  %21 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %20, i32 0, i32 4
  %22 = load %struct.urb**, %struct.urb*** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.urb*, %struct.urb** %22, i64 %24
  %26 = load %struct.urb*, %struct.urb** %25, align 8
  store %struct.urb* %26, %struct.urb** %17, align 8
  store i32 0, i32* %19, align 4
  %27 = load %struct.urb*, %struct.urb** %17, align 8
  %28 = getelementptr inbounds %struct.urb, %struct.urb* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load %struct.urb*, %struct.urb** %17, align 8
  %30 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %9, align 8
  %31 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load i8*, i8** %12, align 8
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @sisusb_bulk_completeout, align 4
  %37 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %9, align 8
  %38 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = call i32 @usb_fill_bulk_urb(%struct.urb* %29, i32 %32, i32 %33, i8* %34, i32 %35, i32 %36, %struct.TYPE_2__* %42)
  %44 = load i32, i32* %16, align 4
  %45 = load %struct.urb*, %struct.urb** %17, align 8
  %46 = getelementptr inbounds %struct.urb, %struct.urb* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.urb*, %struct.urb** %17, align 8
  %50 = getelementptr inbounds %struct.urb, %struct.urb* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %8
  br label %56

54:                                               ; preds = %8
  %55 = load i32*, i32** %14, align 8
  br label %56

56:                                               ; preds = %54, %53
  %57 = phi i32* [ null, %53 ], [ %55, %54 ]
  %58 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %9, align 8
  %59 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32* %57, i32** %64, align 8
  %65 = load i32, i32* @SU_URB_BUSY, align 4
  %66 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %9, align 8
  %67 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %65
  store i32 %73, i32* %71, align 4
  %74 = load %struct.urb*, %struct.urb** %17, align 8
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i32 @usb_submit_urb(%struct.urb* %74, i32 %75)
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %18, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %123

79:                                               ; preds = %56
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %123

82:                                               ; preds = %79
  %83 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %9, align 8
  %84 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %9, align 8
  %87 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @SU_URB_BUSY, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @wait_event_timeout(i32 %85, i32 %97, i32 %98)
  %100 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %9, align 8
  %101 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @SU_URB_BUSY, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %82
  %111 = load %struct.urb*, %struct.urb** %17, align 8
  %112 = call i32 @usb_kill_urb(%struct.urb* %111)
  %113 = load i32, i32* @ETIMEDOUT, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %18, align 4
  br label %122

115:                                              ; preds = %82
  %116 = load %struct.urb*, %struct.urb** %17, align 8
  %117 = getelementptr inbounds %struct.urb, %struct.urb* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %18, align 4
  %119 = load %struct.urb*, %struct.urb** %17, align 8
  %120 = getelementptr inbounds %struct.urb, %struct.urb* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %19, align 4
  br label %122

122:                                              ; preds = %115, %110
  br label %123

123:                                              ; preds = %122, %79, %56
  %124 = load i32*, i32** %14, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32, i32* %19, align 4
  %128 = load i32*, i32** %14, align 8
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %126, %123
  %130 = load i32, i32* %18, align 4
  ret i32 %130
}

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i8*, i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
