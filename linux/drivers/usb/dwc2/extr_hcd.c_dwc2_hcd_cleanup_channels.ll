; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_hcd_cleanup_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_hcd_cleanup_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, i64, i64, %struct.TYPE_2__, i32, %struct.dwc2_host_chan** }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.dwc2_host_chan = type { i32*, i32 }

@HCCHAR_CHENA = common dso_local global i32 0, align 4
@HCCHAR_EPDIR = common dso_local global i32 0, align 4
@HCCHAR_CHDIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*)* @dwc2_hcd_cleanup_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_hcd_cleanup_channels(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca %struct.dwc2_hsotg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwc2_host_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %2, align 8
  %7 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %8 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %12 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %63, label %16

16:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %59, %16
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %62

21:                                               ; preds = %17
  %22 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %23 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %22, i32 0, i32 5
  %24 = load %struct.dwc2_host_chan**, %struct.dwc2_host_chan*** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %24, i64 %26
  %28 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %27, align 8
  store %struct.dwc2_host_chan* %28, %struct.dwc2_host_chan** %4, align 8
  %29 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %30 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %29, i32 0, i32 1
  %31 = call i32 @list_empty(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %21
  br label %59

34:                                               ; preds = %21
  %35 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @HCCHAR(i32 %36)
  %38 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %35, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @HCCHAR_CHENA, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %34
  %44 = load i32, i32* @HCCHAR_CHENA, align 4
  %45 = load i32, i32* @HCCHAR_EPDIR, align 4
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* @HCCHAR_CHDIS, align 4
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @HCCHAR(i32 %55)
  %57 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %53, i32 %54, i32 %56)
  br label %58

58:                                               ; preds = %43, %34
  br label %59

59:                                               ; preds = %58, %33
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %17

62:                                               ; preds = %17
  br label %63

63:                                               ; preds = %62, %1
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %110, %63
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %3, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %113

68:                                               ; preds = %64
  %69 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %70 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %69, i32 0, i32 5
  %71 = load %struct.dwc2_host_chan**, %struct.dwc2_host_chan*** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %71, i64 %73
  %75 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %74, align 8
  store %struct.dwc2_host_chan* %75, %struct.dwc2_host_chan** %4, align 8
  %76 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %77 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %76, i32 0, i32 1
  %78 = call i32 @list_empty(i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %68
  br label %110

81:                                               ; preds = %68
  %82 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @HCCHAR(i32 %83)
  %85 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %82, i32 %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @HCCHAR_CHENA, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %81
  %91 = load i32, i32* @HCCHAR_CHDIS, align 4
  %92 = load i32, i32* %5, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %5, align 4
  %94 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @HCCHAR(i32 %96)
  %98 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %94, i32 %95, i32 %97)
  br label %99

99:                                               ; preds = %90, %81
  %100 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %101 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %102 = call i32 @dwc2_hc_cleanup(%struct.dwc2_hsotg* %100, %struct.dwc2_host_chan* %101)
  %103 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %104 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %103, i32 0, i32 1
  %105 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %106 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %105, i32 0, i32 4
  %107 = call i32 @list_add_tail(i32* %104, i32* %106)
  %108 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %109 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %108, i32 0, i32 0
  store i32* null, i32** %109, align 8
  br label %110

110:                                              ; preds = %99, %80
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %64

113:                                              ; preds = %64
  %114 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %115 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %113
  %120 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %121 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %125 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  br label %131

126:                                              ; preds = %113
  %127 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %128 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %127, i32 0, i32 2
  store i64 0, i64* %128, align 8
  %129 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %130 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %129, i32 0, i32 1
  store i64 0, i64* %130, align 8
  br label %131

131:                                              ; preds = %126, %119
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @HCCHAR(i32) #1

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

declare dso_local i32 @dwc2_hc_cleanup(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
