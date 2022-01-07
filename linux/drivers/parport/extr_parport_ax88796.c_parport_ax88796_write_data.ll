; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_parport_ax88796.c_parport_ax88796_write_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_parport_ax88796.c_parport_ax88796_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i32 }
%struct.ax_drvdata = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*, i8)* @parport_ax88796_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parport_ax88796_write_data(%struct.parport* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.parport*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.ax_drvdata*, align 8
  store %struct.parport* %0, %struct.parport** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.parport*, %struct.parport** %3, align 8
  %7 = call %struct.ax_drvdata* @pp_to_drv(%struct.parport* %6)
  store %struct.ax_drvdata* %7, %struct.ax_drvdata** %5, align 8
  %8 = load i8, i8* %4, align 1
  %9 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %10 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @writeb(i8 zeroext %8, i32 %11)
  ret void
}

declare dso_local %struct.ax_drvdata* @pp_to_drv(%struct.parport*) #1

declare dso_local i32 @writeb(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
