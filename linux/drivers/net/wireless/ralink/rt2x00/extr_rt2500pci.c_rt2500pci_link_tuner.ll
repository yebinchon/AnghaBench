; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500pci.c_rt2500pci_link_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500pci.c_rt2500pci_link_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i64 }
%struct.link_qual = type { i32, i32, i32, i32 }

@RT2560_VERSION_D = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.link_qual*, i32)* @rt2500pci_link_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2500pci_link_tuner(%struct.rt2x00_dev* %0, %struct.link_qual* %1, i32 %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.link_qual*, align 8
  %6 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.link_qual* %1, %struct.link_qual** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %8 = call i64 @rt2x00_rev(%struct.rt2x00_dev* %7)
  %9 = load i64, i64* @RT2560_VERSION_D, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %13 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 20
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %120

20:                                               ; preds = %16, %11, %3
  %21 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %22 = call i64 @rt2x00_rev(%struct.rt2x00_dev* %21)
  %23 = load i64, i64* @RT2560_VERSION_D, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %27 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %20
  br label %83

31:                                               ; preds = %25
  %32 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %33 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %34, -80
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = icmp sgt i32 %37, 20
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %41 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sge i32 %42, 65
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %46 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %47 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %48 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @rt2500pci_set_vgc(%struct.rt2x00_dev* %45, %struct.link_qual* %46, i32 %49)
  br label %51

51:                                               ; preds = %44, %39
  br label %120

52:                                               ; preds = %36, %31
  %53 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %54 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sge i32 %55, -58
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %59 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %60 = call i32 @rt2500pci_set_vgc(%struct.rt2x00_dev* %58, %struct.link_qual* %59, i32 80)
  br label %120

61:                                               ; preds = %52
  %62 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %63 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp sge i32 %64, -74
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %68 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %69 = call i32 @rt2500pci_set_vgc(%struct.rt2x00_dev* %67, %struct.link_qual* %68, i32 65)
  br label %120

70:                                               ; preds = %61
  %71 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %72 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp sge i32 %73, 65
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %77 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %78 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %79 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @rt2500pci_set_vgc(%struct.rt2x00_dev* %76, %struct.link_qual* %77, i32 %80)
  br label %120

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82, %30
  %84 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %85 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = icmp sgt i32 %86, 512
  br i1 %87, label %88, label %101

88:                                               ; preds = %83
  %89 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %90 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %91, 64
  br i1 %92, label %93, label %101

93:                                               ; preds = %88
  %94 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %95 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %96 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %97 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = call i32 @rt2500pci_set_vgc(%struct.rt2x00_dev* %94, %struct.link_qual* %95, i32 %99)
  br label %120

101:                                              ; preds = %88, %83
  %102 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %103 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %104, 100
  br i1 %105, label %106, label %119

106:                                              ; preds = %101
  %107 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %108 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp sgt i32 %109, 50
  br i1 %110, label %111, label %119

111:                                              ; preds = %106
  %112 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %113 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %114 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %115 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %115, align 4
  %118 = call i32 @rt2500pci_set_vgc(%struct.rt2x00_dev* %112, %struct.link_qual* %113, i32 %117)
  br label %119

119:                                              ; preds = %111, %106, %101
  br label %120

120:                                              ; preds = %19, %51, %57, %66, %75, %119, %93
  ret void
}

declare dso_local i64 @rt2x00_rev(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2500pci_set_vgc(%struct.rt2x00_dev*, %struct.link_qual*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
