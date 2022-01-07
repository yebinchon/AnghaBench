; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-drv.c_c67x00_remove_sie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-drv.c_c67x00_remove_sie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c67x00_sie = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c67x00_sie*)* @c67x00_remove_sie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c67x00_remove_sie(%struct.c67x00_sie* %0) #0 {
  %2 = alloca %struct.c67x00_sie*, align 8
  store %struct.c67x00_sie* %0, %struct.c67x00_sie** %2, align 8
  %3 = load %struct.c67x00_sie*, %struct.c67x00_sie** %2, align 8
  %4 = getelementptr inbounds %struct.c67x00_sie, %struct.c67x00_sie* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %9 [
    i32 128, label %6
  ]

6:                                                ; preds = %1
  %7 = load %struct.c67x00_sie*, %struct.c67x00_sie** %2, align 8
  %8 = call i32 @c67x00_hcd_remove(%struct.c67x00_sie* %7)
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %6
  ret void
}

declare dso_local i32 @c67x00_hcd_remove(%struct.c67x00_sie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
