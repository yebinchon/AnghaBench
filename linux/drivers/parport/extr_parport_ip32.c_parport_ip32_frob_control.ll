; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_parport_ip32.c_parport_ip32_frob_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_parport_ip32.c_parport_ip32_frob_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i32 }

@DCR_STROBE = common dso_local global i32 0, align 4
@DCR_AUTOFD = common dso_local global i32 0, align 4
@DCR_nINIT = common dso_local global i32 0, align 4
@DCR_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.parport*, i8, i8)* @parport_ip32_frob_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @parport_ip32_frob_control(%struct.parport* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.parport*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.parport* %0, %struct.parport** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %8 = load i32, i32* @DCR_STROBE, align 4
  %9 = load i32, i32* @DCR_AUTOFD, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @DCR_nINIT, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @DCR_SELECT, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load %struct.parport*, %struct.parport** %4, align 8
  %16 = load i8, i8* %5, align 1
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @CHECK_EXTRA_BITS(%struct.parport* %15, i8 zeroext %16, i32 %17)
  %19 = load %struct.parport*, %struct.parport** %4, align 8
  %20 = load i8, i8* %6, align 1
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @CHECK_EXTRA_BITS(%struct.parport* %19, i8 zeroext %20, i32 %21)
  %23 = load %struct.parport*, %struct.parport** %4, align 8
  %24 = load i8, i8* %5, align 1
  %25 = zext i8 %24 to i32
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %25, %26
  %28 = trunc i32 %27 to i8
  %29 = load i8, i8* %6, align 1
  %30 = zext i8 %29 to i32
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %30, %31
  %33 = trunc i32 %32 to i8
  %34 = call i32 @__parport_ip32_frob_control(%struct.parport* %23, i8 zeroext %28, i8 zeroext %33)
  %35 = load %struct.parport*, %struct.parport** %4, align 8
  %36 = call zeroext i8 @parport_ip32_read_control(%struct.parport* %35)
  ret i8 %36
}

declare dso_local i32 @CHECK_EXTRA_BITS(%struct.parport*, i8 zeroext, i32) #1

declare dso_local i32 @__parport_ip32_frob_control(%struct.parport*, i8 zeroext, i8 zeroext) #1

declare dso_local zeroext i8 @parport_ip32_read_control(%struct.parport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
