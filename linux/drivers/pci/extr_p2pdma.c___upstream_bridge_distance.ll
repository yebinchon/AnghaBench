; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_p2pdma.c___upstream_bridge_distance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_p2pdma.c___upstream_bridge_distance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.seq_buf = type { i32 }

@PCI_P2PDMA_MAP_THRU_HOST_BRIDGE = common dso_local global i32 0, align 4
@PCI_P2PDMA_MAP_BUS_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_dev*, i32*, i32*, %struct.seq_buf*)* @__upstream_bridge_distance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__upstream_bridge_distance(%struct.pci_dev* %0, %struct.pci_dev* %1, i32* %2, i32* %3, %struct.seq_buf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.seq_buf*, align 8
  %12 = alloca %struct.pci_dev*, align 8
  %13 = alloca %struct.pci_dev*, align 8
  %14 = alloca %struct.pci_dev*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.seq_buf* %4, %struct.seq_buf** %11, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %12, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %19, %struct.pci_dev** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %20 = load i32*, i32** %10, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32*, i32** %10, align 8
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %22, %5
  br label %25

25:                                               ; preds = %53, %24
  %26 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %27 = icmp ne %struct.pci_dev* %26, null
  br i1 %27, label %28, label %58

28:                                               ; preds = %25
  store i32 0, i32* %16, align 4
  %29 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %30 = call i64 @pci_bridge_has_acs_redir(%struct.pci_dev* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.seq_buf*, %struct.seq_buf** %11, align 8
  %34 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %35 = call i32 @seq_buf_print_bus_devfn(%struct.seq_buf* %33, %struct.pci_dev* %34)
  %36 = load i32, i32* %17, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %17, align 4
  br label %38

38:                                               ; preds = %32, %28
  %39 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %39, %struct.pci_dev** %14, align 8
  br label %40

40:                                               ; preds = %48, %38
  %41 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %42 = icmp ne %struct.pci_dev* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %45 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %46 = icmp eq %struct.pci_dev* %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %68

48:                                               ; preds = %43
  %49 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %50 = call %struct.pci_dev* @pci_upstream_bridge(%struct.pci_dev* %49)
  store %struct.pci_dev* %50, %struct.pci_dev** %14, align 8
  %51 = load i32, i32* %16, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %16, align 4
  br label %40

53:                                               ; preds = %40
  %54 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %55 = call %struct.pci_dev* @pci_upstream_bridge(%struct.pci_dev* %54)
  store %struct.pci_dev* %55, %struct.pci_dev** %12, align 8
  %56 = load i32, i32* %15, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %15, align 4
  br label %25

58:                                               ; preds = %25
  %59 = load i32*, i32** %9, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %16, align 4
  %64 = add nsw i32 %62, %63
  %65 = load i32*, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i32, i32* @PCI_P2PDMA_MAP_THRU_HOST_BRIDGE, align 4
  store i32 %67, i32* %6, align 4
  br label %111

68:                                               ; preds = %47
  %69 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %69, %struct.pci_dev** %14, align 8
  br label %70

70:                                               ; preds = %88, %68
  %71 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %72 = icmp ne %struct.pci_dev* %71, null
  br i1 %72, label %73, label %91

73:                                               ; preds = %70
  %74 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %75 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %76 = icmp eq %struct.pci_dev* %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %91

78:                                               ; preds = %73
  %79 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %80 = call i64 @pci_bridge_has_acs_redir(%struct.pci_dev* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load %struct.seq_buf*, %struct.seq_buf** %11, align 8
  %84 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %85 = call i32 @seq_buf_print_bus_devfn(%struct.seq_buf* %83, %struct.pci_dev* %84)
  %86 = load i32, i32* %17, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %17, align 4
  br label %88

88:                                               ; preds = %82, %78
  %89 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %90 = call %struct.pci_dev* @pci_upstream_bridge(%struct.pci_dev* %89)
  store %struct.pci_dev* %90, %struct.pci_dev** %14, align 8
  br label %70

91:                                               ; preds = %77, %70
  %92 = load i32*, i32** %9, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %16, align 4
  %97 = add nsw i32 %95, %96
  %98 = load i32*, i32** %9, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %94, %91
  %100 = load i32, i32* %17, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = load i32*, i32** %10, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i32*, i32** %10, align 8
  store i32 1, i32* %106, align 4
  br label %107

107:                                              ; preds = %105, %102
  %108 = load i32, i32* @PCI_P2PDMA_MAP_THRU_HOST_BRIDGE, align 4
  store i32 %108, i32* %6, align 4
  br label %111

109:                                              ; preds = %99
  %110 = load i32, i32* @PCI_P2PDMA_MAP_BUS_ADDR, align 4
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %109, %107, %66
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local i64 @pci_bridge_has_acs_redir(%struct.pci_dev*) #1

declare dso_local i32 @seq_buf_print_bus_devfn(%struct.seq_buf*, %struct.pci_dev*) #1

declare dso_local %struct.pci_dev* @pci_upstream_bridge(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
