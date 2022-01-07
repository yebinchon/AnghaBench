; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_gr_udc.c_gr_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_gr_udc.c_gr_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.gr_udc = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i64, i32, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gr_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gr_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.gr_udc*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.gr_udc* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.gr_udc* %7, %struct.gr_udc** %4, align 8
  %8 = load %struct.gr_udc*, %struct.gr_udc** %4, align 8
  %9 = getelementptr inbounds %struct.gr_udc, %struct.gr_udc* %8, i32 0, i32 9
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.gr_udc*, %struct.gr_udc** %4, align 8
  %14 = getelementptr inbounds %struct.gr_udc, %struct.gr_udc* %13, i32 0, i32 8
  %15 = call i32 @usb_del_gadget_udc(i32* %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.gr_udc*, %struct.gr_udc** %4, align 8
  %18 = getelementptr inbounds %struct.gr_udc, %struct.gr_udc* %17, i32 0, i32 7
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %81

24:                                               ; preds = %16
  %25 = load %struct.gr_udc*, %struct.gr_udc** %4, align 8
  %26 = call i32 @gr_dfs_delete(%struct.gr_udc* %25)
  %27 = load %struct.gr_udc*, %struct.gr_udc** %4, align 8
  %28 = getelementptr inbounds %struct.gr_udc, %struct.gr_udc* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dma_pool_destroy(i32 %29)
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = call i32 @platform_set_drvdata(%struct.platform_device* %31, i32* null)
  %33 = load %struct.gr_udc*, %struct.gr_udc** %4, align 8
  %34 = getelementptr inbounds %struct.gr_udc, %struct.gr_udc* %33, i32 0, i32 5
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.gr_udc*, %struct.gr_udc** %4, align 8
  %39 = getelementptr inbounds %struct.gr_udc, %struct.gr_udc* %38, i32 0, i32 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = call i32 @gr_free_request(i32* %37, i32* %41)
  %43 = load %struct.gr_udc*, %struct.gr_udc** %4, align 8
  %44 = getelementptr inbounds %struct.gr_udc, %struct.gr_udc* %43, i32 0, i32 3
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.gr_udc*, %struct.gr_udc** %4, align 8
  %49 = getelementptr inbounds %struct.gr_udc, %struct.gr_udc* %48, i32 0, i32 2
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = call i32 @gr_free_request(i32* %47, i32* %51)
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %63, %24
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.gr_udc*, %struct.gr_udc** %4, align 8
  %56 = getelementptr inbounds %struct.gr_udc, %struct.gr_udc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load %struct.gr_udc*, %struct.gr_udc** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @gr_ep_remove(%struct.gr_udc* %60, i32 %61, i32 0)
  br label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %53

66:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %77, %66
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.gr_udc*, %struct.gr_udc** %4, align 8
  %70 = getelementptr inbounds %struct.gr_udc, %struct.gr_udc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load %struct.gr_udc*, %struct.gr_udc** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @gr_ep_remove(%struct.gr_udc* %74, i32 %75, i32 1)
  br label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %67

80:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %21
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.gr_udc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @usb_del_gadget_udc(i32*) #1

declare dso_local i32 @gr_dfs_delete(%struct.gr_udc*) #1

declare dso_local i32 @dma_pool_destroy(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local i32 @gr_free_request(i32*, i32*) #1

declare dso_local i32 @gr_ep_remove(%struct.gr_udc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
