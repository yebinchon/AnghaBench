; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_ipipeif.c_ipipeif_print_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_ipipeif.c_ipipeif_print_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_ipipeif_device = type { i32 }
%struct.iss_device = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"-------------IPIPEIF Register dump-------------\0A\00", align 1
@CFG1 = common dso_local global i32 0, align 4
@CFG2 = common dso_local global i32 0, align 4
@SYNCEN = common dso_local global i32 0, align 4
@CADU = common dso_local global i32 0, align 4
@CADL = common dso_local global i32 0, align 4
@MODESET = common dso_local global i32 0, align 4
@CCOLP = common dso_local global i32 0, align 4
@SPH = common dso_local global i32 0, align 4
@LNH = common dso_local global i32 0, align 4
@LNV = common dso_local global i32 0, align 4
@HSIZE = common dso_local global i32 0, align 4
@SYSCONFIG = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"-----------------------------------------------\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iss_ipipeif_device*)* @ipipeif_print_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipipeif_print_status(%struct.iss_ipipeif_device* %0) #0 {
  %2 = alloca %struct.iss_ipipeif_device*, align 8
  %3 = alloca %struct.iss_device*, align 8
  store %struct.iss_ipipeif_device* %0, %struct.iss_ipipeif_device** %2, align 8
  %4 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %2, align 8
  %5 = call %struct.iss_device* @to_iss_device(%struct.iss_ipipeif_device* %4)
  store %struct.iss_device* %5, %struct.iss_device** %3, align 8
  %6 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %7 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @dev_dbg(i32 %8, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %11 = load i32, i32* @CFG1, align 4
  %12 = call i32 @IPIPEIF_PRINT_REGISTER(%struct.iss_device* %10, i32 %11)
  %13 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %14 = load i32, i32* @CFG2, align 4
  %15 = call i32 @IPIPEIF_PRINT_REGISTER(%struct.iss_device* %13, i32 %14)
  %16 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %17 = load i32, i32* @SYNCEN, align 4
  %18 = call i32 @ISIF_PRINT_REGISTER(%struct.iss_device* %16, i32 %17)
  %19 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %20 = load i32, i32* @CADU, align 4
  %21 = call i32 @ISIF_PRINT_REGISTER(%struct.iss_device* %19, i32 %20)
  %22 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %23 = load i32, i32* @CADL, align 4
  %24 = call i32 @ISIF_PRINT_REGISTER(%struct.iss_device* %22, i32 %23)
  %25 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %26 = load i32, i32* @MODESET, align 4
  %27 = call i32 @ISIF_PRINT_REGISTER(%struct.iss_device* %25, i32 %26)
  %28 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %29 = load i32, i32* @CCOLP, align 4
  %30 = call i32 @ISIF_PRINT_REGISTER(%struct.iss_device* %28, i32 %29)
  %31 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %32 = load i32, i32* @SPH, align 4
  %33 = call i32 @ISIF_PRINT_REGISTER(%struct.iss_device* %31, i32 %32)
  %34 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %35 = load i32, i32* @LNH, align 4
  %36 = call i32 @ISIF_PRINT_REGISTER(%struct.iss_device* %34, i32 %35)
  %37 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %38 = load i32, i32* @LNV, align 4
  %39 = call i32 @ISIF_PRINT_REGISTER(%struct.iss_device* %37, i32 %38)
  %40 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %41 = call i32 @VDINT(i32 0)
  %42 = call i32 @ISIF_PRINT_REGISTER(%struct.iss_device* %40, i32 %41)
  %43 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %44 = load i32, i32* @HSIZE, align 4
  %45 = call i32 @ISIF_PRINT_REGISTER(%struct.iss_device* %43, i32 %44)
  %46 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %47 = load i32, i32* @SYSCONFIG, align 4
  %48 = call i32 @ISP5_PRINT_REGISTER(%struct.iss_device* %46, i32 %47)
  %49 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %50 = load i32, i32* @CTRL, align 4
  %51 = call i32 @ISP5_PRINT_REGISTER(%struct.iss_device* %49, i32 %50)
  %52 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %53 = call i32 @IRQSTATUS(i32 0)
  %54 = call i32 @ISP5_PRINT_REGISTER(%struct.iss_device* %52, i32 %53)
  %55 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %56 = call i32 @IRQENABLE_SET(i32 0)
  %57 = call i32 @ISP5_PRINT_REGISTER(%struct.iss_device* %55, i32 %56)
  %58 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %59 = call i32 @IRQENABLE_CLR(i32 0)
  %60 = call i32 @ISP5_PRINT_REGISTER(%struct.iss_device* %58, i32 %59)
  %61 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %62 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dev_dbg(i32 %63, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.iss_device* @to_iss_device(%struct.iss_ipipeif_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @IPIPEIF_PRINT_REGISTER(%struct.iss_device*, i32) #1

declare dso_local i32 @ISIF_PRINT_REGISTER(%struct.iss_device*, i32) #1

declare dso_local i32 @VDINT(i32) #1

declare dso_local i32 @ISP5_PRINT_REGISTER(%struct.iss_device*, i32) #1

declare dso_local i32 @IRQSTATUS(i32) #1

declare dso_local i32 @IRQENABLE_SET(i32) #1

declare dso_local i32 @IRQENABLE_CLR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
