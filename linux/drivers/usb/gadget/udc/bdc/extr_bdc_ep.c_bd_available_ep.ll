; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/bdc/extr_bdc_ep.c_bd_available_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/bdc/extr_bdc_ep.c_bd_available_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdc_ep = type { %struct.bdc*, %struct.bd_list }
%struct.bdc = type { i32 }
%struct.bd_list = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"chain_bd1:%d chain_bd2:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"available_bd:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bdc_ep*)* @bd_available_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd_available_ep(%struct.bdc_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bdc_ep*, align 8
  %4 = alloca %struct.bd_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bdc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bdc_ep* %0, %struct.bdc_ep** %3, align 8
  %11 = load %struct.bdc_ep*, %struct.bdc_ep** %3, align 8
  %12 = getelementptr inbounds %struct.bdc_ep, %struct.bdc_ep* %11, i32 0, i32 1
  store %struct.bd_list* %12, %struct.bd_list** %4, align 8
  %13 = load %struct.bdc_ep*, %struct.bdc_ep** %3, align 8
  %14 = getelementptr inbounds %struct.bdc_ep, %struct.bdc_ep* %13, i32 0, i32 0
  %15 = load %struct.bdc*, %struct.bdc** %14, align 8
  store %struct.bdc* %15, %struct.bdc** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %16 = load %struct.bd_list*, %struct.bd_list** %4, align 8
  %17 = getelementptr inbounds %struct.bd_list, %struct.bd_list* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bd_list*, %struct.bd_list** %4, align 8
  %20 = getelementptr inbounds %struct.bd_list, %struct.bd_list* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load %struct.bd_list*, %struct.bd_list** %4, align 8
  %25 = getelementptr inbounds %struct.bd_list, %struct.bd_list* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bd_list*, %struct.bd_list** %4, align 8
  %28 = getelementptr inbounds %struct.bd_list, %struct.bd_list* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %26, %29
  store i32 %30, i32* %2, align 4
  br label %127

31:                                               ; preds = %1
  %32 = load %struct.bd_list*, %struct.bd_list** %4, align 8
  %33 = getelementptr inbounds %struct.bd_list, %struct.bd_list* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bd_list*, %struct.bd_list** %4, align 8
  %36 = getelementptr inbounds %struct.bd_list, %struct.bd_list* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %73

39:                                               ; preds = %31
  %40 = load %struct.bd_list*, %struct.bd_list** %4, align 8
  %41 = getelementptr inbounds %struct.bd_list, %struct.bd_list* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.bd_list*, %struct.bd_list** %4, align 8
  %44 = getelementptr inbounds %struct.bd_list, %struct.bd_list* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %42, %45
  store i32 %46, i32* %5, align 4
  %47 = load %struct.bd_list*, %struct.bd_list** %4, align 8
  %48 = getelementptr inbounds %struct.bd_list, %struct.bd_list* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.bd_list*, %struct.bd_list** %4, align 8
  %52 = getelementptr inbounds %struct.bd_list, %struct.bd_list* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = sdiv i32 %50, %53
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.bd_list*, %struct.bd_list** %4, align 8
  %57 = getelementptr inbounds %struct.bd_list, %struct.bd_list* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = sdiv i32 %55, %58
  store i32 %59, i32* %9, align 4
  %60 = load %struct.bdc*, %struct.bdc** %7, align 8
  %61 = getelementptr inbounds %struct.bdc, %struct.bdc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 (i32, i8*, i32, ...) @dev_vdbg(i32 %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* %8, align 4
  %70 = sub nsw i32 %68, %69
  %71 = load i32, i32* %9, align 4
  %72 = sub nsw i32 %70, %71
  store i32 %72, i32* %10, align 4
  br label %118

73:                                               ; preds = %31
  %74 = load %struct.bd_list*, %struct.bd_list** %4, align 8
  %75 = getelementptr inbounds %struct.bd_list, %struct.bd_list* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.bd_list*, %struct.bd_list** %4, align 8
  %78 = getelementptr inbounds %struct.bd_list, %struct.bd_list* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %76, %79
  store i32 %80, i32* %5, align 4
  %81 = load %struct.bd_list*, %struct.bd_list** %4, align 8
  %82 = getelementptr inbounds %struct.bd_list, %struct.bd_list* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.bd_list*, %struct.bd_list** %4, align 8
  %85 = getelementptr inbounds %struct.bd_list, %struct.bd_list* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %83, %86
  %88 = load %struct.bd_list*, %struct.bd_list** %4, align 8
  %89 = getelementptr inbounds %struct.bd_list, %struct.bd_list* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = icmp sle i32 %87, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %73
  %93 = load %struct.bdc_ep*, %struct.bdc_ep** %3, align 8
  %94 = load %struct.bd_list*, %struct.bd_list** %4, align 8
  %95 = getelementptr inbounds %struct.bd_list, %struct.bd_list* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @bdi_to_tbi(%struct.bdc_ep* %93, i32 %96)
  %98 = load %struct.bdc_ep*, %struct.bdc_ep** %3, align 8
  %99 = load %struct.bd_list*, %struct.bd_list** %4, align 8
  %100 = getelementptr inbounds %struct.bd_list, %struct.bd_list* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @bdi_to_tbi(%struct.bdc_ep* %98, i32 %101)
  %103 = icmp eq i64 %97, %102
  br i1 %103, label %107, label %104

104:                                              ; preds = %92
  %105 = load i32, i32* %5, align 4
  %106 = sub nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %104, %92
  br label %117

108:                                              ; preds = %73
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.bd_list*, %struct.bd_list** %4, align 8
  %111 = getelementptr inbounds %struct.bd_list, %struct.bd_list* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = sdiv i32 %109, %112
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* %8, align 4
  %116 = sub nsw i32 %114, %115
  store i32 %116, i32* %10, align 4
  br label %117

117:                                              ; preds = %108, %107
  br label %118

118:                                              ; preds = %117, %39
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %10, align 4
  %121 = load %struct.bdc*, %struct.bdc** %7, align 8
  %122 = getelementptr inbounds %struct.bdc, %struct.bdc* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i32 (i32, i8*, i32, ...) @dev_vdbg(i32 %123, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %118, %23
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @dev_vdbg(i32, i8*, i32, ...) #1

declare dso_local i64 @bdi_to_tbi(%struct.bdc_ep*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
