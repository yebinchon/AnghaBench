; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_link_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_link_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i64, i32 }
%struct.link_qual = type { i32, i32, i32 }

@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.link_qual*, i32)* @rt61pci_link_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt61pci_link_tuner(%struct.rt2x00_dev* %0, %struct.link_qual* %1, i32 %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.link_qual*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.link_qual* %1, %struct.link_qual** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %10 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  store i32 40, i32* %8, align 4
  store i32 72, i32* %7, align 4
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %16 = call i64 @rt2x00_has_cap_external_lna_a(%struct.rt2x00_dev* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, 16
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, 16
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %18, %14
  br label %34

24:                                               ; preds = %3
  store i32 32, i32* %8, align 4
  store i32 64, i32* %7, align 4
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %26 = call i64 @rt2x00_has_cap_external_lna_bg(%struct.rt2x00_dev* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 16
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 16
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %28, %24
  br label %34

34:                                               ; preds = %33, %23
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %36 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %106

40:                                               ; preds = %34
  %41 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %42 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sge i32 %43, -35
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %47 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %48 = call i32 @rt61pci_set_vgc(%struct.rt2x00_dev* %46, %struct.link_qual* %47, i32 96)
  br label %145

49:                                               ; preds = %40
  %50 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %51 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sge i32 %52, -58
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %56 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @rt61pci_set_vgc(%struct.rt2x00_dev* %55, %struct.link_qual* %56, i32 %57)
  br label %145

59:                                               ; preds = %49
  %60 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %61 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp sge i32 %62, -66
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %66 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 16
  %69 = call i32 @rt61pci_set_vgc(%struct.rt2x00_dev* %65, %struct.link_qual* %66, i32 %68)
  br label %145

70:                                               ; preds = %59
  %71 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %72 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp sge i32 %73, -74
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %77 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 8
  %80 = call i32 @rt61pci_set_vgc(%struct.rt2x00_dev* %76, %struct.link_qual* %77, i32 %79)
  br label %145

81:                                               ; preds = %70
  %82 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %83 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 -74, %84
  %86 = mul nsw i32 2, %85
  %87 = load i32, i32* %7, align 4
  %88 = sub nsw i32 %87, %86
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %81
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %92, %81
  %95 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %96 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %102 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @rt61pci_set_vgc(%struct.rt2x00_dev* %101, %struct.link_qual* %102, i32 %103)
  br label %145

105:                                              ; preds = %94
  br label %106

106:                                              ; preds = %105, %39
  %107 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %108 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = icmp sgt i32 %109, 512
  br i1 %110, label %111, label %125

111:                                              ; preds = %106
  %112 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %113 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %111
  %118 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %119 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %120 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %121 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  %124 = call i32 @rt61pci_set_vgc(%struct.rt2x00_dev* %118, %struct.link_qual* %119, i32 %123)
  br label %145

125:                                              ; preds = %111, %106
  %126 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %127 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp slt i32 %128, 100
  br i1 %129, label %130, label %144

130:                                              ; preds = %125
  %131 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %132 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %130
  %137 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %138 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %139 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %140 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %140, align 4
  %143 = call i32 @rt61pci_set_vgc(%struct.rt2x00_dev* %137, %struct.link_qual* %138, i32 %142)
  br label %144

144:                                              ; preds = %136, %130, %125
  br label %145

145:                                              ; preds = %45, %54, %64, %75, %100, %144, %117
  ret void
}

declare dso_local i64 @rt2x00_has_cap_external_lna_a(%struct.rt2x00_dev*) #1

declare dso_local i64 @rt2x00_has_cap_external_lna_bg(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt61pci_set_vgc(%struct.rt2x00_dev*, %struct.link_qual*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
