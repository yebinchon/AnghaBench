; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_iss_print_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_iss_print_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_device = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"-------------ISS HL Register dump-------------\0A\00", align 1
@HL_REVISION = common dso_local global i32 0, align 4
@HL_SYSCONFIG = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@CLKCTRL = common dso_local global i32 0, align 4
@CLKSTAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"-----------------------------------------------\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iss_device*)* @iss_print_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iss_print_status(%struct.iss_device* %0) #0 {
  %2 = alloca %struct.iss_device*, align 8
  store %struct.iss_device* %0, %struct.iss_device** %2, align 8
  %3 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %4 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @dev_dbg(i32 %5, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %8 = load i32, i32* @HL_REVISION, align 4
  %9 = call i32 @ISS_PRINT_REGISTER(%struct.iss_device* %7, i32 %8)
  %10 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %11 = load i32, i32* @HL_SYSCONFIG, align 4
  %12 = call i32 @ISS_PRINT_REGISTER(%struct.iss_device* %10, i32 %11)
  %13 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %14 = call i32 @HL_IRQSTATUS(i32 5)
  %15 = call i32 @ISS_PRINT_REGISTER(%struct.iss_device* %13, i32 %14)
  %16 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %17 = call i32 @HL_IRQENABLE_SET(i32 5)
  %18 = call i32 @ISS_PRINT_REGISTER(%struct.iss_device* %16, i32 %17)
  %19 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %20 = call i32 @HL_IRQENABLE_CLR(i32 5)
  %21 = call i32 @ISS_PRINT_REGISTER(%struct.iss_device* %19, i32 %20)
  %22 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %23 = load i32, i32* @CTRL, align 4
  %24 = call i32 @ISS_PRINT_REGISTER(%struct.iss_device* %22, i32 %23)
  %25 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %26 = load i32, i32* @CLKCTRL, align 4
  %27 = call i32 @ISS_PRINT_REGISTER(%struct.iss_device* %25, i32 %26)
  %28 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %29 = load i32, i32* @CLKSTAT, align 4
  %30 = call i32 @ISS_PRINT_REGISTER(%struct.iss_device* %28, i32 %29)
  %31 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %32 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_dbg(i32 %33, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @ISS_PRINT_REGISTER(%struct.iss_device*, i32) #1

declare dso_local i32 @HL_IRQSTATUS(i32) #1

declare dso_local i32 @HL_IRQENABLE_SET(i32) #1

declare dso_local i32 @HL_IRQENABLE_CLR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
