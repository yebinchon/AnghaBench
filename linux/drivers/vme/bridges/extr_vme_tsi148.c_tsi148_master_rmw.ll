; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_master_rmw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_master_rmw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_master_resource = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tsi148_driver* }
%struct.tsi148_driver = type { i32, i64 }

@TSI148_LCSR_OT = common dso_local global i64* null, align 8
@TSI148_LCSR_OFFSET_OTSAU = common dso_local global i64 0, align 8
@TSI148_LCSR_OFFSET_OTSAL = common dso_local global i64 0, align 8
@TSI148_LCSR_RMWEN = common dso_local global i64 0, align 8
@TSI148_LCSR_RMWC = common dso_local global i64 0, align 8
@TSI148_LCSR_RMWS = common dso_local global i64 0, align 8
@TSI148_LCSR_RMWAU = common dso_local global i64 0, align 8
@TSI148_LCSR_RMWAL = common dso_local global i64 0, align 8
@TSI148_LCSR_VMCTRL = common dso_local global i64 0, align 8
@TSI148_LCSR_VMCTRL_RMWEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_master_resource*, i32, i32, i32, i64)* @tsi148_master_rmw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi148_master_rmw(%struct.vme_master_resource* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.vme_master_resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.tsi148_driver*, align 8
  store %struct.vme_master_resource* %0, %struct.vme_master_resource** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %18 = load %struct.vme_master_resource*, %struct.vme_master_resource** %6, align 8
  %19 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.tsi148_driver*, %struct.tsi148_driver** %21, align 8
  store %struct.tsi148_driver* %22, %struct.tsi148_driver** %17, align 8
  %23 = load %struct.vme_master_resource*, %struct.vme_master_resource** %6, align 8
  %24 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %16, align 4
  %26 = load %struct.tsi148_driver*, %struct.tsi148_driver** %17, align 8
  %27 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.vme_master_resource*, %struct.vme_master_resource** %6, align 8
  %30 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %29, i32 0, i32 1
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.tsi148_driver*, %struct.tsi148_driver** %17, align 8
  %33 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** @TSI148_LCSR_OT, align 8
  %36 = load i32, i32* %16, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %34, %39
  %41 = load i64, i64* @TSI148_LCSR_OFFSET_OTSAU, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @ioread32be(i64 %42)
  store i32 %43, i32* %12, align 4
  %44 = load %struct.tsi148_driver*, %struct.tsi148_driver** %17, align 8
  %45 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** @TSI148_LCSR_OT, align 8
  %48 = load i32, i32* %16, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %46, %51
  %53 = load i64, i64* @TSI148_LCSR_OFFSET_OTSAL, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @ioread32be(i64 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @reg_join(i32 %56, i32 %57, i64* %11)
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %10, align 8
  %61 = add i64 %59, %60
  %62 = call i32 @reg_split(i64 %61, i32* %12, i32* %13)
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.tsi148_driver*, %struct.tsi148_driver** %17, align 8
  %65 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @TSI148_LCSR_RMWEN, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @iowrite32be(i32 %63, i64 %68)
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.tsi148_driver*, %struct.tsi148_driver** %17, align 8
  %72 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @TSI148_LCSR_RMWC, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @iowrite32be(i32 %70, i64 %75)
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.tsi148_driver*, %struct.tsi148_driver** %17, align 8
  %79 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @TSI148_LCSR_RMWS, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @iowrite32be(i32 %77, i64 %82)
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.tsi148_driver*, %struct.tsi148_driver** %17, align 8
  %86 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @TSI148_LCSR_RMWAU, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @iowrite32be(i32 %84, i64 %89)
  %91 = load i32, i32* %13, align 4
  %92 = load %struct.tsi148_driver*, %struct.tsi148_driver** %17, align 8
  %93 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @TSI148_LCSR_RMWAL, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @iowrite32be(i32 %91, i64 %96)
  %98 = load %struct.tsi148_driver*, %struct.tsi148_driver** %17, align 8
  %99 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @TSI148_LCSR_VMCTRL, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @ioread32be(i64 %102)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* @TSI148_LCSR_VMCTRL_RMWEN, align 4
  %105 = load i32, i32* %14, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load %struct.tsi148_driver*, %struct.tsi148_driver** %17, align 8
  %109 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @TSI148_LCSR_VMCTRL, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @iowrite32be(i32 %107, i64 %112)
  %114 = load %struct.vme_master_resource*, %struct.vme_master_resource** %6, align 8
  %115 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %10, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @ioread32be(i64 %118)
  store i32 %119, i32* %15, align 4
  %120 = load %struct.tsi148_driver*, %struct.tsi148_driver** %17, align 8
  %121 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @TSI148_LCSR_VMCTRL, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @ioread32be(i64 %124)
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* @TSI148_LCSR_VMCTRL_RMWEN, align 4
  %127 = xor i32 %126, -1
  %128 = load i32, i32* %14, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %14, align 4
  %131 = load %struct.tsi148_driver*, %struct.tsi148_driver** %17, align 8
  %132 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @TSI148_LCSR_VMCTRL, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @iowrite32be(i32 %130, i64 %135)
  %137 = load %struct.vme_master_resource*, %struct.vme_master_resource** %6, align 8
  %138 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %137, i32 0, i32 1
  %139 = call i32 @spin_unlock(i32* %138)
  %140 = load %struct.tsi148_driver*, %struct.tsi148_driver** %17, align 8
  %141 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %140, i32 0, i32 0
  %142 = call i32 @mutex_unlock(i32* %141)
  %143 = load i32, i32* %15, align 4
  ret i32 %143
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ioread32be(i64) #1

declare dso_local i32 @reg_join(i32, i32, i64*) #1

declare dso_local i32 @reg_split(i64, i32*, i32*) #1

declare dso_local i32 @iowrite32be(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
