; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-ctl.c_snd_bcm2835_new_hdmi_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-ctl.c_snd_bcm2835_new_hdmi_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_chip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Broadcom Mixer\00", align 1
@snd_bcm2835_hdmi = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_bcm2835_new_hdmi_ctl(%struct.bcm2835_chip* %0) #0 {
  %2 = alloca %struct.bcm2835_chip*, align 8
  store %struct.bcm2835_chip* %0, %struct.bcm2835_chip** %2, align 8
  %3 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %2, align 8
  %4 = getelementptr inbounds %struct.bcm2835_chip, %struct.bcm2835_chip* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @strcpy(i32 %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %2, align 8
  %10 = load i32, i32* @snd_bcm2835_hdmi, align 4
  %11 = call i32 @ARRAY_SIZE(i32 %10)
  %12 = load i32, i32* @snd_bcm2835_hdmi, align 4
  %13 = call i32 @create_ctls(%struct.bcm2835_chip* %9, i32 %11, i32 %12)
  ret i32 %13
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @create_ctls(%struct.bcm2835_chip*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
