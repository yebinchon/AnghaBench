; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_ipipe.c_ipipe_print_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_ipipe.c_ipipe_print_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_ipipe_device = type { i32 }
%struct.iss_device = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"-------------IPIPE Register dump-------------\0A\00", align 1
@SRC_EN = common dso_local global i32 0, align 4
@SRC_MODE = common dso_local global i32 0, align 4
@SRC_FMT = common dso_local global i32 0, align 4
@SRC_COL = common dso_local global i32 0, align 4
@SRC_VPS = common dso_local global i32 0, align 4
@SRC_VSZ = common dso_local global i32 0, align 4
@SRC_HPS = common dso_local global i32 0, align 4
@SRC_HSZ = common dso_local global i32 0, align 4
@GCK_MMR = common dso_local global i32 0, align 4
@YUV_PHS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"-----------------------------------------------\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iss_ipipe_device*)* @ipipe_print_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipipe_print_status(%struct.iss_ipipe_device* %0) #0 {
  %2 = alloca %struct.iss_ipipe_device*, align 8
  %3 = alloca %struct.iss_device*, align 8
  store %struct.iss_ipipe_device* %0, %struct.iss_ipipe_device** %2, align 8
  %4 = load %struct.iss_ipipe_device*, %struct.iss_ipipe_device** %2, align 8
  %5 = call %struct.iss_device* @to_iss_device(%struct.iss_ipipe_device* %4)
  store %struct.iss_device* %5, %struct.iss_device** %3, align 8
  %6 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %7 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @dev_dbg(i32 %8, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %11 = load i32, i32* @SRC_EN, align 4
  %12 = call i32 @IPIPE_PRINT_REGISTER(%struct.iss_device* %10, i32 %11)
  %13 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %14 = load i32, i32* @SRC_MODE, align 4
  %15 = call i32 @IPIPE_PRINT_REGISTER(%struct.iss_device* %13, i32 %14)
  %16 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %17 = load i32, i32* @SRC_FMT, align 4
  %18 = call i32 @IPIPE_PRINT_REGISTER(%struct.iss_device* %16, i32 %17)
  %19 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %20 = load i32, i32* @SRC_COL, align 4
  %21 = call i32 @IPIPE_PRINT_REGISTER(%struct.iss_device* %19, i32 %20)
  %22 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %23 = load i32, i32* @SRC_VPS, align 4
  %24 = call i32 @IPIPE_PRINT_REGISTER(%struct.iss_device* %22, i32 %23)
  %25 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %26 = load i32, i32* @SRC_VSZ, align 4
  %27 = call i32 @IPIPE_PRINT_REGISTER(%struct.iss_device* %25, i32 %26)
  %28 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %29 = load i32, i32* @SRC_HPS, align 4
  %30 = call i32 @IPIPE_PRINT_REGISTER(%struct.iss_device* %28, i32 %29)
  %31 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %32 = load i32, i32* @SRC_HSZ, align 4
  %33 = call i32 @IPIPE_PRINT_REGISTER(%struct.iss_device* %31, i32 %32)
  %34 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %35 = load i32, i32* @GCK_MMR, align 4
  %36 = call i32 @IPIPE_PRINT_REGISTER(%struct.iss_device* %34, i32 %35)
  %37 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %38 = load i32, i32* @YUV_PHS, align 4
  %39 = call i32 @IPIPE_PRINT_REGISTER(%struct.iss_device* %37, i32 %38)
  %40 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %41 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.iss_device* @to_iss_device(%struct.iss_ipipe_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @IPIPE_PRINT_REGISTER(%struct.iss_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
