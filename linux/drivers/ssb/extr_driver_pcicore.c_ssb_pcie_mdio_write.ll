; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_pcicore.c_ssb_pcie_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_pcicore.c_ssb_pcie_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_pcicore = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_pcicore*, i64, i64, i32)* @ssb_pcie_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssb_pcie_mdio_write(%struct.ssb_pcicore* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.ssb_pcicore*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ssb_pcicore* %0, %struct.ssb_pcicore** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 296, i32* %9, align 4
  store i32 300, i32* %10, align 4
  store i32 10, i32* %11, align 4
  store i32 128, i32* %12, align 4
  %14 = load i32, i32* %12, align 4
  %15 = or i32 %14, 2
  store i32 %15, i32* %12, align 4
  %16 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %5, align 8
  %17 = load i32, i32* %12, align 4
  %18 = call i32 @pcicore_write32(%struct.ssb_pcicore* %16, i32 296, i32 %17)
  %19 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %5, align 8
  %20 = getelementptr inbounds %struct.ssb_pcicore, %struct.ssb_pcicore* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %24, 10
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  store i32 200, i32* %11, align 4
  %27 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @ssb_pcie_mdio_set_phy(%struct.ssb_pcicore* %27, i64 %28)
  br label %30

30:                                               ; preds = %26, %4
  store i32 1073741824, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = or i32 %31, 268435456
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = or i32 %33, 131072
  store i32 %34, i32* %12, align 4
  %35 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %5, align 8
  %36 = getelementptr inbounds %struct.ssb_pcicore, %struct.ssb_pcicore* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %40, 10
  br i1 %41, label %42, label %48

42:                                               ; preds = %30
  %43 = load i64, i64* %6, align 8
  %44 = trunc i64 %43 to i32
  %45 = shl i32 %44, 22
  %46 = load i32, i32* %12, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %42, %30
  %49 = load i64, i64* %7, align 8
  %50 = trunc i64 %49 to i32
  %51 = shl i32 %50, 18
  %52 = load i32, i32* %12, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %12, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %12, align 4
  %57 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %5, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @pcicore_write32(%struct.ssb_pcicore* %57, i32 300, i32 %58)
  %60 = call i32 @udelay(i32 10)
  store i32 0, i32* %13, align 4
  br label %61

61:                                               ; preds = %74, %48
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %5, align 8
  %67 = call i32 @pcicore_read32(%struct.ssb_pcicore* %66, i32 296)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = and i32 %68, 256
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %77

72:                                               ; preds = %65
  %73 = call i32 @msleep(i32 1)
  br label %74

74:                                               ; preds = %72
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %13, align 4
  br label %61

77:                                               ; preds = %71, %61
  %78 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %5, align 8
  %79 = call i32 @pcicore_write32(%struct.ssb_pcicore* %78, i32 296, i32 0)
  ret void
}

declare dso_local i32 @pcicore_write32(%struct.ssb_pcicore*, i32, i32) #1

declare dso_local i32 @ssb_pcie_mdio_set_phy(%struct.ssb_pcicore*, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pcicore_read32(%struct.ssb_pcicore*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
