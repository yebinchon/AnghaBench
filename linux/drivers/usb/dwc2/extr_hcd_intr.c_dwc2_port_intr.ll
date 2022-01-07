; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_port_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_port_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }

@.str = private unnamed_addr constant [20 x i8] c"--Port Interrupt--\0A\00", align 1
@HPRT0 = common dso_local global i32 0, align 4
@HPRT0_ENA = common dso_local global i32 0, align 4
@HPRT0_CONNDET = common dso_local global i32 0, align 4
@HPRT0_ENACHG = common dso_local global i32 0, align 4
@HPRT0_OVRCURRCHG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"--Port Interrupt HPRT0=0x%08x Port Connect Detected--\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"  --Port Interrupt HPRT0=0x%08x Port Enable Changed (now %d)--\0A\00", align 1
@HCFG = common dso_local global i32 0, align 4
@HCFG_DESCDMA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"  --Port Interrupt HPRT0=0x%08x Port Overcurrent Changed--\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*)* @dwc2_port_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_port_intr(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca %struct.dwc2_hsotg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %2, align 8
  %6 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %7 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %11 = load i32, i32* @HPRT0, align 4
  %12 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @HPRT0_ENA, align 4
  %15 = load i32, i32* @HPRT0_CONNDET, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @HPRT0_ENACHG, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @HPRT0_OVRCURRCHG, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @HPRT0_CONNDET, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %1
  %29 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @HPRT0_CONNDET, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @HPRT0, align 4
  %34 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %29, i32 %32, i32 %33)
  %35 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %36 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %37, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %41 = call i32 @dwc2_hcd_connect(%struct.dwc2_hsotg* %40)
  br label %42

42:                                               ; preds = %28, %1
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @HPRT0_ENACHG, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %105

47:                                               ; preds = %42
  %48 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @HPRT0_ENACHG, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @HPRT0, align 4
  %53 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %48, i32 %51, i32 %52)
  %54 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %55 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @HPRT0_ENA, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %56, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %64)
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @HPRT0_ENA, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %47
  %71 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %72 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @dwc2_hprt0_enable(%struct.dwc2_hsotg* %73, i32 %74, i32* %4)
  br label %104

76:                                               ; preds = %47
  %77 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %78 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 4
  %81 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %82 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %76
  %87 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %88 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  %90 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %91 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  %92 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %93 = load i32, i32* @HCFG, align 4
  %94 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %92, i32 %93)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* @HCFG_DESCDMA, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %5, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %5, align 4
  %99 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @HCFG, align 4
  %102 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %86, %76
  br label %104

104:                                              ; preds = %103, %70
  br label %105

105:                                              ; preds = %104, %42
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* @HPRT0_OVRCURRCHG, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %126

110:                                              ; preds = %105
  %111 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @HPRT0_OVRCURRCHG, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @HPRT0, align 4
  %116 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %111, i32 %114, i32 %115)
  %117 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %118 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %3, align 4
  %121 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %119, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %120)
  %122 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %123 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  store i32 1, i32* %125, align 4
  br label %126

126:                                              ; preds = %110, %105
  ret void
}

declare dso_local i32 @dev_vdbg(i32, i8*, ...) #1

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

declare dso_local i32 @dwc2_hcd_connect(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_hprt0_enable(%struct.dwc2_hsotg*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
