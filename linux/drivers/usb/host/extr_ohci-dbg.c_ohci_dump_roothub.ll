; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-dbg.c_ohci_dump_roothub.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-dbg.c_ohci_dump_roothub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ohci_hcd = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"roothub.a %08x POTPGT=%d%s%s%s%s%s NDP=%d(%d)\0A\00", align 1
@RH_A_POTPGT = common dso_local global i32 0, align 4
@RH_A_NOCP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" NOCP\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RH_A_OCPM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c" OCPM\00", align 1
@RH_A_DT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c" DT\00", align 1
@RH_A_NPS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c" NPS\00", align 1
@RH_A_PSM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c" PSM\00", align 1
@RH_A_NDP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"roothub.b %08x PPCM=%04x DR=%04x\0A\00", align 1
@RH_B_PPCM = common dso_local global i32 0, align 4
@RH_B_DR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"roothub.status %08x%s%s%s%s%s%s\0A\00", align 1
@RH_HS_CRWE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c" CRWE\00", align 1
@RH_HS_OCIC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c" OCIC\00", align 1
@RH_HS_LPSC = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c" LPSC\00", align 1
@RH_HS_DRWE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c" DRWE\00", align 1
@RH_HS_OCI = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c" OCI\00", align 1
@RH_HS_LPS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c" LPS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ohci_hcd*, i32, i8**, i32*)* @ohci_dump_roothub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ohci_dump_roothub(%struct.ohci_hcd* %0, i32 %1, i8** %2, i32* %3) #0 {
  %5 = alloca %struct.ohci_hcd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ohci_hcd* %0, %struct.ohci_hcd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %12 = call i32 @roothub_a(%struct.ohci_hcd* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %143

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %123

19:                                               ; preds = %16
  %20 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %21 = load i8**, i8*** %7, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @RH_A_POTPGT, align 4
  %26 = and i32 %24, %25
  %27 = ashr i32 %26, 24
  %28 = and i32 %27, 255
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @RH_A_NOCP, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @RH_A_OCPM, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @RH_A_DT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @RH_A_NPS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @RH_A_PSM, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @RH_A_NDP, align 4
  %61 = and i32 %59, %60
  %62 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %63 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (%struct.ohci_hcd*, i8**, i32*, i8*, i32, ...) @ohci_dbg_sw(%struct.ohci_hcd* %20, i8** %21, i32* %22, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %28, i8* %34, i8* %40, i8* %46, i8* %52, i8* %58, i32 %61, i32 %64)
  %66 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %67 = call i32 @roothub_b(%struct.ohci_hcd* %66)
  store i32 %67, i32* %9, align 4
  %68 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %69 = load i8**, i8*** %7, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @RH_B_PPCM, align 4
  %74 = and i32 %72, %73
  %75 = ashr i32 %74, 16
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @RH_B_DR, align 4
  %78 = and i32 %76, %77
  %79 = call i32 (%struct.ohci_hcd*, i8**, i32*, i8*, i32, ...) @ohci_dbg_sw(%struct.ohci_hcd* %68, i8** %69, i32* %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %71, i32 %75, i32 %78)
  %80 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %81 = call i32 @roothub_status(%struct.ohci_hcd* %80)
  store i32 %81, i32* %9, align 4
  %82 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %83 = load i8**, i8*** %7, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @RH_HS_CRWE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @RH_HS_OCIC, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @RH_HS_LPSC, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @RH_HS_DRWE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @RH_HS_OCI, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @RH_HS_LPS, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %122 = call i32 (%struct.ohci_hcd*, i8**, i32*, i8*, i32, ...) @ohci_dbg_sw(%struct.ohci_hcd* %82, i8** %83, i32* %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %85, i8* %91, i8* %97, i8* %103, i8* %109, i8* %115, i8* %121)
  br label %123

123:                                              ; preds = %19, %16
  store i32 0, i32* %10, align 4
  br label %124

124:                                              ; preds = %140, %123
  %125 = load i32, i32* %10, align 4
  %126 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %127 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %143

130:                                              ; preds = %124
  %131 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @roothub_portstatus(%struct.ohci_hcd* %131, i32 %132)
  store i32 %133, i32* %9, align 4
  %134 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load i8**, i8*** %7, align 8
  %138 = load i32*, i32** %8, align 8
  %139 = call i32 @dbg_port_sw(%struct.ohci_hcd* %134, i32 %135, i32 %136, i8** %137, i32* %138)
  br label %140

140:                                              ; preds = %130
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %10, align 4
  br label %124

143:                                              ; preds = %15, %124
  ret void
}

declare dso_local i32 @roothub_a(%struct.ohci_hcd*) #1

declare dso_local i32 @ohci_dbg_sw(%struct.ohci_hcd*, i8**, i32*, i8*, i32, ...) #1

declare dso_local i32 @roothub_b(%struct.ohci_hcd*) #1

declare dso_local i32 @roothub_status(%struct.ohci_hcd*) #1

declare dso_local i32 @roothub_portstatus(%struct.ohci_hcd*, i32) #1

declare dso_local i32 @dbg_port_sw(%struct.ohci_hcd*, i32, i32, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
