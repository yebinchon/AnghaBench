; ModuleID = '/home/carl/AnghaBench/linux/drivers/parisc/extr_gsc.c_gsc_fixup_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parisc/extr_gsc.c_gsc_fixup_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parisc_device = type { i32 }
%struct.gsc_fixup_struct = type { void (%struct.parisc_device*, i8*)*, i8* }

@gsc_fixup_irqs_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gsc_fixup_irqs(%struct.parisc_device* %0, i8* %1, void (%struct.parisc_device*, i8*)* %2) #0 {
  %4 = alloca %struct.parisc_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca void (%struct.parisc_device*, i8*)*, align 8
  %7 = alloca %struct.gsc_fixup_struct, align 8
  store %struct.parisc_device* %0, %struct.parisc_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store void (%struct.parisc_device*, i8*)* %2, void (%struct.parisc_device*, i8*)** %6, align 8
  %8 = getelementptr inbounds %struct.gsc_fixup_struct, %struct.gsc_fixup_struct* %7, i32 0, i32 0
  %9 = load void (%struct.parisc_device*, i8*)*, void (%struct.parisc_device*, i8*)** %6, align 8
  store void (%struct.parisc_device*, i8*)* %9, void (%struct.parisc_device*, i8*)** %8, align 8
  %10 = getelementptr inbounds %struct.gsc_fixup_struct, %struct.gsc_fixup_struct* %7, i32 0, i32 1
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %10, align 8
  %12 = load %struct.parisc_device*, %struct.parisc_device** %4, align 8
  %13 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %12, i32 0, i32 0
  %14 = load i32, i32* @gsc_fixup_irqs_callback, align 4
  %15 = call i32 @device_for_each_child(i32* %13, %struct.gsc_fixup_struct* %7, i32 %14)
  ret void
}

declare dso_local i32 @device_for_each_child(i32*, %struct.gsc_fixup_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
