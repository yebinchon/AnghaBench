; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_pcicore.c_ssb_pcie_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_pcicore.c_ssb_pcie_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_pcicore = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssb_pcicore*, i64, i64)* @ssb_pcie_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssb_pcie_mdio_read(%struct.ssb_pcicore* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ssb_pcicore*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ssb_pcicore* %0, %struct.ssb_pcicore** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 296, i32* %7, align 4
  store i32 300, i32* %8, align 4
  store i32 10, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 128, i32* %11, align 4
  %13 = load i32, i32* %11, align 4
  %14 = or i32 %13, 2
  store i32 %14, i32* %11, align 4
  %15 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %4, align 8
  %16 = load i32, i32* %11, align 4
  %17 = call i32 @pcicore_write32(%struct.ssb_pcicore* %15, i32 296, i32 %16)
  %18 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %4, align 8
  %19 = getelementptr inbounds %struct.ssb_pcicore, %struct.ssb_pcicore* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %23, 10
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  store i32 200, i32* %9, align 4
  %26 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @ssb_pcie_mdio_set_phy(%struct.ssb_pcicore* %26, i64 %27)
  br label %29

29:                                               ; preds = %25, %3
  store i32 1073741824, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = or i32 %30, 536870912
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = or i32 %32, 131072
  store i32 %33, i32* %11, align 4
  %34 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %4, align 8
  %35 = getelementptr inbounds %struct.ssb_pcicore, %struct.ssb_pcicore* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 10
  br i1 %40, label %41, label %47

41:                                               ; preds = %29
  %42 = load i64, i64* %5, align 8
  %43 = trunc i64 %42 to i32
  %44 = shl i32 %43, 22
  %45 = load i32, i32* %11, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %41, %29
  %48 = load i64, i64* %6, align 8
  %49 = trunc i64 %48 to i32
  %50 = shl i32 %49, 18
  %51 = load i32, i32* %11, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %11, align 4
  %53 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %4, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @pcicore_write32(%struct.ssb_pcicore* %53, i32 300, i32 %54)
  %56 = call i32 @udelay(i32 10)
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %75, %47
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %57
  %62 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %4, align 8
  %63 = call i8* @pcicore_read32(%struct.ssb_pcicore* %62, i32 296)
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = and i32 %65, 256
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = call i32 @udelay(i32 10)
  %70 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %4, align 8
  %71 = call i8* @pcicore_read32(%struct.ssb_pcicore* %70, i32 300)
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* %10, align 4
  br label %78

73:                                               ; preds = %61
  %74 = call i32 @msleep(i32 1)
  br label %75

75:                                               ; preds = %73
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  br label %57

78:                                               ; preds = %68, %57
  %79 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %4, align 8
  %80 = call i32 @pcicore_write32(%struct.ssb_pcicore* %79, i32 296, i32 0)
  %81 = load i32, i32* %10, align 4
  ret i32 %81
}

declare dso_local i32 @pcicore_write32(%struct.ssb_pcicore*, i32, i32) #1

declare dso_local i32 @ssb_pcie_mdio_set_phy(%struct.ssb_pcicore*, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i8* @pcicore_read32(%struct.ssb_pcicore*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
