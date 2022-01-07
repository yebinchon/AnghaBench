; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon.c_ssb_chipco_set_clockmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon.c_ssb_chipco_set_clockmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_chipcommon = type { i32, %struct.ssb_device* }
%struct.ssb_device = type { %struct.TYPE_2__, %struct.ssb_bus* }
%struct.TYPE_2__ = type { i32 }
%struct.ssb_bus = type { i32 }

@SSB_CHIPCO_CAP_PMU = common dso_local global i32 0, align 4
@SSB_CHIPCO_CAP_PCTL = common dso_local global i32 0, align 4
@SSB_CHIPCO_SLOWCLKCTL = common dso_local global i32 0, align 4
@SSB_CHIPCO_SLOWCLKCTL_FSLOW = common dso_local global i32 0, align 4
@SSB_GPIO_XTAL = common dso_local global i32 0, align 4
@SSB_CHIPCO_SLOWCLKCTL_IPLL = common dso_local global i32 0, align 4
@SSB_CHIPCO_SYSCLKCTL = common dso_local global i32 0, align 4
@SSB_CHIPCO_SYSCLKCTL_FORCEHT = common dso_local global i32 0, align 4
@SSB_CHIPCO_SLOWCLKCTL_ENXTAL = common dso_local global i32 0, align 4
@SSB_CHIPCO_SLOWCLKCTL_SRC = common dso_local global i32 0, align 4
@SSB_CHIPCO_SLOWCLKCTL_SRC_XTAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssb_chipco_set_clockmode(%struct.ssb_chipcommon* %0, i32 %1) #0 {
  %3 = alloca %struct.ssb_chipcommon*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssb_device*, align 8
  %6 = alloca %struct.ssb_bus*, align 8
  %7 = alloca i32, align 4
  store %struct.ssb_chipcommon* %0, %struct.ssb_chipcommon** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %9 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %8, i32 0, i32 1
  %10 = load %struct.ssb_device*, %struct.ssb_device** %9, align 8
  store %struct.ssb_device* %10, %struct.ssb_device** %5, align 8
  %11 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %12 = icmp ne %struct.ssb_device* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %169

14:                                               ; preds = %2
  %15 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %16 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %15, i32 0, i32 1
  %17 = load %struct.ssb_bus*, %struct.ssb_bus** %16, align 8
  store %struct.ssb_bus* %17, %struct.ssb_bus** %6, align 8
  %18 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %19 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sge i32 %21, 10
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 128
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 130, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %23, %14
  %28 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %29 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @SSB_CHIPCO_CAP_PMU, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %169

35:                                               ; preds = %27
  %36 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %37 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %39, 20
  %41 = zext i1 %40 to i32
  %42 = call i32 @WARN_ON(i32 %41)
  %43 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %44 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %46, 6
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  br label %169

49:                                               ; preds = %35
  %50 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %51 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sge i32 %53, 10
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %169

56:                                               ; preds = %49
  %57 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %58 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @SSB_CHIPCO_CAP_PCTL, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  br label %169

64:                                               ; preds = %56
  %65 = load i32, i32* %4, align 4
  switch i32 %65, label %167 [
    i32 128, label %66
    i32 129, label %77
    i32 130, label %111
  ]

66:                                               ; preds = %64
  %67 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %68 = load i32, i32* @SSB_CHIPCO_SLOWCLKCTL, align 4
  %69 = call i32 @chipco_read32(%struct.ssb_chipcommon* %67, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* @SSB_CHIPCO_SLOWCLKCTL_FSLOW, align 4
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %7, align 4
  %73 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %74 = load i32, i32* @SSB_CHIPCO_SLOWCLKCTL, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @chipco_write32(%struct.ssb_chipcommon* %73, i32 %74, i32 %75)
  br label %169

77:                                               ; preds = %64
  %78 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %79 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %81, 10
  br i1 %82, label %83, label %101

83:                                               ; preds = %77
  %84 = load %struct.ssb_bus*, %struct.ssb_bus** %6, align 8
  %85 = load i32, i32* @SSB_GPIO_XTAL, align 4
  %86 = call i32 @ssb_pci_xtal(%struct.ssb_bus* %84, i32 %85, i32 1)
  %87 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %88 = load i32, i32* @SSB_CHIPCO_SLOWCLKCTL, align 4
  %89 = call i32 @chipco_read32(%struct.ssb_chipcommon* %87, i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* @SSB_CHIPCO_SLOWCLKCTL_FSLOW, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %7, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* @SSB_CHIPCO_SLOWCLKCTL_IPLL, align 4
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %7, align 4
  %97 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %98 = load i32, i32* @SSB_CHIPCO_SLOWCLKCTL, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @chipco_write32(%struct.ssb_chipcommon* %97, i32 %98, i32 %99)
  br label %110

101:                                              ; preds = %77
  %102 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %103 = load i32, i32* @SSB_CHIPCO_SYSCLKCTL, align 4
  %104 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %105 = load i32, i32* @SSB_CHIPCO_SYSCLKCTL, align 4
  %106 = call i32 @chipco_read32(%struct.ssb_chipcommon* %104, i32 %105)
  %107 = load i32, i32* @SSB_CHIPCO_SYSCLKCTL_FORCEHT, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @chipco_write32(%struct.ssb_chipcommon* %102, i32 %103, i32 %108)
  br label %110

110:                                              ; preds = %101, %83
  br label %169

111:                                              ; preds = %64
  %112 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %113 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %115, 10
  br i1 %116, label %117, label %156

117:                                              ; preds = %111
  %118 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %119 = load i32, i32* @SSB_CHIPCO_SLOWCLKCTL, align 4
  %120 = call i32 @chipco_read32(%struct.ssb_chipcommon* %118, i32 %119)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* @SSB_CHIPCO_SLOWCLKCTL_FSLOW, align 4
  %122 = xor i32 %121, -1
  %123 = load i32, i32* %7, align 4
  %124 = and i32 %123, %122
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* @SSB_CHIPCO_SLOWCLKCTL_IPLL, align 4
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %7, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* @SSB_CHIPCO_SLOWCLKCTL_ENXTAL, align 4
  %130 = xor i32 %129, -1
  %131 = load i32, i32* %7, align 4
  %132 = and i32 %131, %130
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @SSB_CHIPCO_SLOWCLKCTL_SRC, align 4
  %135 = and i32 %133, %134
  %136 = load i32, i32* @SSB_CHIPCO_SLOWCLKCTL_SRC_XTAL, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %117
  %139 = load i32, i32* @SSB_CHIPCO_SLOWCLKCTL_ENXTAL, align 4
  %140 = load i32, i32* %7, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %138, %117
  %143 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %144 = load i32, i32* @SSB_CHIPCO_SLOWCLKCTL, align 4
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @chipco_write32(%struct.ssb_chipcommon* %143, i32 %144, i32 %145)
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @SSB_CHIPCO_SLOWCLKCTL_ENXTAL, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %142
  %152 = load %struct.ssb_bus*, %struct.ssb_bus** %6, align 8
  %153 = load i32, i32* @SSB_GPIO_XTAL, align 4
  %154 = call i32 @ssb_pci_xtal(%struct.ssb_bus* %152, i32 %153, i32 0)
  br label %155

155:                                              ; preds = %151, %142
  br label %166

156:                                              ; preds = %111
  %157 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %158 = load i32, i32* @SSB_CHIPCO_SYSCLKCTL, align 4
  %159 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %160 = load i32, i32* @SSB_CHIPCO_SYSCLKCTL, align 4
  %161 = call i32 @chipco_read32(%struct.ssb_chipcommon* %159, i32 %160)
  %162 = load i32, i32* @SSB_CHIPCO_SYSCLKCTL_FORCEHT, align 4
  %163 = xor i32 %162, -1
  %164 = and i32 %161, %163
  %165 = call i32 @chipco_write32(%struct.ssb_chipcommon* %157, i32 %158, i32 %164)
  br label %166

166:                                              ; preds = %156, %155
  br label %169

167:                                              ; preds = %64
  %168 = call i32 @WARN_ON(i32 1)
  br label %169

169:                                              ; preds = %13, %34, %48, %55, %63, %167, %166, %110, %66
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @chipco_read32(%struct.ssb_chipcommon*, i32) #1

declare dso_local i32 @chipco_write32(%struct.ssb_chipcommon*, i32, i32) #1

declare dso_local i32 @ssb_pci_xtal(%struct.ssb_bus*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
