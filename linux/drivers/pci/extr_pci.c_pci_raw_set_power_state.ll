; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_raw_set_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_raw_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_2__*, i64, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"invalid power transition (from state %d to %d)\0A\00", align 1
@PCI_PM_CTRL = common dso_local global i64 0, align 8
@PCI_PM_CTRL_STATE_MASK = common dso_local global i32 0, align 4
@PCI_PM_CTRL_NO_SOFT_RESET = common dso_local global i32 0, align 4
@PCI_PM_D2_DELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Refused to change power state, currently in D%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @pci_raw_set_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_raw_set_power_state(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %181

14:                                               ; preds = %2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %181

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 133
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = icmp sgt i32 %26, 129
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %181

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 133
  br i1 %33, label %34, label %54

34:                                               ; preds = %31
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sle i32 %37, 130
  br i1 %38, label %39, label %54

39:                                               ; preds = %34
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @pci_err(%struct.pci_dev* %46, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %181

54:                                               ; preds = %39, %34, %31
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 132
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57, %54
  %63 = load i32, i32* %5, align 4
  %64 = icmp eq i32 %63, 131
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65, %57
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %181

73:                                               ; preds = %65, %62
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PCI_PM_CTRL, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @pci_read_config_word(%struct.pci_dev* %74, i64 %79, i32* %6)
  %81 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %82 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  switch i32 %83, label %104 [
    i32 133, label %84
    i32 132, label %84
    i32 131, label %84
    i32 129, label %92
    i32 130, label %92
    i32 128, label %92
  ]

84:                                               ; preds = %73, %73, %73
  %85 = load i32, i32* @PCI_PM_CTRL_STATE_MASK, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %6, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %6, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %6, align 4
  br label %105

92:                                               ; preds = %73, %73, %73
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @PCI_PM_CTRL_STATE_MASK, align 4
  %95 = and i32 %93, %94
  %96 = icmp eq i32 %95, 129
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @PCI_PM_CTRL_NO_SOFT_RESET, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  store i32 1, i32* %7, align 4
  br label %103

103:                                              ; preds = %102, %97, %92
  br label %104

104:                                              ; preds = %73, %103
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %104, %84
  %106 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %107 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %108 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @PCI_PM_CTRL, align 8
  %111 = add nsw i64 %109, %110
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @pci_write_config_word(%struct.pci_dev* %106, i64 %111, i32 %112)
  %114 = load i32, i32* %5, align 4
  %115 = icmp eq i32 %114, 129
  br i1 %115, label %121, label %116

116:                                              ; preds = %105
  %117 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %118 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp eq i32 %119, 129
  br i1 %120, label %121, label %124

121:                                              ; preds = %116, %105
  %122 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %123 = call i32 @pci_dev_d3_sleep(%struct.pci_dev* %122)
  br label %136

124:                                              ; preds = %116
  %125 = load i32, i32* %5, align 4
  %126 = icmp eq i32 %125, 131
  br i1 %126, label %132, label %127

127:                                              ; preds = %124
  %128 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %129 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %130, 131
  br i1 %131, label %132, label %135

132:                                              ; preds = %127, %124
  %133 = load i32, i32* @PCI_PM_D2_DELAY, align 4
  %134 = call i32 @udelay(i32 %133)
  br label %135

135:                                              ; preds = %132, %127
  br label %136

136:                                              ; preds = %135, %121
  %137 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %138 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %139 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @PCI_PM_CTRL, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i32 @pci_read_config_word(%struct.pci_dev* %137, i64 %142, i32* %6)
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @PCI_PM_CTRL_STATE_MASK, align 4
  %146 = and i32 %144, %145
  %147 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %148 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %150 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %5, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %136
  %155 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %156 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %157 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @pci_info_ratelimited(%struct.pci_dev* %155, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %158)
  br label %160

160:                                              ; preds = %154, %136
  %161 = load i32, i32* %7, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %165 = call i32 @pci_restore_bars(%struct.pci_dev* %164)
  br label %166

166:                                              ; preds = %163, %160
  %167 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %168 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %167, i32 0, i32 1
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %166
  %174 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %175 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %174, i32 0, i32 1
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @pcie_aspm_pm_state_change(i64 %178)
  br label %180

180:                                              ; preds = %173, %166
  store i32 0, i32* %3, align 4
  br label %181

181:                                              ; preds = %180, %70, %45, %28, %19, %13
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @pci_err(%struct.pci_dev*, i8*, i32, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_dev_d3_sleep(%struct.pci_dev*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pci_info_ratelimited(%struct.pci_dev*, i8*, i32) #1

declare dso_local i32 @pci_restore_bars(%struct.pci_dev*) #1

declare dso_local i32 @pcie_aspm_pm_state_change(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
