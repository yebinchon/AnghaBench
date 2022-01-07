; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_DisplayOn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_DisplayOn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*)* @SiS_DisplayOn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_DisplayOn(%struct.SiS_Private* %0) #0 {
  %2 = alloca %struct.SiS_Private*, align 8
  store %struct.SiS_Private* %0, %struct.SiS_Private** %2, align 8
  %3 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %4 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %5 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @SiS_SetRegAND(%struct.SiS_Private* %3, i32 %6, i32 1, i32 223)
  ret void
}

declare dso_local i32 @SiS_SetRegAND(%struct.SiS_Private*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
