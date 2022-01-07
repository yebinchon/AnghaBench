; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_adapter_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_adapter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterCtlBlk = type { i64, i32, i32, i32, i32, i32, i32 }

@DC395X_NAME = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to reserve IO region 0x%lx\0A\00", align 1
@dc395x_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to register IRQ\0A\00", align 1
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Memory allocation for SG tables failed\0A\00", align 1
@DBG_0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [88 x i8] c"adapter_init: acb=%p, pdcb_map=%p psrb_array=%p size{acb=0x%04x dcb=0x%04x srb=0x%04x}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.AdapterCtlBlk*, i64, i32, i32)* @adapter_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adapter_init(%struct.AdapterCtlBlk* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.AdapterCtlBlk*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.AdapterCtlBlk* %0, %struct.AdapterCtlBlk** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i64, i64* %7, align 8
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @DC395X_NAME, align 4
  %13 = call i32 @request_region(i64 %10, i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @KERN_ERR, align 4
  %17 = load i64, i64* %7, align 8
  %18 = call i32 (i32, i8*, ...) @dprintkl(i32 %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %17)
  br label %75

19:                                               ; preds = %4
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %6, align 8
  %22 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %6, align 8
  %25 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @dc395x_interrupt, align 4
  %28 = load i32, i32* @IRQF_SHARED, align 4
  %29 = load i32, i32* @DC395X_NAME, align 4
  %30 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %6, align 8
  %31 = call i64 @request_irq(i32 %26, i32 %27, i32 %28, i32 %29, %struct.AdapterCtlBlk* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %19
  %34 = load i32, i32* @KERN_INFO, align 4
  %35 = call i32 (i32, i8*, ...) @dprintkl(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %75

36:                                               ; preds = %19
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %6, align 8
  %39 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %6, align 8
  %41 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %40, i32 0, i32 6
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @check_eeprom(i32* %41, i64 %42)
  %44 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %6, align 8
  %45 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %44, i32 0, i32 6
  %46 = call i32 @print_eeprom_settings(i32* %45)
  %47 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %6, align 8
  %48 = call i32 @adapter_init_params(%struct.AdapterCtlBlk* %47)
  %49 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %6, align 8
  %50 = call i32 @adapter_print_config(%struct.AdapterCtlBlk* %49)
  %51 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %6, align 8
  %52 = call i64 @adapter_sg_tables_alloc(%struct.AdapterCtlBlk* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %36
  %55 = load i32, i32* @KERN_DEBUG, align 4
  %56 = call i32 (i32, i8*, ...) @dprintkl(i32 %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %75

57:                                               ; preds = %36
  %58 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %6, align 8
  %59 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @adapter_init_scsi_host(i32 %60)
  %62 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %6, align 8
  %63 = call i32 @adapter_init_chip(%struct.AdapterCtlBlk* %62)
  %64 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %6, align 8
  %65 = call i32 @set_basic_config(%struct.AdapterCtlBlk* %64)
  %66 = load i32, i32* @DBG_0, align 4
  %67 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %6, align 8
  %68 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %6, align 8
  %69 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %6, align 8
  %72 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @dprintkdbg(i32 %66, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.3, i64 0, i64 0), %struct.AdapterCtlBlk* %67, i32 %70, i32 %73, i32 32, i32 4, i32 4)
  store i32 0, i32* %5, align 4
  br label %102

75:                                               ; preds = %54, %33, %15
  %76 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %6, align 8
  %77 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %6, align 8
  %82 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %6, align 8
  %85 = call i32 @free_irq(i32 %83, %struct.AdapterCtlBlk* %84)
  br label %86

86:                                               ; preds = %80, %75
  %87 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %6, align 8
  %88 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %6, align 8
  %93 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %6, align 8
  %96 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @release_region(i64 %94, i32 %97)
  br label %99

99:                                               ; preds = %91, %86
  %100 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %6, align 8
  %101 = call i32 @adapter_sg_tables_free(%struct.AdapterCtlBlk* %100)
  store i32 1, i32* %5, align 4
  br label %102

102:                                              ; preds = %99, %57
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @request_region(i64, i32, i32) #1

declare dso_local i32 @dprintkl(i32, i8*, ...) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.AdapterCtlBlk*) #1

declare dso_local i32 @check_eeprom(i32*, i64) #1

declare dso_local i32 @print_eeprom_settings(i32*) #1

declare dso_local i32 @adapter_init_params(%struct.AdapterCtlBlk*) #1

declare dso_local i32 @adapter_print_config(%struct.AdapterCtlBlk*) #1

declare dso_local i64 @adapter_sg_tables_alloc(%struct.AdapterCtlBlk*) #1

declare dso_local i32 @adapter_init_scsi_host(i32) #1

declare dso_local i32 @adapter_init_chip(%struct.AdapterCtlBlk*) #1

declare dso_local i32 @set_basic_config(%struct.AdapterCtlBlk*) #1

declare dso_local i32 @dprintkdbg(i32, i8*, %struct.AdapterCtlBlk*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.AdapterCtlBlk*) #1

declare dso_local i32 @release_region(i64, i32) #1

declare dso_local i32 @adapter_sg_tables_free(%struct.AdapterCtlBlk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
