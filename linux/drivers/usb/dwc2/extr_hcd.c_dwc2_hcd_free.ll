; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_hcd_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_hcd_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, i32, i64, i32, %struct.TYPE_4__, %struct.dwc2_host_chan*, i32, i32, %struct.TYPE_3__, %struct.dwc2_host_chan**, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.dwc2_host_chan = type { i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"DWC OTG HCD FREE\0A\00", align 1
@MAX_EPS_CHANNELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"HCD Free channel #%i, chan=%p\0A\00", align 1
@DWC2_HCD_STATUS_BUF_SIZE = common dso_local global i32 0, align 4
@GAHBCFG = common dso_local global i32 0, align 4
@GAHBCFG_GLBL_INTR_EN = common dso_local global i32 0, align 4
@GINTMSK = common dso_local global i32 0, align 4
@DWC2_CORE_REV_3_00a = common dso_local global i64 0, align 8
@DCTL = common dso_local global i32 0, align 4
@DCTL_SFTDISCON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*)* @dwc2_hcd_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_hcd_free(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca %struct.dwc2_hsotg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dwc2_host_chan*, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %2, align 8
  %7 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %8 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 4
  %10 = call i32 (i32, i8*, ...) @dev_dbg(i32 %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %12 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %13 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %12, i32 0, i32 16
  %14 = call i32 @dwc2_qh_list_free(%struct.dwc2_hsotg* %11, i32* %13)
  %15 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %16 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %17 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %16, i32 0, i32 15
  %18 = call i32 @dwc2_qh_list_free(%struct.dwc2_hsotg* %15, i32* %17)
  %19 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %20 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %21 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %20, i32 0, i32 14
  %22 = call i32 @dwc2_qh_list_free(%struct.dwc2_hsotg* %19, i32* %21)
  %23 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %24 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %25 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %24, i32 0, i32 13
  %26 = call i32 @dwc2_qh_list_free(%struct.dwc2_hsotg* %23, i32* %25)
  %27 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %28 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %29 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %28, i32 0, i32 12
  %30 = call i32 @dwc2_qh_list_free(%struct.dwc2_hsotg* %27, i32* %29)
  %31 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %32 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %33 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %32, i32 0, i32 11
  %34 = call i32 @dwc2_qh_list_free(%struct.dwc2_hsotg* %31, i32* %33)
  %35 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %36 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %37 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %36, i32 0, i32 10
  %38 = call i32 @dwc2_qh_list_free(%struct.dwc2_hsotg* %35, i32* %37)
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %69, %1
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @MAX_EPS_CHANNELS, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %72

43:                                               ; preds = %39
  %44 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %45 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %44, i32 0, i32 9
  %46 = load %struct.dwc2_host_chan**, %struct.dwc2_host_chan*** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %46, i64 %48
  %50 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %49, align 8
  store %struct.dwc2_host_chan* %50, %struct.dwc2_host_chan** %6, align 8
  %51 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %52 = icmp ne %struct.dwc2_host_chan* %51, null
  br i1 %52, label %53, label %68

53:                                               ; preds = %43
  %54 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %55 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %59 = call i32 (i32, i8*, ...) @dev_dbg(i32 %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %57, %struct.dwc2_host_chan* %58)
  %60 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %61 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %60, i32 0, i32 9
  %62 = load %struct.dwc2_host_chan**, %struct.dwc2_host_chan*** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %62, i64 %64
  store %struct.dwc2_host_chan* null, %struct.dwc2_host_chan** %65, align 8
  %66 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %67 = call i32 @kfree(%struct.dwc2_host_chan* %66)
  br label %68

68:                                               ; preds = %53, %43
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %39

72:                                               ; preds = %39
  %73 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %74 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %73, i32 0, i32 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %98

78:                                               ; preds = %72
  %79 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %80 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %79, i32 0, i32 5
  %81 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %80, align 8
  %82 = icmp ne %struct.dwc2_host_chan* %81, null
  br i1 %82, label %83, label %97

83:                                               ; preds = %78
  %84 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %85 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @DWC2_HCD_STATUS_BUF_SIZE, align 4
  %88 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %89 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %88, i32 0, i32 5
  %90 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %89, align 8
  %91 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %92 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @dma_free_coherent(i32 %86, i32 %87, %struct.dwc2_host_chan* %90, i32 %93)
  %95 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %96 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %95, i32 0, i32 5
  store %struct.dwc2_host_chan* null, %struct.dwc2_host_chan** %96, align 8
  br label %97

97:                                               ; preds = %83, %78
  br label %105

98:                                               ; preds = %72
  %99 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %100 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %99, i32 0, i32 5
  %101 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %100, align 8
  %102 = call i32 @kfree(%struct.dwc2_host_chan* %101)
  %103 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %104 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %103, i32 0, i32 5
  store %struct.dwc2_host_chan* null, %struct.dwc2_host_chan** %104, align 8
  br label %105

105:                                              ; preds = %98, %97
  %106 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %107 = load i32, i32* @GAHBCFG, align 4
  %108 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %106, i32 %107)
  store i32 %108, i32* %3, align 4
  %109 = load i32, i32* @GAHBCFG_GLBL_INTR_EN, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %3, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %3, align 4
  %113 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* @GAHBCFG, align 4
  %116 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %113, i32 %114, i32 %115)
  %117 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %118 = load i32, i32* @GINTMSK, align 4
  %119 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %117, i32 0, i32 %118)
  %120 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %121 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @DWC2_CORE_REV_3_00a, align 8
  %125 = icmp sge i64 %123, %124
  br i1 %125, label %126, label %137

126:                                              ; preds = %105
  %127 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %128 = load i32, i32* @DCTL, align 4
  %129 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %127, i32 %128)
  store i32 %129, i32* %4, align 4
  %130 = load i32, i32* @DCTL_SFTDISCON, align 4
  %131 = load i32, i32* %4, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %4, align 4
  %133 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @DCTL, align 4
  %136 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %133, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %126, %105
  %138 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %139 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %157

142:                                              ; preds = %137
  %143 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %144 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %143, i32 0, i32 3
  %145 = call i32 @cancel_work_sync(i32* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %142
  %148 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %149 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @flush_workqueue(i64 %150)
  br label %152

152:                                              ; preds = %147, %142
  %153 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %154 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @destroy_workqueue(i64 %155)
  br label %157

157:                                              ; preds = %152, %137
  %158 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %159 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %158, i32 0, i32 1
  %160 = call i32 @cancel_work_sync(i32* %159)
  %161 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %162 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %161, i32 0, i32 0
  %163 = call i32 @del_timer(i32* %162)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @dwc2_qh_list_free(%struct.dwc2_hsotg*, i32*) #1

declare dso_local i32 @kfree(%struct.dwc2_host_chan*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, %struct.dwc2_host_chan*, i32) #1

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @flush_workqueue(i64) #1

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @del_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
