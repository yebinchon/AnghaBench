; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/switches/extr_idtcps.c_idtcps_get_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/switches/extr_idtcps.c_idtcps_get_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { i32 }

@IDTCPS_RIO_DOMAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_mport*, i32, i64, i64*)* @idtcps_get_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idtcps_get_domain(%struct.rio_mport* %0, i32 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.rio_mport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store %struct.rio_mport* %0, %struct.rio_mport** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %10 = load %struct.rio_mport*, %struct.rio_mport** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i64, i64* %7, align 8
  %13 = load i32, i32* @IDTCPS_RIO_DOMAIN, align 4
  %14 = call i32 @rio_mport_read_config_32(%struct.rio_mport* %10, i32 %11, i64 %12, i32 %13, i32* %9)
  %15 = load i32, i32* %9, align 4
  %16 = and i32 %15, 255
  %17 = sext i32 %16 to i64
  %18 = load i64*, i64** %8, align 8
  store i64 %17, i64* %18, align 8
  ret i32 0
}

declare dso_local i32 @rio_mport_read_config_32(%struct.rio_mport*, i32, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
