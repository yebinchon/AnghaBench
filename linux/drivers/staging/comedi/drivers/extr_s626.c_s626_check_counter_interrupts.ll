; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_check_counter_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_check_counter_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice*, %struct.s626_private* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i64, i64 }
%struct.s626_private = type { i64 }

@S626_LP_RDMISC2 = common dso_local global i32 0, align 4
@S626_IRQ_COINT1A = common dso_local global i32 0, align 4
@S626_IRQ_COINT2A = common dso_local global i32 0, align 4
@S626_IRQ_COINT3A = common dso_local global i32 0, align 4
@S626_IRQ_COINT1B = common dso_local global i32 0, align 4
@S626_IRQ_COINT2B = common dso_local global i32 0, align 4
@S626_CLKENAB_INDEX = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i64 0, align 8
@S626_MC2_ADC_RPS = common dso_local global i32 0, align 4
@S626_P_MC2 = common dso_local global i32 0, align 4
@S626_IRQ_COINT3B = common dso_local global i32 0, align 4
@S626_CLKENAB_ALWAYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @s626_check_counter_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s626_check_counter_interrupts(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.s626_private*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.comedi_async*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 1
  %10 = load %struct.s626_private*, %struct.s626_private** %9, align 8
  store %struct.s626_private* %10, %struct.s626_private** %3, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  store %struct.comedi_subdevice* %13, %struct.comedi_subdevice** %4, align 8
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %15 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 0
  %16 = load %struct.comedi_async*, %struct.comedi_async** %15, align 8
  store %struct.comedi_async* %16, %struct.comedi_async** %5, align 8
  %17 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %18 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %17, i32 0, i32 0
  store %struct.comedi_cmd* %18, %struct.comedi_cmd** %6, align 8
  %19 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %20 = load i32, i32* @S626_LP_RDMISC2, align 4
  %21 = call i32 @s626_debi_read(%struct.comedi_device* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @S626_IRQ_COINT1A, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %28 = call i32 @s626_reset_cap_flags(%struct.comedi_device* %27, i32 0)
  br label %29

29:                                               ; preds = %26, %1
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @S626_IRQ_COINT2A, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %36 = call i32 @s626_reset_cap_flags(%struct.comedi_device* %35, i32 1)
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @S626_IRQ_COINT3A, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %44 = call i32 @s626_reset_cap_flags(%struct.comedi_device* %43, i32 2)
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @S626_IRQ_COINT1B, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %52 = call i32 @s626_reset_cap_flags(%struct.comedi_device* %51, i32 3)
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @S626_IRQ_COINT2B, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %91

58:                                               ; preds = %53
  %59 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %60 = call i32 @s626_reset_cap_flags(%struct.comedi_device* %59, i32 4)
  %61 = load %struct.s626_private*, %struct.s626_private** %3, align 8
  %62 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %58
  %66 = load %struct.s626_private*, %struct.s626_private** %3, align 8
  %67 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, -1
  store i64 %69, i64* %67, align 8
  %70 = load %struct.s626_private*, %struct.s626_private** %3, align 8
  %71 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %65
  %75 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %76 = load i32, i32* @S626_CLKENAB_INDEX, align 4
  %77 = call i32 @s626_set_enable(%struct.comedi_device* %75, i32 4, i32 %76)
  br label %78

78:                                               ; preds = %74, %65
  %79 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %80 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @TRIG_TIMER, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %86 = load i32, i32* @S626_MC2_ADC_RPS, align 4
  %87 = load i32, i32* @S626_P_MC2, align 4
  %88 = call i32 @s626_mc_enable(%struct.comedi_device* %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %78
  br label %90

90:                                               ; preds = %89, %58
  br label %91

91:                                               ; preds = %90, %53
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @S626_IRQ_COINT3B, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %125

96:                                               ; preds = %91
  %97 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %98 = call i32 @s626_reset_cap_flags(%struct.comedi_device* %97, i32 5)
  %99 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %100 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @TRIG_TIMER, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %96
  %105 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %106 = load i32, i32* @S626_MC2_ADC_RPS, align 4
  %107 = load i32, i32* @S626_P_MC2, align 4
  %108 = call i32 @s626_mc_enable(%struct.comedi_device* %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %104, %96
  %110 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %111 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @TRIG_TIMER, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %109
  %116 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %117 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.s626_private*, %struct.s626_private** %3, align 8
  %120 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %122 = load i32, i32* @S626_CLKENAB_ALWAYS, align 4
  %123 = call i32 @s626_set_enable(%struct.comedi_device* %121, i32 4, i32 %122)
  br label %124

124:                                              ; preds = %115, %109
  br label %125

125:                                              ; preds = %124, %91
  ret void
}

declare dso_local i32 @s626_debi_read(%struct.comedi_device*, i32) #1

declare dso_local i32 @s626_reset_cap_flags(%struct.comedi_device*, i32) #1

declare dso_local i32 @s626_set_enable(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @s626_mc_enable(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
