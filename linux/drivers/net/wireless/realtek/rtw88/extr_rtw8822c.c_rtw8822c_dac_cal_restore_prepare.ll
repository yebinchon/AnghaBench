; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_cal_restore_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_cal_restore_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw8822c_dac_cal_restore_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_dac_cal_restore_prepare(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %3 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %4 = call i32 @rtw_write32(%struct.rtw_dev* %3, i32 2484, i32 -614016256)
  %5 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %6 = call i32 @BIT(i32 27)
  %7 = call i32 @rtw_write32_mask(%struct.rtw_dev* %5, i32 6320, i32 %6, i32 0)
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %9 = call i32 @BIT(i32 27)
  %10 = call i32 @rtw_write32_mask(%struct.rtw_dev* %8, i32 6348, i32 %9, i32 0)
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %12 = call i32 @BIT(i32 27)
  %13 = call i32 @rtw_write32_mask(%struct.rtw_dev* %11, i32 16816, i32 %12, i32 0)
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %15 = call i32 @BIT(i32 27)
  %16 = call i32 @rtw_write32_mask(%struct.rtw_dev* %14, i32 16844, i32 %15, i32 0)
  %17 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %18 = call i32 @BIT(i32 30)
  %19 = call i32 @rtw_write32_mask(%struct.rtw_dev* %17, i32 6192, i32 %18, i32 0)
  %20 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %21 = call i32 @rtw_write32_mask(%struct.rtw_dev* %20, i32 6240, i32 -67108864, i32 60)
  %22 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %23 = call i32 @BIT(i32 0)
  %24 = call i32 @rtw_write32_mask(%struct.rtw_dev* %22, i32 6324, i32 %23, i32 1)
  %25 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %26 = call i32 @BIT(i32 0)
  %27 = call i32 @rtw_write32_mask(%struct.rtw_dev* %25, i32 6352, i32 %26, i32 1)
  %28 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %29 = call i32 @BIT(i32 30)
  %30 = call i32 @rtw_write32_mask(%struct.rtw_dev* %28, i32 16688, i32 %29, i32 0)
  %31 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %32 = call i32 @rtw_write32_mask(%struct.rtw_dev* %31, i32 16736, i32 -67108864, i32 60)
  %33 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %34 = call i32 @BIT(i32 0)
  %35 = call i32 @rtw_write32_mask(%struct.rtw_dev* %33, i32 16820, i32 %34, i32 1)
  %36 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %37 = call i32 @BIT(i32 0)
  %38 = call i32 @rtw_write32_mask(%struct.rtw_dev* %36, i32 16848, i32 %37, i32 1)
  %39 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %40 = call i32 @rtw_write32_mask(%struct.rtw_dev* %39, i32 6320, i32 3840, i32 0)
  %41 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %42 = call i32 @BIT(i32 14)
  %43 = call i32 @rtw_write32_mask(%struct.rtw_dev* %41, i32 6336, i32 %42, i32 0)
  %44 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %45 = call i32 @rtw_write32_mask(%struct.rtw_dev* %44, i32 6348, i32 3840, i32 0)
  %46 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %47 = call i32 @BIT(i32 14)
  %48 = call i32 @rtw_write32_mask(%struct.rtw_dev* %46, i32 6364, i32 %47, i32 0)
  %49 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %50 = call i32 @BIT(i32 0)
  %51 = call i32 @rtw_write32_mask(%struct.rtw_dev* %49, i32 6320, i32 %50, i32 0)
  %52 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %53 = call i32 @BIT(i32 0)
  %54 = call i32 @rtw_write32_mask(%struct.rtw_dev* %52, i32 6348, i32 %53, i32 0)
  %55 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %56 = call i32 @BIT(i32 0)
  %57 = call i32 @rtw_write32_mask(%struct.rtw_dev* %55, i32 6320, i32 %56, i32 1)
  %58 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %59 = call i32 @BIT(i32 0)
  %60 = call i32 @rtw_write32_mask(%struct.rtw_dev* %58, i32 6348, i32 %59, i32 1)
  %61 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %62 = call i32 @rtw8822c_dac_cal_restore_dck(%struct.rtw_dev* %61)
  %63 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %64 = call i32 @rtw_write32_mask(%struct.rtw_dev* %63, i32 6336, i32 229376, i32 7)
  %65 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %66 = call i32 @rtw_write32_mask(%struct.rtw_dev* %65, i32 6364, i32 229376, i32 7)
  %67 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %68 = call i32 @rtw_write32_mask(%struct.rtw_dev* %67, i32 16832, i32 229376, i32 7)
  %69 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %70 = call i32 @rtw_write32_mask(%struct.rtw_dev* %69, i32 16860, i32 229376, i32 7)
  %71 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %72 = call i32 @BIT(i32 26)
  %73 = call i32 @BIT(i32 25)
  %74 = or i32 %72, %73
  %75 = call i32 @rtw_write32_mask(%struct.rtw_dev* %71, i32 6328, i32 %74, i32 1)
  %76 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %77 = call i32 @BIT(i32 26)
  %78 = call i32 @BIT(i32 25)
  %79 = or i32 %77, %78
  %80 = call i32 @rtw_write32_mask(%struct.rtw_dev* %76, i32 6356, i32 %79, i32 1)
  %81 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %82 = call i32 @rtw_write32_mask(%struct.rtw_dev* %81, i32 16816, i32 3840, i32 0)
  %83 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %84 = call i32 @BIT(i32 14)
  %85 = call i32 @rtw_write32_mask(%struct.rtw_dev* %83, i32 16832, i32 %84, i32 0)
  %86 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %87 = call i32 @rtw_write32_mask(%struct.rtw_dev* %86, i32 16844, i32 3840, i32 0)
  %88 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %89 = call i32 @BIT(i32 14)
  %90 = call i32 @rtw_write32_mask(%struct.rtw_dev* %88, i32 16860, i32 %89, i32 0)
  %91 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %92 = call i32 @BIT(i32 0)
  %93 = call i32 @rtw_write32_mask(%struct.rtw_dev* %91, i32 16816, i32 %92, i32 0)
  %94 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %95 = call i32 @BIT(i32 0)
  %96 = call i32 @rtw_write32_mask(%struct.rtw_dev* %94, i32 16844, i32 %95, i32 0)
  %97 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %98 = call i32 @BIT(i32 0)
  %99 = call i32 @rtw_write32_mask(%struct.rtw_dev* %97, i32 16816, i32 %98, i32 1)
  %100 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %101 = call i32 @BIT(i32 0)
  %102 = call i32 @rtw_write32_mask(%struct.rtw_dev* %100, i32 16844, i32 %101, i32 1)
  %103 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %104 = call i32 @BIT(i32 26)
  %105 = call i32 @BIT(i32 25)
  %106 = or i32 %104, %105
  %107 = call i32 @rtw_write32_mask(%struct.rtw_dev* %103, i32 16824, i32 %106, i32 1)
  %108 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %109 = call i32 @BIT(i32 26)
  %110 = call i32 @BIT(i32 25)
  %111 = or i32 %109, %110
  %112 = call i32 @rtw_write32_mask(%struct.rtw_dev* %108, i32 16852, i32 %111, i32 1)
  ret void
}

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtw8822c_dac_cal_restore_dck(%struct.rtw_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
