; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_hcd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_hcd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.oxu_hcd = type { i32, i32, i32, %struct.TYPE_8__*, i64, i32*, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32, i32, i32, i8*, i8*, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 }

@oxu_watchdog = common dso_local global i32 0, align 4
@DEFAULT_I_TDPS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@QH_HEAD = common dso_local global i32 0, align 4
@QTD_STS_HALT = common dso_local global i32 0, align 4
@EHCI_LIST_END = common dso_local global i32 0, align 4
@QH_STATE_LINKED = common dso_local global i32 0, align 4
@log2_irq_thresh = common dso_local global i32 0, align 4
@park = common dso_local global i32 0, align 4
@CMD_PARK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"park %d\0A\00", align 1
@EHCI_TUNE_FLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @oxu_hcd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxu_hcd_init(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.oxu_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %9 = call %struct.oxu_hcd* @hcd_to_oxu(%struct.usb_hcd* %8)
  store %struct.oxu_hcd* %9, %struct.oxu_hcd** %4, align 8
  %10 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %11 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %10, i32 0, i32 9
  %12 = call i32 @spin_lock_init(i32* %11)
  %13 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %14 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %13, i32 0, i32 8
  %15 = load i32, i32* @oxu_watchdog, align 4
  %16 = call i32 @timer_setup(i32* %14, i32 %15, i32 0)
  %17 = load i32, i32* @DEFAULT_I_TDPS, align 4
  %18 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %19 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 8
  %20 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32 @ehci_mem_init(%struct.oxu_hcd* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %146

27:                                               ; preds = %1
  %28 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %29 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %28, i32 0, i32 6
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = call i32 @readl(i32* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @HCC_ISOC_CACHE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %38 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %37, i32 0, i32 0
  store i32 8, i32* %38, align 8
  br label %45

39:                                               ; preds = %27
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @HCC_ISOC_THRES(i32 %40)
  %42 = add nsw i32 2, %41
  %43 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %44 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %39, %36
  %46 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %47 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %46, i32 0, i32 5
  store i32* null, i32** %47, align 8
  %48 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %49 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %51 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %50, i32 0, i32 1
  store i32 -1, i32* %51, align 4
  %52 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %53 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %52, i32 0, i32 3
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32* null, i32** %56, align 8
  %57 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %58 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %57, i32 0, i32 3
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @QH_NEXT(i32 %61)
  %63 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %64 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %63, i32 0, i32 3
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 7
  store i32 %62, i32* %66, align 4
  %67 = load i32, i32* @QH_HEAD, align 4
  %68 = call i8* @cpu_to_le32(i32 %67)
  %69 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %70 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %69, i32 0, i32 3
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 5
  store i8* %68, i8** %72, align 8
  %73 = load i32, i32* @QTD_STS_HALT, align 4
  %74 = call i8* @cpu_to_le32(i32 %73)
  %75 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %76 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %75, i32 0, i32 3
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 4
  store i8* %74, i8** %78, align 8
  %79 = load i32, i32* @EHCI_LIST_END, align 4
  %80 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %81 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %80, i32 0, i32 3
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 3
  store i32 %79, i32* %83, align 8
  %84 = load i32, i32* @QH_STATE_LINKED, align 4
  %85 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %86 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %85, i32 0, i32 3
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  store i32 %84, i32* %88, align 4
  %89 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %90 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %89, i32 0, i32 3
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @QTD_NEXT(i32 %95)
  %97 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %98 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %97, i32 0, i32 3
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  store i32 %96, i32* %100, align 8
  %101 = load i32, i32* @log2_irq_thresh, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %45
  %104 = load i32, i32* @log2_irq_thresh, align 4
  %105 = icmp sgt i32 %104, 6
  br i1 %105, label %106, label %107

106:                                              ; preds = %103, %45
  store i32 0, i32* @log2_irq_thresh, align 4
  br label %107

107:                                              ; preds = %106, %103
  %108 = load i32, i32* @log2_irq_thresh, align 4
  %109 = add nsw i32 16, %108
  %110 = shl i32 1, %109
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i64 @HCC_CANPARK(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %131

114:                                              ; preds = %107
  %115 = load i32, i32* @park, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %114
  %118 = load i32, i32* @park, align 4
  %119 = call i32 @min(i32 %118, i32 3)
  store i32 %119, i32* @park, align 4
  %120 = load i32, i32* @CMD_PARK, align 4
  %121 = load i32, i32* %5, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* @park, align 4
  %124 = shl i32 %123, 8
  %125 = load i32, i32* %5, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %117, %114
  %128 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %129 = load i32, i32* @park, align 4
  %130 = call i32 @oxu_dbg(%struct.oxu_hcd* %128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %127, %107
  %132 = load i32, i32* %7, align 4
  %133 = call i64 @HCC_PGM_FRAMELISTLEN(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %131
  %136 = load i32, i32* %5, align 4
  %137 = and i32 %136, -13
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* @EHCI_TUNE_FLS, align 4
  %139 = shl i32 %138, 2
  %140 = load i32, i32* %5, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %135, %131
  %143 = load i32, i32* %5, align 4
  %144 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %145 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  store i32 0, i32* %2, align 4
  br label %146

146:                                              ; preds = %142, %25
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local %struct.oxu_hcd* @hcd_to_oxu(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @ehci_mem_init(%struct.oxu_hcd*, i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i64 @HCC_ISOC_CACHE(i32) #1

declare dso_local i32 @HCC_ISOC_THRES(i32) #1

declare dso_local i32 @QH_NEXT(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @QTD_NEXT(i32) #1

declare dso_local i64 @HCC_CANPARK(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @oxu_dbg(%struct.oxu_hcd*, i8*, i32) #1

declare dso_local i64 @HCC_PGM_FRAMELISTLEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
