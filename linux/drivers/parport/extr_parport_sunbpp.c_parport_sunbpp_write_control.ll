; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_parport_sunbpp.c_parport_sunbpp_write_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_parport_sunbpp.c_parport_sunbpp_write_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i32 }

@PARPORT_CONTROL_STROBE = common dso_local global i8 0, align 1
@PARPORT_CONTROL_AUTOFD = common dso_local global i8 0, align 1
@PARPORT_CONTROL_INIT = common dso_local global i8 0, align 1
@PARPORT_CONTROL_SELECT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*, i8)* @parport_sunbpp_write_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parport_sunbpp_write_control(%struct.parport* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.parport*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.parport* %0, %struct.parport** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load i8, i8* @PARPORT_CONTROL_STROBE, align 1
  %7 = zext i8 %6 to i32
  %8 = load i8, i8* @PARPORT_CONTROL_AUTOFD, align 1
  %9 = zext i8 %8 to i32
  %10 = or i32 %7, %9
  %11 = load i8, i8* @PARPORT_CONTROL_INIT, align 1
  %12 = zext i8 %11 to i32
  %13 = or i32 %10, %12
  %14 = load i8, i8* @PARPORT_CONTROL_SELECT, align 1
  %15 = zext i8 %14 to i32
  %16 = or i32 %13, %15
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %5, align 1
  %18 = load %struct.parport*, %struct.parport** %3, align 8
  %19 = load i8, i8* %5, align 1
  %20 = load i8, i8* %4, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* %5, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %21, %23
  %25 = trunc i32 %24 to i8
  %26 = call i32 @parport_sunbpp_frob_control(%struct.parport* %18, i8 zeroext %19, i8 zeroext %25)
  ret void
}

declare dso_local i32 @parport_sunbpp_frob_control(%struct.parport*, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
