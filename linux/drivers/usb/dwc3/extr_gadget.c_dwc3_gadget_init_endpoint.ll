; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_init_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_init_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { %struct.dwc3_ep**, i64 }
%struct.dwc3_ep = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i64, i64, i64, %struct.dwc3* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32*, i32*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ep%u%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@dwc3_gadget_ep0_desc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3*, i32)* @dwc3_gadget_init_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_gadget_init_endpoint(%struct.dwc3* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwc3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dwc3_ep*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, 1
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = ashr i32 %12, 1
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.dwc3_ep* @kzalloc(i32 96, i32 %14)
  store %struct.dwc3_ep* %15, %struct.dwc3_ep** %6, align 8
  %16 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %17 = icmp ne %struct.dwc3_ep* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %120

21:                                               ; preds = %2
  %22 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %23 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %24 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %23, i32 0, i32 10
  store %struct.dwc3* %22, %struct.dwc3** %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %27 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %30 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %32 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @DWC3_DEP_BASE(i32 %34)
  %36 = add nsw i64 %33, %35
  %37 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %38 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %37, i32 0, i32 9
  store i64 %36, i64* %38, align 8
  %39 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %40 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %41 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %40, i32 0, i32 0
  %42 = load %struct.dwc3_ep**, %struct.dwc3_ep*** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.dwc3_ep*, %struct.dwc3_ep** %42, i64 %44
  store %struct.dwc3_ep* %39, %struct.dwc3_ep** %45, align 8
  %46 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %47 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %46, i32 0, i32 8
  store i64 0, i64* %47, align 8
  %48 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %49 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %48, i32 0, i32 7
  store i64 0, i64* %49, align 8
  %50 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %51 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %58 = call i32 @snprintf(i32 %52, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %53, i8* %57)
  %59 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %60 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %63 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  store i32 %61, i32* %64, align 8
  %65 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %66 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp sgt i32 %67, 1
  br i1 %68, label %76, label %69

69:                                               ; preds = %21
  %70 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %71 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  store i32* @dwc3_gadget_ep0_desc, i32** %72, align 8
  %73 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %74 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i32* null, i32** %75, align 8
  br label %76

76:                                               ; preds = %69, %21
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %81 = call i32 @dwc3_gadget_init_control_endpoint(%struct.dwc3_ep* %80)
  store i32 %81, i32* %8, align 4
  br label %92

82:                                               ; preds = %76
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %87 = call i32 @dwc3_gadget_init_in_endpoint(%struct.dwc3_ep* %86)
  store i32 %87, i32* %8, align 4
  br label %91

88:                                               ; preds = %82
  %89 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %90 = call i32 @dwc3_gadget_init_out_endpoint(%struct.dwc3_ep* %89)
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %88, %85
  br label %92

92:                                               ; preds = %91, %79
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %3, align 4
  br label %120

97:                                               ; preds = %92
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %100 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  store i32 %98, i32* %102, align 8
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %108 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  store i32 %106, i32* %110, align 4
  %111 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %112 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %111, i32 0, i32 4
  %113 = call i32 @INIT_LIST_HEAD(i32* %112)
  %114 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %115 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %114, i32 0, i32 3
  %116 = call i32 @INIT_LIST_HEAD(i32* %115)
  %117 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %118 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %117, i32 0, i32 2
  %119 = call i32 @INIT_LIST_HEAD(i32* %118)
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %97, %95, %18
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.dwc3_ep* @kzalloc(i32, i32) #1

declare dso_local i64 @DWC3_DEP_BASE(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @dwc3_gadget_init_control_endpoint(%struct.dwc3_ep*) #1

declare dso_local i32 @dwc3_gadget_init_in_endpoint(%struct.dwc3_ep*) #1

declare dso_local i32 @dwc3_gadget_init_out_endpoint(%struct.dwc3_ep*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
