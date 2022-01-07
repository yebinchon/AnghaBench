; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_alloc_streams.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_alloc_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.usb_device = type { i32 }
%struct.usb_host_endpoint = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.dummy_hcd = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Ep 0x%x only supports %u stream IDs.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint**, i32, i32, i32)* @dummy_alloc_streams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_alloc_streams(%struct.usb_hcd* %0, %struct.usb_device* %1, %struct.usb_host_endpoint** %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_hcd*, align 8
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca %struct.usb_host_endpoint**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dummy_hcd*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %8, align 8
  store %struct.usb_device* %1, %struct.usb_device** %9, align 8
  store %struct.usb_host_endpoint** %2, %struct.usb_host_endpoint*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  %21 = call %struct.dummy_hcd* @hcd_to_dummy_hcd(%struct.usb_hcd* %20)
  store %struct.dummy_hcd* %21, %struct.dummy_hcd** %14, align 8
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %17, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %133

28:                                               ; preds = %6
  %29 = load %struct.dummy_hcd*, %struct.dummy_hcd** %14, align 8
  %30 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %15, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  store i32 0, i32* %19, align 4
  br label %35

35:                                               ; preds = %89, %28
  %36 = load i32, i32* %19, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %92

39:                                               ; preds = %35
  %40 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %10, align 8
  %41 = load i32, i32* %19, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %40, i64 %42
  %44 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %43, align 8
  %45 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %44, i32 0, i32 0
  %46 = call i32 @dummy_get_ep_idx(%struct.TYPE_5__* %45)
  store i32 %46, i32* %18, align 4
  %47 = load i32, i32* %18, align 4
  %48 = shl i32 1, %47
  %49 = load %struct.dummy_hcd*, %struct.dummy_hcd** %14, align 8
  %50 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %39
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %17, align 4
  br label %125

57:                                               ; preds = %39
  %58 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %10, align 8
  %59 = load i32, i32* %19, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %58, i64 %60
  %62 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %61, align 8
  %63 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %62, i32 0, i32 1
  %64 = call i32 @usb_ss_max_streams(i32* %63)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %57
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %17, align 4
  br label %125

70:                                               ; preds = %57
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %17, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %70
  %75 = load %struct.dummy_hcd*, %struct.dummy_hcd** %14, align 8
  %76 = call i32 @dummy_dev(%struct.dummy_hcd* %75)
  %77 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %10, align 8
  %78 = load i32, i32* %19, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %77, i64 %79
  %81 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %80, align 8
  %82 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %16, align 4
  %86 = call i32 @dev_dbg(i32 %76, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %85)
  %87 = load i32, i32* %16, align 4
  store i32 %87, i32* %17, align 4
  br label %88

88:                                               ; preds = %74, %70
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %19, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %19, align 4
  br label %35

92:                                               ; preds = %35
  store i32 0, i32* %19, align 4
  br label %93

93:                                               ; preds = %121, %92
  %94 = load i32, i32* %19, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %124

97:                                               ; preds = %93
  %98 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %10, align 8
  %99 = load i32, i32* %19, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %98, i64 %100
  %102 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %101, align 8
  %103 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %102, i32 0, i32 0
  %104 = call i32 @dummy_get_ep_idx(%struct.TYPE_5__* %103)
  store i32 %104, i32* %18, align 4
  %105 = load i32, i32* %18, align 4
  %106 = shl i32 1, %105
  %107 = load %struct.dummy_hcd*, %struct.dummy_hcd** %14, align 8
  %108 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load %struct.dummy_hcd*, %struct.dummy_hcd** %14, align 8
  %112 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %10, align 8
  %113 = load i32, i32* %19, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %112, i64 %114
  %116 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %115, align 8
  %117 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %116, i32 0, i32 0
  %118 = call i32 @usb_endpoint_num(%struct.TYPE_5__* %117)
  %119 = load i32, i32* %17, align 4
  %120 = call i32 @set_max_streams_for_pipe(%struct.dummy_hcd* %111, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %97
  %122 = load i32, i32* %19, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %19, align 4
  br label %93

124:                                              ; preds = %93
  br label %125

125:                                              ; preds = %124, %67, %54
  %126 = load %struct.dummy_hcd*, %struct.dummy_hcd** %14, align 8
  %127 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %126, i32 0, i32 1
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i64, i64* %15, align 8
  %131 = call i32 @spin_unlock_irqrestore(i32* %129, i64 %130)
  %132 = load i32, i32* %17, align 4
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %125, %25
  %134 = load i32, i32* %7, align 4
  ret i32 %134
}

declare dso_local %struct.dummy_hcd* @hcd_to_dummy_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dummy_get_ep_idx(%struct.TYPE_5__*) #1

declare dso_local i32 @usb_ss_max_streams(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @dummy_dev(%struct.dummy_hcd*) #1

declare dso_local i32 @set_max_streams_for_pipe(%struct.dummy_hcd*, i32, i32) #1

declare dso_local i32 @usb_endpoint_num(%struct.TYPE_5__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
