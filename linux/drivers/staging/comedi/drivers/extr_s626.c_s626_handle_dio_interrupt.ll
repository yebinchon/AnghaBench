; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_handle_dio_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_handle_dio_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice*, %struct.s626_private* }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i64, i64, i32, i64, i64, i32 }
%struct.s626_private = type { i64, i64 }

@TRIG_EXT = common dso_local global i64 0, align 8
@S626_MC1_ERPS1 = common dso_local global i32 0, align 4
@S626_P_MC1 = common dso_local global i32 0, align 4
@S626_MC2_ADC_RPS = common dso_local global i32 0, align 4
@S626_P_MC2 = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i64 0, align 8
@S626_CLKENAB_ALWAYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32)* @s626_handle_dio_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s626_handle_dio_interrupt(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.s626_private*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca %struct.comedi_cmd*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 1
  %12 = load %struct.s626_private*, %struct.s626_private** %11, align 8
  store %struct.s626_private* %12, %struct.s626_private** %7, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %14, align 8
  store %struct.comedi_subdevice* %15, %struct.comedi_subdevice** %8, align 8
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %17 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.comedi_cmd* %19, %struct.comedi_cmd** %9, align 8
  %20 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @s626_dio_reset_irq(%struct.comedi_device* %20, i32 %21, i32 %22)
  %24 = load %struct.s626_private*, %struct.s626_private** %7, align 8
  %25 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %151

28:                                               ; preds = %3
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %31 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = mul nsw i32 16, %33
  %35 = sub nsw i32 %32, %34
  %36 = ashr i32 %29, %35
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %61

38:                                               ; preds = %28
  %39 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %40 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TRIG_EXT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %38
  %45 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %46 = load i32, i32* @S626_MC1_ERPS1, align 4
  %47 = load i32, i32* @S626_P_MC1, align 4
  %48 = call i32 @s626_mc_enable(%struct.comedi_device* %45, i32 %46, i32 %47)
  %49 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %50 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TRIG_EXT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %44
  %55 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %56 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %57 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @s626_dio_set_irq(%struct.comedi_device* %55, i32 %58)
  br label %60

60:                                               ; preds = %54, %44
  br label %61

61:                                               ; preds = %60, %38, %28
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %64 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = mul nsw i32 16, %66
  %68 = sub nsw i32 %65, %67
  %69 = ashr i32 %62, %68
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %114

71:                                               ; preds = %61
  %72 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %73 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @TRIG_EXT, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %114

77:                                               ; preds = %71
  %78 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %79 = load i32, i32* @S626_MC2_ADC_RPS, align 4
  %80 = load i32, i32* @S626_P_MC2, align 4
  %81 = call i32 @s626_mc_enable(%struct.comedi_device* %78, i32 %79, i32 %80)
  %82 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %83 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @TRIG_EXT, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %77
  %88 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %89 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.s626_private*, %struct.s626_private** %7, align 8
  %92 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %94 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %95 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @s626_dio_set_irq(%struct.comedi_device* %93, i32 %96)
  br label %98

98:                                               ; preds = %87, %77
  %99 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %100 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @TRIG_TIMER, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %98
  %105 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %106 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.s626_private*, %struct.s626_private** %7, align 8
  %109 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %111 = load i32, i32* @S626_CLKENAB_ALWAYS, align 4
  %112 = call i32 @s626_set_enable(%struct.comedi_device* %110, i32 5, i32 %111)
  br label %113

113:                                              ; preds = %104, %98
  br label %114

114:                                              ; preds = %113, %71, %61
  %115 = load i32, i32* %5, align 4
  %116 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %117 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = mul nsw i32 16, %119
  %121 = sub nsw i32 %118, %120
  %122 = ashr i32 %115, %121
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %150

124:                                              ; preds = %114
  %125 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %126 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @TRIG_EXT, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %150

130:                                              ; preds = %124
  %131 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %132 = load i32, i32* @S626_MC2_ADC_RPS, align 4
  %133 = load i32, i32* @S626_P_MC2, align 4
  %134 = call i32 @s626_mc_enable(%struct.comedi_device* %131, i32 %132, i32 %133)
  %135 = load %struct.s626_private*, %struct.s626_private** %7, align 8
  %136 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %137, -1
  store i64 %138, i64* %136, align 8
  %139 = load %struct.s626_private*, %struct.s626_private** %7, align 8
  %140 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp sgt i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %130
  %144 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %145 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %146 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @s626_dio_set_irq(%struct.comedi_device* %144, i32 %147)
  br label %149

149:                                              ; preds = %143, %130
  br label %150

150:                                              ; preds = %149, %124, %114
  br label %151

151:                                              ; preds = %150, %3
  ret void
}

declare dso_local i32 @s626_dio_reset_irq(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @s626_mc_enable(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @s626_dio_set_irq(%struct.comedi_device*, i32) #1

declare dso_local i32 @s626_set_enable(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
