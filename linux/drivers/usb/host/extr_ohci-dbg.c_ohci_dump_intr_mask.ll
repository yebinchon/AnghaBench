; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-dbg.c_ohci_dump_intr_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-dbg.c_ohci_dump_intr_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ohci_hcd = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"%s 0x%08x%s%s%s%s%s%s%s%s%s\0A\00", align 1
@OHCI_INTR_MIE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" MIE\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@OHCI_INTR_OC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c" OC\00", align 1
@OHCI_INTR_RHSC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c" RHSC\00", align 1
@OHCI_INTR_FNO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c" FNO\00", align 1
@OHCI_INTR_UE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c" UE\00", align 1
@OHCI_INTR_RD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c" RD\00", align 1
@OHCI_INTR_SF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c" SF\00", align 1
@OHCI_INTR_WDH = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c" WDH\00", align 1
@OHCI_INTR_SO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c" SO\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ohci_hcd*, i8*, i32, i8**, i32*)* @ohci_dump_intr_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ohci_dump_intr_mask(%struct.ohci_hcd* %0, i8* %1, i32 %2, i8** %3, i32* %4) #0 {
  %6 = alloca %struct.ohci_hcd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  store %struct.ohci_hcd* %0, %struct.ohci_hcd** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load %struct.ohci_hcd*, %struct.ohci_hcd** %6, align 8
  %12 = load i8**, i8*** %9, align 8
  %13 = load i32*, i32** %10, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @OHCI_INTR_MIE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @OHCI_INTR_OC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @OHCI_INTR_RHSC, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @OHCI_INTR_FNO, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @OHCI_INTR_UE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @OHCI_INTR_RD, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @OHCI_INTR_SF, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @OHCI_INTR_WDH, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @OHCI_INTR_SO, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %70 = call i32 @ohci_dbg_sw(%struct.ohci_hcd* %11, i8** %12, i32* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %15, i8* %21, i8* %27, i8* %33, i8* %39, i8* %45, i8* %51, i8* %57, i8* %63, i8* %69)
  ret void
}

declare dso_local i32 @ohci_dbg_sw(%struct.ohci_hcd*, i8**, i32*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
