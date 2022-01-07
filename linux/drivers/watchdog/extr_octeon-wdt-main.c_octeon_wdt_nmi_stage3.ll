; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_octeon-wdt-main.c_octeon_wdt_nmi_stage3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_octeon-wdt-main.c_octeon_wdt_nmi_stage3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_ciu_wdogx = type { i8* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"\0D\0A*** NMI Watchdog interrupt on Core 0x\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" ***\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@reg_name = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"\090x\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"\09err_epc\090x\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"\09epc\090x\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"\09status\090x\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"\09cause\090x\00", align 1
@OCTEON_CN68XX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"\09src_wd\090x\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"\09en_wd\090x\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"\09src_rml\090x\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"\09en_rml\090x\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"\09sum\090x\00", align 1
@OCTEON_FEATURE_CIU3 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"\09sum0\090x\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"\09en0\090x\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"*** Chip soft reset soon ***\0D\0A\00", align 1
@OCTEON_CN70XX = common dso_local global i32 0, align 4
@CVMX_RST_SOFT_RST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @octeon_wdt_nmi_stage3(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.cvmx_ciu_wdogx, align 8
  store i32* %0, i32** %2, align 8
  %13 = call i32 (...) @cvmx_get_core_num()
  store i32 %13, i32* %4, align 4
  %14 = call i32 (...) @read_c0_cause()
  store i32 %14, i32* %5, align 4
  %15 = call i32 (...) @read_c0_status()
  store i32 %15, i32* %6, align 4
  %16 = call i32 (...) @read_c0_errorepc()
  store i32 %16, i32* %7, align 4
  %17 = call i32 (...) @read_c0_epc()
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %4, align 4
  %19 = mul i32 85000, %18
  %20 = call i32 @udelay(i32 %19)
  %21 = call i32 @octeon_wdt_write_string(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @octeon_wdt_write_hex(i32 %22, i32 2)
  %24 = call i32 @octeon_wdt_write_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %49, %1
  %26 = load i32, i32* %3, align 4
  %27 = icmp slt i32 %26, 32
  br i1 %27, label %28, label %52

28:                                               ; preds = %25
  %29 = call i32 @octeon_wdt_write_string(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i8**, i8*** @reg_name, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @octeon_wdt_write_string(i8* %34)
  %36 = call i32 @octeon_wdt_write_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @octeon_wdt_write_hex(i32 %41, i32 16)
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, 1
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %28
  %47 = call i32 @octeon_wdt_write_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %28
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %25

52:                                               ; preds = %25
  %53 = call i32 @octeon_wdt_write_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @octeon_wdt_write_hex(i32 %54, i32 16)
  %56 = call i32 @octeon_wdt_write_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @octeon_wdt_write_hex(i32 %57, i32 16)
  %59 = call i32 @octeon_wdt_write_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %60 = call i32 @octeon_wdt_write_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @octeon_wdt_write_hex(i32 %61, i32 16)
  %63 = call i32 @octeon_wdt_write_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @octeon_wdt_write_hex(i32 %64, i32 16)
  %66 = call i32 @octeon_wdt_write_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %67 = load i32, i32* @OCTEON_CN68XX, align 4
  %68 = call i64 @OCTEON_IS_MODEL(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %99

70:                                               ; preds = %52
  %71 = call i32 @octeon_wdt_write_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @CVMX_CIU2_SRC_PPX_IP2_WDOG(i32 %72)
  %74 = call i32 @cvmx_read_csr(i32 %73)
  %75 = call i32 @octeon_wdt_write_hex(i32 %74, i32 16)
  %76 = call i32 @octeon_wdt_write_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @CVMX_CIU2_EN_PPX_IP2_WDOG(i32 %77)
  %79 = call i32 @cvmx_read_csr(i32 %78)
  %80 = call i32 @octeon_wdt_write_hex(i32 %79, i32 16)
  %81 = call i32 @octeon_wdt_write_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %82 = call i32 @octeon_wdt_write_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @CVMX_CIU2_SRC_PPX_IP2_RML(i32 %83)
  %85 = call i32 @cvmx_read_csr(i32 %84)
  %86 = call i32 @octeon_wdt_write_hex(i32 %85, i32 16)
  %87 = call i32 @octeon_wdt_write_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @CVMX_CIU2_EN_PPX_IP2_RML(i32 %88)
  %90 = call i32 @cvmx_read_csr(i32 %89)
  %91 = call i32 @octeon_wdt_write_hex(i32 %90, i32 16)
  %92 = call i32 @octeon_wdt_write_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %93 = call i32 @octeon_wdt_write_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @CVMX_CIU2_SUM_PPX_IP2(i32 %94)
  %96 = call i32 @cvmx_read_csr(i32 %95)
  %97 = call i32 @octeon_wdt_write_hex(i32 %96, i32 16)
  %98 = call i32 @octeon_wdt_write_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %118

99:                                               ; preds = %52
  %100 = load i32, i32* @OCTEON_FEATURE_CIU3, align 4
  %101 = call i32 @octeon_has_feature(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %117, label %103

103:                                              ; preds = %99
  %104 = call i32 @octeon_wdt_write_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %105 = load i32, i32* %4, align 4
  %106 = mul i32 %105, 2
  %107 = call i32 @CVMX_CIU_INTX_SUM0(i32 %106)
  %108 = call i32 @cvmx_read_csr(i32 %107)
  %109 = call i32 @octeon_wdt_write_hex(i32 %108, i32 16)
  %110 = call i32 @octeon_wdt_write_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %111 = load i32, i32* %4, align 4
  %112 = mul i32 %111, 2
  %113 = call i32 @CVMX_CIU_INTX_EN0(i32 %112)
  %114 = call i32 @cvmx_read_csr(i32 %113)
  %115 = call i32 @octeon_wdt_write_hex(i32 %114, i32 16)
  %116 = call i32 @octeon_wdt_write_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %117

117:                                              ; preds = %103, %99
  br label %118

118:                                              ; preds = %117, %70
  %119 = call i32 @octeon_wdt_write_string(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0))
  %120 = call i64 (...) @OCTEON_IS_OCTEON3()
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %151

122:                                              ; preds = %118
  %123 = load i32, i32* @OCTEON_CN70XX, align 4
  %124 = call i64 @OCTEON_IS_MODEL(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %151, label %126

126:                                              ; preds = %122
  %127 = call i32 (...) @cvmx_get_node_num()
  store i32 %127, i32* %10, align 4
  %128 = call i32 (...) @cvmx_get_local_core_num()
  store i32 %128, i32* %11, align 4
  br label %129

129:                                              ; preds = %135, %126
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @CVMX_CIU_WDOGX(i32 %131)
  %133 = call i8* @cvmx_read_csr_node(i32 %130, i32 %132)
  %134 = bitcast %union.cvmx_ciu_wdogx* %12 to i8**
  store i8* %133, i8** %134, align 8
  br label %135

135:                                              ; preds = %129
  %136 = bitcast %union.cvmx_ciu_wdogx* %12 to %struct.TYPE_2__*
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp sgt i32 %138, 65536
  br i1 %139, label %129, label %140

140:                                              ; preds = %135
  %141 = call i32 @CVMX_GSERX_SCRATCH(i32 0)
  %142 = call i8* @cvmx_read_csr_node(i32 0, i32 %141)
  %143 = ptrtoint i8* %142 to i32
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %9, align 4
  %145 = or i32 %144, 2048
  store i32 %145, i32* %9, align 4
  %146 = call i32 @CVMX_GSERX_SCRATCH(i32 0)
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @cvmx_write_csr_node(i32 0, i32 %146, i32 %147)
  %149 = load i32, i32* @CVMX_RST_SOFT_RST, align 4
  %150 = call i32 @cvmx_write_csr_node(i32 0, i32 %149, i32 1)
  br label %151

151:                                              ; preds = %140, %122, %118
  ret void
}

declare dso_local i32 @cvmx_get_core_num(...) #1

declare dso_local i32 @read_c0_cause(...) #1

declare dso_local i32 @read_c0_status(...) #1

declare dso_local i32 @read_c0_errorepc(...) #1

declare dso_local i32 @read_c0_epc(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @octeon_wdt_write_string(i8*) #1

declare dso_local i32 @octeon_wdt_write_hex(i32, i32) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_CIU2_SRC_PPX_IP2_WDOG(i32) #1

declare dso_local i32 @CVMX_CIU2_EN_PPX_IP2_WDOG(i32) #1

declare dso_local i32 @CVMX_CIU2_SRC_PPX_IP2_RML(i32) #1

declare dso_local i32 @CVMX_CIU2_EN_PPX_IP2_RML(i32) #1

declare dso_local i32 @CVMX_CIU2_SUM_PPX_IP2(i32) #1

declare dso_local i32 @octeon_has_feature(i32) #1

declare dso_local i32 @CVMX_CIU_INTX_SUM0(i32) #1

declare dso_local i32 @CVMX_CIU_INTX_EN0(i32) #1

declare dso_local i64 @OCTEON_IS_OCTEON3(...) #1

declare dso_local i32 @cvmx_get_node_num(...) #1

declare dso_local i32 @cvmx_get_local_core_num(...) #1

declare dso_local i8* @cvmx_read_csr_node(i32, i32) #1

declare dso_local i32 @CVMX_CIU_WDOGX(i32) #1

declare dso_local i32 @CVMX_GSERX_SCRATCH(i32) #1

declare dso_local i32 @cvmx_write_csr_node(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
