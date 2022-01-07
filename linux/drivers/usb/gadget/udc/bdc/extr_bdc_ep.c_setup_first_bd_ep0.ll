; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/bdc/extr_bdc_ep.c_setup_first_bd_ep0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/bdc/extr_bdc_ep.c_setup_first_bd_ep0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdc = type { i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.bdc_req = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@BD_TYPE_DS = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@BD_DIR_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"ZLP needed wVal:%d len:%d MaxP:%d\0A\00", align 1
@BD_TYPE_SS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Unknown ep0 state for queueing bd ep0_state:%s\0A\00", align 1
@ep0_state_string = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bdc*, %struct.bdc_req*, i32*)* @setup_first_bd_ep0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_first_bd_ep0(%struct.bdc* %0, %struct.bdc_req* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bdc*, align 8
  %6 = alloca %struct.bdc_req*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bdc* %0, %struct.bdc** %5, align 8
  store %struct.bdc_req* %1, %struct.bdc_req** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.bdc_req*, %struct.bdc_req** %6, align 8
  %11 = getelementptr inbounds %struct.bdc_req, %struct.bdc_req* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.bdc_req*, %struct.bdc_req** %6, align 8
  %15 = getelementptr inbounds %struct.bdc_req, %struct.bdc_req* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load %struct.bdc*, %struct.bdc** %5, align 8
  %19 = getelementptr inbounds %struct.bdc, %struct.bdc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %98 [
    i32 129, label %21
    i32 128, label %73
  ]

21:                                               ; preds = %3
  %22 = load i32, i32* @BD_TYPE_DS, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %22
  store i32 %25, i32* %23, align 4
  %26 = load %struct.bdc*, %struct.bdc** %5, align 8
  %27 = getelementptr inbounds %struct.bdc, %struct.bdc* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @USB_DIR_IN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %21
  %34 = load i32, i32* @BD_DIR_IN, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %33, %21
  %39 = load %struct.bdc*, %struct.bdc** %5, align 8
  %40 = getelementptr inbounds %struct.bdc, %struct.bdc* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16_to_cpu(i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %72

47:                                               ; preds = %38
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.bdc*, %struct.bdc** %5, align 8
  %50 = getelementptr inbounds %struct.bdc, %struct.bdc* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = srem i32 %48, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %47
  %58 = load %struct.bdc*, %struct.bdc** %5, align 8
  %59 = getelementptr inbounds %struct.bdc, %struct.bdc* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.bdc*, %struct.bdc** %5, align 8
  %64 = getelementptr inbounds %struct.bdc, %struct.bdc* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dev_dbg(i32 %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %62, i32 %68)
  %70 = load %struct.bdc*, %struct.bdc** %5, align 8
  %71 = getelementptr inbounds %struct.bdc, %struct.bdc* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  br label %72

72:                                               ; preds = %57, %47, %38
  br label %112

73:                                               ; preds = %3
  %74 = load i32, i32* @BD_TYPE_SS, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %74
  store i32 %77, i32* %75, align 4
  %78 = load %struct.bdc*, %struct.bdc** %5, align 8
  %79 = getelementptr inbounds %struct.bdc, %struct.bdc* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le16_to_cpu(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %73
  %85 = load %struct.bdc*, %struct.bdc** %5, align 8
  %86 = getelementptr inbounds %struct.bdc, %struct.bdc* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @USB_DIR_IN, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %84, %73
  %93 = load i32, i32* @BD_DIR_IN, align 4
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %93
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %92, %84
  br label %112

98:                                               ; preds = %3
  %99 = load %struct.bdc*, %struct.bdc** %5, align 8
  %100 = getelementptr inbounds %struct.bdc, %struct.bdc* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32*, i32** @ep0_state_string, align 8
  %103 = load %struct.bdc*, %struct.bdc** %5, align 8
  %104 = getelementptr inbounds %struct.bdc, %struct.bdc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %102, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @dev_err(i32 %101, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %113

112:                                              ; preds = %97, %72
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %112, %98
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
