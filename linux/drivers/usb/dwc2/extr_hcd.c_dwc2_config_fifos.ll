; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_config_fifos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_config_fifos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { %struct.TYPE_2__, %struct.dwc2_core_params, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.dwc2_core_params = type { i32, i32, i32, i64, i32 }

@GRXFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"initial grxfsiz=%08x\0A\00", align 1
@GRXFSIZ_DEPTH_MASK = common dso_local global i32 0, align 4
@GRXFSIZ_DEPTH_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"new grxfsiz=%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"initial gnptxfsiz=%08x\0A\00", align 1
@GNPTXFSIZ = common dso_local global i32 0, align 4
@FIFOSIZE_DEPTH_SHIFT = common dso_local global i32 0, align 4
@FIFOSIZE_DEPTH_MASK = common dso_local global i32 0, align 4
@FIFOSIZE_STARTADDR_SHIFT = common dso_local global i32 0, align 4
@FIFOSIZE_STARTADDR_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"new gnptxfsiz=%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"initial hptxfsiz=%08x\0A\00", align 1
@HPTXFSIZ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"new hptxfsiz=%08x\0A\00", align 1
@DWC2_CORE_REV_2_91a = common dso_local global i64 0, align 8
@GDFIFOCFG = common dso_local global i32 0, align 4
@GDFIFOCFG_EPINFOBASE_MASK = common dso_local global i32 0, align 4
@GDFIFOCFG_EPINFOBASE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*)* @dwc2_config_fifos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_config_fifos(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca %struct.dwc2_hsotg*, align 8
  %3 = alloca %struct.dwc2_core_params*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %2, align 8
  %8 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %9 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %8, i32 0, i32 1
  store %struct.dwc2_core_params* %9, %struct.dwc2_core_params** %3, align 8
  %10 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %3, align 8
  %11 = getelementptr inbounds %struct.dwc2_core_params, %struct.dwc2_core_params* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %163

15:                                               ; preds = %1
  %16 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %17 = call i32 @dwc2_calculate_dynamic_fifo(%struct.dwc2_hsotg* %16)
  %18 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %19 = load i32, i32* @GRXFSIZ, align 4
  %20 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %22 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @GRXFSIZ_DEPTH_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %3, align 8
  %31 = getelementptr inbounds %struct.dwc2_core_params, %struct.dwc2_core_params* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @GRXFSIZ_DEPTH_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* @GRXFSIZ_DEPTH_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @GRXFSIZ, align 4
  %42 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %39, i32 %40, i32 %41)
  %43 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %44 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %47 = load i32, i32* @GRXFSIZ, align 4
  %48 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %46, i32 %47)
  %49 = call i32 @dev_dbg(i32 %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %51 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %54 = load i32, i32* @GNPTXFSIZ, align 4
  %55 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %53, i32 %54)
  %56 = call i32 @dev_dbg(i32 %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %3, align 8
  %58 = getelementptr inbounds %struct.dwc2_core_params, %struct.dwc2_core_params* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @FIFOSIZE_DEPTH_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = load i32, i32* @FIFOSIZE_DEPTH_MASK, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %4, align 4
  %64 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %3, align 8
  %65 = getelementptr inbounds %struct.dwc2_core_params, %struct.dwc2_core_params* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @FIFOSIZE_STARTADDR_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = load i32, i32* @FIFOSIZE_STARTADDR_MASK, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* %4, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %4, align 4
  %73 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @GNPTXFSIZ, align 4
  %76 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %73, i32 %74, i32 %75)
  %77 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %78 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %81 = load i32, i32* @GNPTXFSIZ, align 4
  %82 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %80, i32 %81)
  %83 = call i32 @dev_dbg(i32 %79, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  %84 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %85 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %88 = load i32, i32* @HPTXFSIZ, align 4
  %89 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %87, i32 %88)
  %90 = call i32 @dev_dbg(i32 %86, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  %91 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %3, align 8
  %92 = getelementptr inbounds %struct.dwc2_core_params, %struct.dwc2_core_params* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @FIFOSIZE_DEPTH_SHIFT, align 4
  %95 = shl i32 %93, %94
  %96 = load i32, i32* @FIFOSIZE_DEPTH_MASK, align 4
  %97 = and i32 %95, %96
  store i32 %97, i32* %5, align 4
  %98 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %3, align 8
  %99 = getelementptr inbounds %struct.dwc2_core_params, %struct.dwc2_core_params* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %3, align 8
  %102 = getelementptr inbounds %struct.dwc2_core_params, %struct.dwc2_core_params* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %100, %103
  %105 = load i32, i32* @FIFOSIZE_STARTADDR_SHIFT, align 4
  %106 = shl i32 %104, %105
  %107 = load i32, i32* @FIFOSIZE_STARTADDR_MASK, align 4
  %108 = and i32 %106, %107
  %109 = load i32, i32* %5, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %5, align 4
  %111 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @HPTXFSIZ, align 4
  %114 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %111, i32 %112, i32 %113)
  %115 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %116 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %119 = load i32, i32* @HPTXFSIZ, align 4
  %120 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %118, i32 %119)
  %121 = call i32 @dev_dbg(i32 %117, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %120)
  %122 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %123 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.dwc2_core_params, %struct.dwc2_core_params* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %163

127:                                              ; preds = %15
  %128 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %129 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @DWC2_CORE_REV_2_91a, align 8
  %133 = icmp sge i64 %131, %132
  br i1 %133, label %134, label %163

134:                                              ; preds = %127
  %135 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %136 = load i32, i32* @GDFIFOCFG, align 4
  %137 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %135, i32 %136)
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* @GDFIFOCFG_EPINFOBASE_MASK, align 4
  %139 = xor i32 %138, -1
  %140 = load i32, i32* %6, align 4
  %141 = and i32 %140, %139
  store i32 %141, i32* %6, align 4
  %142 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %3, align 8
  %143 = getelementptr inbounds %struct.dwc2_core_params, %struct.dwc2_core_params* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %3, align 8
  %146 = getelementptr inbounds %struct.dwc2_core_params, %struct.dwc2_core_params* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %144, %147
  %149 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %3, align 8
  %150 = getelementptr inbounds %struct.dwc2_core_params, %struct.dwc2_core_params* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %148, %151
  %153 = load i32, i32* @GDFIFOCFG_EPINFOBASE_SHIFT, align 4
  %154 = shl i32 %152, %153
  %155 = load i32, i32* @GDFIFOCFG_EPINFOBASE_MASK, align 4
  %156 = and i32 %154, %155
  %157 = load i32, i32* %6, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %6, align 4
  %159 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* @GDFIFOCFG, align 4
  %162 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %159, i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %14, %134, %127, %15
  ret void
}

declare dso_local i32 @dwc2_calculate_dynamic_fifo(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
