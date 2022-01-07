; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/bdc/extr_bdc_dbg.c_bdc_dump_epsts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/bdc/extr_bdc_dbg.c_bdc_dump_epsts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdc = type { i32, i32 }

@BDC_EPSTS0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"BDC_EPSTS0:0x%08x\0A\00", align 1
@BDC_EPSTS1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"BDC_EPSTS1:0x%x\0A\00", align 1
@BDC_EPSTS2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"BDC_EPSTS2:0x%08x\0A\00", align 1
@BDC_EPSTS3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"BDC_EPSTS3:0x%08x\0A\00", align 1
@BDC_EPSTS4 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"BDC_EPSTS4:0x%08x\0A\00", align 1
@BDC_EPSTS5 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"BDC_EPSTS5:0x%08x\0A\00", align 1
@BDC_EPSTS6 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"BDC_EPSTS6:0x%08x\0A\00", align 1
@BDC_EPSTS7 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"BDC_EPSTS7:0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bdc_dump_epsts(%struct.bdc* %0) #0 {
  %2 = alloca %struct.bdc*, align 8
  %3 = alloca i32, align 4
  store %struct.bdc* %0, %struct.bdc** %2, align 8
  %4 = load %struct.bdc*, %struct.bdc** %2, align 8
  %5 = getelementptr inbounds %struct.bdc, %struct.bdc* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @BDC_EPSTS0, align 4
  %8 = call i32 @bdc_readl(i32 %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.bdc*, %struct.bdc** %2, align 8
  %10 = getelementptr inbounds %struct.bdc, %struct.bdc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @dev_vdbg(i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.bdc*, %struct.bdc** %2, align 8
  %15 = getelementptr inbounds %struct.bdc, %struct.bdc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @BDC_EPSTS1, align 4
  %18 = call i32 @bdc_readl(i32 %16, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load %struct.bdc*, %struct.bdc** %2, align 8
  %20 = getelementptr inbounds %struct.bdc, %struct.bdc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @dev_vdbg(i32 %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load %struct.bdc*, %struct.bdc** %2, align 8
  %25 = getelementptr inbounds %struct.bdc, %struct.bdc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BDC_EPSTS2, align 4
  %28 = call i32 @bdc_readl(i32 %26, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load %struct.bdc*, %struct.bdc** %2, align 8
  %30 = getelementptr inbounds %struct.bdc, %struct.bdc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @dev_vdbg(i32 %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load %struct.bdc*, %struct.bdc** %2, align 8
  %35 = getelementptr inbounds %struct.bdc, %struct.bdc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BDC_EPSTS3, align 4
  %38 = call i32 @bdc_readl(i32 %36, i32 %37)
  store i32 %38, i32* %3, align 4
  %39 = load %struct.bdc*, %struct.bdc** %2, align 8
  %40 = getelementptr inbounds %struct.bdc, %struct.bdc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @dev_vdbg(i32 %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  %44 = load %struct.bdc*, %struct.bdc** %2, align 8
  %45 = getelementptr inbounds %struct.bdc, %struct.bdc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @BDC_EPSTS4, align 4
  %48 = call i32 @bdc_readl(i32 %46, i32 %47)
  store i32 %48, i32* %3, align 4
  %49 = load %struct.bdc*, %struct.bdc** %2, align 8
  %50 = getelementptr inbounds %struct.bdc, %struct.bdc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @dev_vdbg(i32 %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  %54 = load %struct.bdc*, %struct.bdc** %2, align 8
  %55 = getelementptr inbounds %struct.bdc, %struct.bdc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @BDC_EPSTS5, align 4
  %58 = call i32 @bdc_readl(i32 %56, i32 %57)
  store i32 %58, i32* %3, align 4
  %59 = load %struct.bdc*, %struct.bdc** %2, align 8
  %60 = getelementptr inbounds %struct.bdc, %struct.bdc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @dev_vdbg(i32 %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %62)
  %64 = load %struct.bdc*, %struct.bdc** %2, align 8
  %65 = getelementptr inbounds %struct.bdc, %struct.bdc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @BDC_EPSTS6, align 4
  %68 = call i32 @bdc_readl(i32 %66, i32 %67)
  store i32 %68, i32* %3, align 4
  %69 = load %struct.bdc*, %struct.bdc** %2, align 8
  %70 = getelementptr inbounds %struct.bdc, %struct.bdc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @dev_vdbg(i32 %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %72)
  %74 = load %struct.bdc*, %struct.bdc** %2, align 8
  %75 = getelementptr inbounds %struct.bdc, %struct.bdc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @BDC_EPSTS7, align 4
  %78 = call i32 @bdc_readl(i32 %76, i32 %77)
  store i32 %78, i32* %3, align 4
  %79 = load %struct.bdc*, %struct.bdc** %2, align 8
  %80 = getelementptr inbounds %struct.bdc, %struct.bdc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @dev_vdbg(i32 %81, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %82)
  ret void
}

declare dso_local i32 @bdc_readl(i32, i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
