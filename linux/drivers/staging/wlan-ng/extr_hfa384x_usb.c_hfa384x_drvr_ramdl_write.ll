; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_drvr_ramdl_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_drvr_ramdl_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfa384x = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HFA384x_DLSTATE_RAMENABLED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Writing %d bytes to ram @0x%06x\0A\00", align 1
@HFA384x_USB_RWMEM_MAXLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfa384x_drvr_ramdl_write(%struct.hfa384x* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfa384x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.hfa384x* %0, %struct.hfa384x** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %12, align 8
  %20 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %21 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HFA384x_DLSTATE_RAMENABLED, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %93

28:                                               ; preds = %4
  %29 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %30 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @netdev_info(i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @HFA384x_USB_RWMEM_MAXLEN, align 4
  %39 = sdiv i32 %37, %38
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @HFA384x_USB_RWMEM_MAXLEN, align 4
  %42 = srem i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %48

48:                                               ; preds = %88, %28
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %91

52:                                               ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @HFA384x_USB_RWMEM_MAXLEN, align 4
  %56 = mul nsw i32 %54, %55
  %57 = add nsw i32 %53, %56
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @HFA384x_ADDR_CMD_MKPAGE(i32 %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @HFA384x_ADDR_CMD_MKOFF(i32 %60)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @HFA384x_USB_RWMEM_MAXLEN, align 4
  %65 = mul nsw i32 %63, %64
  %66 = sub nsw i32 %62, %65
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* @HFA384x_USB_RWMEM_MAXLEN, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %52
  %71 = load i32, i32* @HFA384x_USB_RWMEM_MAXLEN, align 4
  store i32 %71, i32* %17, align 4
  br label %72

72:                                               ; preds = %70, %52
  %73 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %16, align 4
  %76 = load i32*, i32** %12, align 8
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* @HFA384x_USB_RWMEM_MAXLEN, align 4
  %79 = mul nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  %82 = load i32, i32* %17, align 4
  %83 = call i32 @hfa384x_dowmem(%struct.hfa384x* %73, i32 %74, i32 %75, i32* %81, i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %72
  br label %91

87:                                               ; preds = %72
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  br label %48

91:                                               ; preds = %86, %48
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %91, %25
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @netdev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @HFA384x_ADDR_CMD_MKPAGE(i32) #1

declare dso_local i32 @HFA384x_ADDR_CMD_MKOFF(i32) #1

declare dso_local i32 @hfa384x_dowmem(%struct.hfa384x*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
