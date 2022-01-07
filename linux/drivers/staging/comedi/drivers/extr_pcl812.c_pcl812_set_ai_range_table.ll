; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl812.c_pcl812_set_ai_range_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl812.c_pcl812_set_ai_range_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcl812_private*, %struct.pcl812_board* }
%struct.pcl812_private = type { i32 }
%struct.pcl812_board = type { i32, i32* }
%struct.comedi_subdevice = type { i32* }
%struct.comedi_devconfig = type { i32* }

@range_pcl812pg2_ai = common dso_local global i32 0, align 4
@range_bipolar10 = common dso_local global i32 0, align 4
@range_bipolar5 = common dso_local global i32 0, align 4
@range_bipolar2_5 = common dso_local global i32 0, align 4
@range812_bipolar1_25 = common dso_local global i32 0, align 4
@range812_bipolar0_625 = common dso_local global i32 0, align 4
@range812_bipolar0_3125 = common dso_local global i32 0, align 4
@range_pcl813b2_ai = common dso_local global i32 0, align 4
@range_iso813_1_ai = common dso_local global i32 0, align 4
@range_iso813_1_2_ai = common dso_local global i32 0, align 4
@range_iso813_2_ai = common dso_local global i32 0, align 4
@range_iso813_2_2_ai = common dso_local global i32 0, align 4
@range_acl8113_1_ai = common dso_local global i32 0, align 4
@range_acl8113_1_2_ai = common dso_local global i32 0, align 4
@range_acl8113_2_ai = common dso_local global i32 0, align 4
@range_acl8113_2_2_ai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_devconfig*)* @pcl812_set_ai_range_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcl812_set_ai_range_table(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_devconfig* %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.comedi_devconfig*, align 8
  %7 = alloca %struct.pcl812_board*, align 8
  %8 = alloca %struct.pcl812_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  store %struct.comedi_devconfig* %2, %struct.comedi_devconfig** %6, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 1
  %11 = load %struct.pcl812_board*, %struct.pcl812_board** %10, align 8
  store %struct.pcl812_board* %11, %struct.pcl812_board** %7, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 0
  %14 = load %struct.pcl812_private*, %struct.pcl812_private** %13, align 8
  store %struct.pcl812_private* %14, %struct.pcl812_private** %8, align 8
  %15 = load %struct.pcl812_board*, %struct.pcl812_board** %7, align 8
  %16 = getelementptr inbounds %struct.pcl812_board, %struct.pcl812_board* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %132 [
    i32 129, label %18
    i32 130, label %35
    i32 128, label %63
    i32 131, label %80
    i32 132, label %106
  ]

18:                                               ; preds = %3
  %19 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %6, align 8
  %20 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 4
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %27 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %26, i32 0, i32 0
  store i32* @range_pcl812pg2_ai, i32** %27, align 8
  br label %34

28:                                               ; preds = %18
  %29 = load %struct.pcl812_board*, %struct.pcl812_board** %7, align 8
  %30 = getelementptr inbounds %struct.pcl812_board, %struct.pcl812_board* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %33 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  br label %34

34:                                               ; preds = %28, %25
  br label %138

35:                                               ; preds = %3
  %36 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %6, align 8
  %37 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %59 [
    i32 0, label %41
    i32 1, label %44
    i32 2, label %47
    i32 3, label %50
    i32 4, label %53
    i32 5, label %56
  ]

41:                                               ; preds = %35
  %42 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %43 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %42, i32 0, i32 0
  store i32* @range_bipolar10, i32** %43, align 8
  br label %62

44:                                               ; preds = %35
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %46 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %45, i32 0, i32 0
  store i32* @range_bipolar5, i32** %46, align 8
  br label %62

47:                                               ; preds = %35
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 0
  store i32* @range_bipolar2_5, i32** %49, align 8
  br label %62

50:                                               ; preds = %35
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %52 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %51, i32 0, i32 0
  store i32* @range812_bipolar1_25, i32** %52, align 8
  br label %62

53:                                               ; preds = %35
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %55 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %54, i32 0, i32 0
  store i32* @range812_bipolar0_625, i32** %55, align 8
  br label %62

56:                                               ; preds = %35
  %57 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %58 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %57, i32 0, i32 0
  store i32* @range812_bipolar0_3125, i32** %58, align 8
  br label %62

59:                                               ; preds = %35
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %61 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %60, i32 0, i32 0
  store i32* @range_bipolar10, i32** %61, align 8
  br label %62

62:                                               ; preds = %59, %56, %53, %50, %47, %44, %41
  br label %138

63:                                               ; preds = %3
  %64 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %6, align 8
  %65 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %72 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %71, i32 0, i32 0
  store i32* @range_pcl813b2_ai, i32** %72, align 8
  br label %79

73:                                               ; preds = %63
  %74 = load %struct.pcl812_board*, %struct.pcl812_board** %7, align 8
  %75 = getelementptr inbounds %struct.pcl812_board, %struct.pcl812_board* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %78 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %77, i32 0, i32 0
  store i32* %76, i32** %78, align 8
  br label %79

79:                                               ; preds = %73, %70
  br label %138

80:                                               ; preds = %3
  %81 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %6, align 8
  %82 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  switch i32 %85, label %102 [
    i32 0, label %86
    i32 1, label %89
    i32 2, label %92
    i32 3, label %97
  ]

86:                                               ; preds = %80
  %87 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %88 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %87, i32 0, i32 0
  store i32* @range_iso813_1_ai, i32** %88, align 8
  br label %105

89:                                               ; preds = %80
  %90 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %91 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %90, i32 0, i32 0
  store i32* @range_iso813_1_2_ai, i32** %91, align 8
  br label %105

92:                                               ; preds = %80
  %93 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %94 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %93, i32 0, i32 0
  store i32* @range_iso813_2_ai, i32** %94, align 8
  %95 = load %struct.pcl812_private*, %struct.pcl812_private** %8, align 8
  %96 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %95, i32 0, i32 0
  store i32 1, i32* %96, align 4
  br label %105

97:                                               ; preds = %80
  %98 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %99 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %98, i32 0, i32 0
  store i32* @range_iso813_2_2_ai, i32** %99, align 8
  %100 = load %struct.pcl812_private*, %struct.pcl812_private** %8, align 8
  %101 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %100, i32 0, i32 0
  store i32 1, i32* %101, align 4
  br label %105

102:                                              ; preds = %80
  %103 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %104 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %103, i32 0, i32 0
  store i32* @range_iso813_1_ai, i32** %104, align 8
  br label %105

105:                                              ; preds = %102, %97, %92, %89, %86
  br label %138

106:                                              ; preds = %3
  %107 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %6, align 8
  %108 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  switch i32 %111, label %128 [
    i32 0, label %112
    i32 1, label %115
    i32 2, label %118
    i32 3, label %123
  ]

112:                                              ; preds = %106
  %113 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %114 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %113, i32 0, i32 0
  store i32* @range_acl8113_1_ai, i32** %114, align 8
  br label %131

115:                                              ; preds = %106
  %116 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %117 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %116, i32 0, i32 0
  store i32* @range_acl8113_1_2_ai, i32** %117, align 8
  br label %131

118:                                              ; preds = %106
  %119 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %120 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %119, i32 0, i32 0
  store i32* @range_acl8113_2_ai, i32** %120, align 8
  %121 = load %struct.pcl812_private*, %struct.pcl812_private** %8, align 8
  %122 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %121, i32 0, i32 0
  store i32 1, i32* %122, align 4
  br label %131

123:                                              ; preds = %106
  %124 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %125 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %124, i32 0, i32 0
  store i32* @range_acl8113_2_2_ai, i32** %125, align 8
  %126 = load %struct.pcl812_private*, %struct.pcl812_private** %8, align 8
  %127 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %126, i32 0, i32 0
  store i32 1, i32* %127, align 4
  br label %131

128:                                              ; preds = %106
  %129 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %130 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %129, i32 0, i32 0
  store i32* @range_acl8113_1_ai, i32** %130, align 8
  br label %131

131:                                              ; preds = %128, %123, %118, %115, %112
  br label %138

132:                                              ; preds = %3
  %133 = load %struct.pcl812_board*, %struct.pcl812_board** %7, align 8
  %134 = getelementptr inbounds %struct.pcl812_board, %struct.pcl812_board* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %137 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %136, i32 0, i32 0
  store i32* %135, i32** %137, align 8
  br label %138

138:                                              ; preds = %132, %131, %105, %79, %62, %34
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
