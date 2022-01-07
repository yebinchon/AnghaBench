; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_ao_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_ao_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i32, %struct.cb_pcidas_private* }
%struct.cb_pcidas_private = type { i32, i32, i64, i64 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32, i32* }

@PCIDAS_AO_REG = common dso_local global i64 0, align 8
@PCIDAS_AO_FIFO_CLR_REG = common dso_local global i64 0, align 8
@PCIDAS_AO_PACER_INT = common dso_local global i32 0, align 4
@PCIDAS_AO_PACER_EXTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"error setting dac pacer source\0A\00", align 1
@cb_pcidas_ao_inttrig = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @cb_pcidas_ao_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_pcidas_ao_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.cb_pcidas_private*, align 8
  %7 = alloca %struct.comedi_async*, align 8
  %8 = alloca %struct.comedi_cmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 2
  %15 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %14, align 8
  store %struct.cb_pcidas_private* %15, %struct.cb_pcidas_private** %6, align 8
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %17 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %16, i32 0, i32 0
  %18 = load %struct.comedi_async*, %struct.comedi_async** %17, align 8
  store %struct.comedi_async* %18, %struct.comedi_async** %7, align 8
  %19 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %20 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %19, i32 0, i32 1
  store %struct.comedi_cmd* %20, %struct.comedi_cmd** %8, align 8
  %21 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 0
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %61, %2
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %28 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %64

31:                                               ; preds = %25
  %32 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %33 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @CR_CHAN(i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %41 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @CR_RANGE(i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @PCIDAS_AO_CHAN_EN(i32 %48)
  %50 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %6, align 8
  %51 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @PCIDAS_AO_RANGE(i32 %54, i32 %55)
  %57 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %6, align 8
  %58 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %31
  %62 = load i32, i32* %9, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %25

64:                                               ; preds = %25
  %65 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %6, align 8
  %66 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %6, align 8
  %69 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PCIDAS_AO_REG, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @outw(i32 %67, i64 %72)
  %74 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %75 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %74, i32 0, i32 0
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  %78 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %6, align 8
  %79 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @PCIDAS_AO_FIFO_CLR_REG, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @outw(i32 0, i64 %82)
  %84 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %85 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 128
  br i1 %87, label %88, label %97

88:                                               ; preds = %64
  %89 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %6, align 8
  %90 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @comedi_8254_update_divisors(i32 %91)
  %93 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %6, align 8
  %94 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @comedi_8254_pacer_enable(i32 %95, i32 1, i32 2, i32 1)
  br label %97

97:                                               ; preds = %88, %64
  %98 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %99 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %98, i32 0, i32 0
  %100 = load i64, i64* %10, align 8
  %101 = call i32 @spin_lock_irqsave(i32* %99, i64 %100)
  %102 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %103 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  switch i32 %104, label %117 [
    i32 128, label %105
    i32 129, label %111
  ]

105:                                              ; preds = %97
  %106 = load i32, i32* @PCIDAS_AO_PACER_INT, align 4
  %107 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %6, align 8
  %108 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %126

111:                                              ; preds = %97
  %112 = load i32, i32* @PCIDAS_AO_PACER_EXTP, align 4
  %113 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %6, align 8
  %114 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %126

117:                                              ; preds = %97
  %118 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %119 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %118, i32 0, i32 0
  %120 = load i64, i64* %10, align 8
  %121 = call i32 @spin_unlock_irqrestore(i32* %119, i64 %120)
  %122 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %123 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @dev_err(i32 %124, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %134

126:                                              ; preds = %111, %105
  %127 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %128 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %127, i32 0, i32 0
  %129 = load i64, i64* %10, align 8
  %130 = call i32 @spin_unlock_irqrestore(i32* %128, i64 %129)
  %131 = load i32, i32* @cb_pcidas_ao_inttrig, align 4
  %132 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %133 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %126, %117
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @PCIDAS_AO_CHAN_EN(i32) #1

declare dso_local i32 @PCIDAS_AO_RANGE(i32, i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @comedi_8254_update_divisors(i32) #1

declare dso_local i32 @comedi_8254_pacer_enable(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
