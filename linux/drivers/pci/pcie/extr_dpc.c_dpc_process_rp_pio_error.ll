; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_dpc.c_dpc_process_rp_pio_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_dpc.c_dpc_process_rp_pio_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpc_dev = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCI_EXP_DPC_RP_PIO_STATUS = common dso_local global i32 0, align 4
@PCI_EXP_DPC_RP_PIO_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"rp_pio_status: %#010x, rp_pio_mask: %#010x\0A\00", align 1
@PCI_EXP_DPC_RP_PIO_SEVERITY = common dso_local global i32 0, align 4
@PCI_EXP_DPC_RP_PIO_SYSERROR = common dso_local global i32 0, align 4
@PCI_EXP_DPC_RP_PIO_EXCEPTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"RP PIO severity=%#010x, syserror=%#010x, exception=%#010x\0A\00", align 1
@PCI_EXP_DPC_STATUS = common dso_local global i32 0, align 4
@rp_pio_error_string = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"[%2d] %s%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" (First)\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PCI_EXP_DPC_RP_PIO_HEADER_LOG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"TLP Header: %#010x %#010x %#010x %#010x\0A\00", align 1
@PCI_EXP_DPC_RP_PIO_IMPSPEC_LOG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"RP PIO ImpSpec Log %#010x\0A\00", align 1
@PCI_EXP_DPC_RP_PIO_TLPPREFIX_LOG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"TLP Prefix Header: dw%d, %#010x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpc_dev*)* @dpc_process_rp_pio_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpc_process_rp_pio_error(%struct.dpc_dev* %0) #0 {
  %2 = alloca %struct.dpc_dev*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.dpc_dev* %0, %struct.dpc_dev** %2, align 8
  %19 = load %struct.dpc_dev*, %struct.dpc_dev** %2, align 8
  %20 = getelementptr inbounds %struct.dpc_dev, %struct.dpc_dev* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.pci_dev*, %struct.pci_dev** %22, align 8
  store %struct.pci_dev* %23, %struct.pci_dev** %3, align 8
  %24 = load %struct.dpc_dev*, %struct.dpc_dev** %2, align 8
  %25 = getelementptr inbounds %struct.dpc_dev, %struct.dpc_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %4, align 4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @PCI_EXP_DPC_RP_PIO_STATUS, align 4
  %30 = add nsw i32 %28, %29
  %31 = call i32 @pci_read_config_dword(%struct.pci_dev* %27, i32 %30, i32* %7)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @PCI_EXP_DPC_RP_PIO_MASK, align 4
  %35 = add nsw i32 %33, %34
  %36 = call i32 @pci_read_config_dword(%struct.pci_dev* %32, i32 %35, i32* %8)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 (%struct.pci_dev*, i8*, i32, ...) @pci_err(%struct.pci_dev* %37, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @PCI_EXP_DPC_RP_PIO_SEVERITY, align 4
  %44 = add nsw i32 %42, %43
  %45 = call i32 @pci_read_config_dword(%struct.pci_dev* %41, i32 %44, i32* %9)
  %46 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @PCI_EXP_DPC_RP_PIO_SYSERROR, align 4
  %49 = add nsw i32 %47, %48
  %50 = call i32 @pci_read_config_dword(%struct.pci_dev* %46, i32 %49, i32* %10)
  %51 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @PCI_EXP_DPC_RP_PIO_EXCEPTION, align 4
  %54 = add nsw i32 %52, %53
  %55 = call i32 @pci_read_config_dword(%struct.pci_dev* %51, i32 %54, i32* %11)
  %56 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 (%struct.pci_dev*, i8*, i32, ...) @pci_err(%struct.pci_dev* %56, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58, i32 %59)
  %61 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @PCI_EXP_DPC_STATUS, align 4
  %64 = add nsw i32 %62, %63
  %65 = call i32 @pci_read_config_word(%struct.pci_dev* %61, i32 %64, i32* %5)
  %66 = load i32, i32* %5, align 4
  %67 = and i32 %66, 7936
  %68 = ashr i32 %67, 8
  store i32 %68, i32* %6, align 4
  store i32 0, i32* %18, align 4
  br label %69

69:                                               ; preds = %98, %1
  %70 = load i32, i32* %18, align 4
  %71 = load i32*, i32** @rp_pio_error_string, align 8
  %72 = call i32 @ARRAY_SIZE(i32* %71)
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %101

74:                                               ; preds = %69
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = xor i32 %76, -1
  %78 = and i32 %75, %77
  %79 = load i32, i32* %18, align 4
  %80 = shl i32 1, %79
  %81 = and i32 %78, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %74
  %84 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %85 = load i32, i32* %18, align 4
  %86 = load i32*, i32** @rp_pio_error_string, align 8
  %87 = load i32, i32* %18, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %18, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %96 = call i32 (%struct.pci_dev*, i8*, i32, ...) @pci_err(%struct.pci_dev* %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %90, i8* %95)
  br label %97

97:                                               ; preds = %83, %74
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %18, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %18, align 4
  br label %69

101:                                              ; preds = %69
  %102 = load %struct.dpc_dev*, %struct.dpc_dev** %2, align 8
  %103 = getelementptr inbounds %struct.dpc_dev, %struct.dpc_dev* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %104, 4
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %172

107:                                              ; preds = %101
  %108 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @PCI_EXP_DPC_RP_PIO_HEADER_LOG, align 4
  %111 = add nsw i32 %109, %110
  %112 = call i32 @pci_read_config_dword(%struct.pci_dev* %108, i32 %111, i32* %12)
  %113 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @PCI_EXP_DPC_RP_PIO_HEADER_LOG, align 4
  %116 = add nsw i32 %114, %115
  %117 = add nsw i32 %116, 4
  %118 = call i32 @pci_read_config_dword(%struct.pci_dev* %113, i32 %117, i32* %13)
  %119 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @PCI_EXP_DPC_RP_PIO_HEADER_LOG, align 4
  %122 = add nsw i32 %120, %121
  %123 = add nsw i32 %122, 8
  %124 = call i32 @pci_read_config_dword(%struct.pci_dev* %119, i32 %123, i32* %14)
  %125 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @PCI_EXP_DPC_RP_PIO_HEADER_LOG, align 4
  %128 = add nsw i32 %126, %127
  %129 = add nsw i32 %128, 12
  %130 = call i32 @pci_read_config_dword(%struct.pci_dev* %125, i32 %129, i32* %15)
  %131 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %15, align 4
  %136 = call i32 (%struct.pci_dev*, i8*, i32, ...) @pci_err(%struct.pci_dev* %131, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %132, i32 %133, i32 %134, i32 %135)
  %137 = load %struct.dpc_dev*, %struct.dpc_dev** %2, align 8
  %138 = getelementptr inbounds %struct.dpc_dev, %struct.dpc_dev* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp slt i32 %139, 5
  br i1 %140, label %141, label %142

141:                                              ; preds = %107
  br label %172

142:                                              ; preds = %107
  %143 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* @PCI_EXP_DPC_RP_PIO_IMPSPEC_LOG, align 4
  %146 = add nsw i32 %144, %145
  %147 = call i32 @pci_read_config_dword(%struct.pci_dev* %143, i32 %146, i32* %16)
  %148 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %149 = load i32, i32* %16, align 4
  %150 = call i32 (%struct.pci_dev*, i8*, i32, ...) @pci_err(%struct.pci_dev* %148, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %149)
  store i32 0, i32* %18, align 4
  br label %151

151:                                              ; preds = %168, %142
  %152 = load i32, i32* %18, align 4
  %153 = load %struct.dpc_dev*, %struct.dpc_dev** %2, align 8
  %154 = getelementptr inbounds %struct.dpc_dev, %struct.dpc_dev* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = sub nsw i32 %155, 5
  %157 = icmp slt i32 %152, %156
  br i1 %157, label %158, label %171

158:                                              ; preds = %151
  %159 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* @PCI_EXP_DPC_RP_PIO_TLPPREFIX_LOG, align 4
  %162 = add nsw i32 %160, %161
  %163 = call i32 @pci_read_config_dword(%struct.pci_dev* %159, i32 %162, i32* %17)
  %164 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %165 = load i32, i32* %18, align 4
  %166 = load i32, i32* %17, align 4
  %167 = call i32 (%struct.pci_dev*, i8*, i32, ...) @pci_err(%struct.pci_dev* %164, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %158
  %169 = load i32, i32* %18, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %18, align 4
  br label %151

171:                                              ; preds = %151
  br label %172

172:                                              ; preds = %171, %141, %106
  %173 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* @PCI_EXP_DPC_RP_PIO_STATUS, align 4
  %176 = add nsw i32 %174, %175
  %177 = load i32, i32* %7, align 4
  %178 = call i32 @pci_write_config_dword(%struct.pci_dev* %173, i32 %176, i32 %177)
  ret void
}

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_err(%struct.pci_dev*, i8*, i32, ...) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
