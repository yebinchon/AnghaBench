; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_pcicore.c_ssb_pcicore_pcie_setup_workarounds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_pcicore.c_ssb_pcicore_pcie_setup_workarounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_pcicore = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_pcicore*)* @ssb_pcicore_pcie_setup_workarounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssb_pcicore_pcie_setup_workarounds(%struct.ssb_pcicore* %0) #0 {
  %2 = alloca %struct.ssb_pcicore*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ssb_pcicore* %0, %struct.ssb_pcicore** %2, align 8
  %6 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %2, align 8
  %7 = getelementptr inbounds %struct.ssb_pcicore, %struct.ssb_pcicore* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %25

17:                                               ; preds = %14, %1
  %18 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %2, align 8
  %19 = call i32 @ssb_pcie_read(%struct.ssb_pcicore* %18, i32 4)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, 8
  store i32 %21, i32* %3, align 4
  %22 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @ssb_pcie_write(%struct.ssb_pcicore* %22, i32 4, i32 %23)
  br label %25

25:                                               ; preds = %17, %14
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %2, align 8
  %30 = call i32 @ssb_pcie_read(%struct.ssb_pcicore* %29, i32 256)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, 64
  store i32 %32, i32* %3, align 4
  %33 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @ssb_pcie_write(%struct.ssb_pcicore* %33, i32 256, i32 %34)
  br label %36

36:                                               ; preds = %28, %25
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  store i32 31, i32* %5, align 4
  %40 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %2, align 8
  %41 = call i32 @ssb_pcie_mdio_write(%struct.ssb_pcicore* %40, i32 31, i32 2, i32 33064)
  %42 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %2, align 8
  %43 = call i32 @ssb_pcie_mdio_write(%struct.ssb_pcicore* %42, i32 31, i32 6, i32 256)
  %44 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %2, align 8
  %45 = call i32 @ssb_pcie_mdio_write(%struct.ssb_pcicore* %44, i32 31, i32 7, i32 5222)
  br label %64

46:                                               ; preds = %36
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %50, 4
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %53, 5
  br i1 %54, label %55, label %58

55:                                               ; preds = %52, %49, %46
  %56 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %2, align 8
  %57 = call i32 @ssb_pcicore_serdes_workaround(%struct.ssb_pcicore* %56)
  br label %63

58:                                               ; preds = %52
  %59 = load i32, i32* %4, align 4
  %60 = icmp eq i32 %59, 7
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %62

62:                                               ; preds = %61, %58
  br label %63

63:                                               ; preds = %62, %55
  br label %64

64:                                               ; preds = %63, %39
  %65 = load i32, i32* %4, align 4
  %66 = icmp sge i32 %65, 6
  br i1 %66, label %67, label %81

67:                                               ; preds = %64
  %68 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %2, align 8
  %69 = call i32 @SSB_PCICORE_SPROM(i32 5)
  %70 = call i32 @pcicore_read16(%struct.ssb_pcicore* %68, i32 %69)
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = and i32 %71, 32768
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %67
  %75 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %2, align 8
  %76 = call i32 @SSB_PCICORE_SPROM(i32 5)
  %77 = load i32, i32* %3, align 4
  %78 = or i32 %77, 32768
  %79 = call i32 @pcicore_write16(%struct.ssb_pcicore* %75, i32 %76, i32 %78)
  br label %80

80:                                               ; preds = %74, %67
  br label %81

81:                                               ; preds = %80, %64
  ret void
}

declare dso_local i32 @ssb_pcie_read(%struct.ssb_pcicore*, i32) #1

declare dso_local i32 @ssb_pcie_write(%struct.ssb_pcicore*, i32, i32) #1

declare dso_local i32 @ssb_pcie_mdio_write(%struct.ssb_pcicore*, i32, i32, i32) #1

declare dso_local i32 @ssb_pcicore_serdes_workaround(%struct.ssb_pcicore*) #1

declare dso_local i32 @pcicore_read16(%struct.ssb_pcicore*, i32) #1

declare dso_local i32 @SSB_PCICORE_SPROM(i32) #1

declare dso_local i32 @pcicore_write16(%struct.ssb_pcicore*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
