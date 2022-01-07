; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_debugfs.c_dwc3_host_lsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_debugfs.c_dwc3_host_lsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.dwc3* }
%struct.dwc3 = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DWC3_GHWPARAMS1_ENDBC = common dso_local global i32 0, align 4
@DWC3_LSP_MUX_UNSELECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Write LSP selection to print for host\0A\00", align 1
@DWC3_GDBGLSPMUX = common dso_local global i32 0, align 4
@DWC3_GDBGLSP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"GDBGLSP[%d] = 0x%08x\0A\00", align 1
@DWC3_GDBGLSPMUX_ENDBC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"GDBGLSP_DBC[%d] = 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*)* @dwc3_host_lsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_host_lsp(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca %struct.dwc3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.dwc3*, %struct.dwc3** %9, align 8
  store %struct.dwc3* %10, %struct.dwc3** %3, align 8
  %11 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %12 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @DWC3_GHWPARAMS1_ENDBC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %4, align 4
  %21 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %22 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @DWC3_LSP_MUX_UNSELECTED, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %29 = call i32 @seq_puts(%struct.seq_file* %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %72

30:                                               ; preds = %1
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @DWC3_GDBGLSPMUX_HOSTSELECT(i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %34 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DWC3_GDBGLSPMUX, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @dwc3_writel(i32 %35, i32 %36, i32 %37)
  %39 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %40 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @DWC3_GDBGLSP, align 4
  %43 = call i32 @dwc3_readl(i32 %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @seq_printf(%struct.seq_file* %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %30
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 256
  br i1 %52, label %53, label %72

53:                                               ; preds = %50
  %54 = load i32, i32* @DWC3_GDBGLSPMUX_ENDBC, align 4
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %58 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @DWC3_GDBGLSPMUX, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @dwc3_writel(i32 %59, i32 %60, i32 %61)
  %63 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %64 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @DWC3_GDBGLSP, align 4
  %67 = call i32 @dwc3_readl(i32 %65, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @seq_printf(%struct.seq_file* %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %27, %53, %50, %30
  ret void
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @DWC3_GDBGLSPMUX_HOSTSELECT(i32) #1

declare dso_local i32 @dwc3_writel(i32, i32, i32) #1

declare dso_local i32 @dwc3_readl(i32, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
