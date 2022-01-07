; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_nsp32.c_nsp32_getprom_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_nsp32.c_nsp32_getprom_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"No EEPROM detected: 0x%x\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid number: 0x%x\00", align 1
@PCI_VENDOR_ID_WORKBIT = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_WORKBIT_STANDARD = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_NINJASCSI_32BIB_LOGITEC = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_NINJASCSI_32UDE_MELCO = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Unknown EEPROM\00", align 1
@NSP32_DEBUG_EEPROM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"rom address 0x%x : 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @nsp32_getprom_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp32_getprom_param(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = call i32 @nsp32_prom_read(%struct.TYPE_8__* %19, i32 126)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 85
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load i32, i32* @KERN_INFO, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 (i32, i8*, ...) @nsp32_msg(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %2, align 4
  br label %94

28:                                               ; preds = %1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = call i32 @nsp32_prom_read(%struct.TYPE_8__* %29, i32 127)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 170
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i32, i32* @KERN_INFO, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 (i32, i8*, ...) @nsp32_msg(i32 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %2, align 4
  br label %94

38:                                               ; preds = %28
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @PCI_VENDOR_ID_WORKBIT, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @PCI_DEVICE_ID_WORKBIT_STANDARD, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = call i32 @nsp32_getprom_c16(%struct.TYPE_8__* %47)
  store i32 %48, i32* %6, align 4
  br label %77

49:                                               ; preds = %42, %38
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @PCI_VENDOR_ID_WORKBIT, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @PCI_DEVICE_ID_NINJASCSI_32BIB_LOGITEC, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = call i32 @nsp32_getprom_at24(%struct.TYPE_8__* %58)
  store i32 %59, i32* %6, align 4
  br label %76

60:                                               ; preds = %53, %49
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @PCI_VENDOR_ID_WORKBIT, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @PCI_DEVICE_ID_NINJASCSI_32UDE_MELCO, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = call i32 @nsp32_getprom_at24(%struct.TYPE_8__* %69)
  store i32 %70, i32* %6, align 4
  br label %75

71:                                               ; preds = %64, %60
  %72 = load i32, i32* @KERN_WARNING, align 4
  %73 = call i32 (i32, i8*, ...) @nsp32_msg(i32 %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %71, %68
  br label %76

76:                                               ; preds = %75, %57
  br label %77

77:                                               ; preds = %76, %46
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %89, %77
  %79 = load i32, i32* %8, align 4
  %80 = icmp sle i32 %79, 31
  br i1 %80, label %81, label %92

81:                                               ; preds = %78
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @nsp32_prom_read(%struct.TYPE_8__* %82, i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* @NSP32_DEBUG_EEPROM, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @nsp32_dbg(i32 %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %81
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %78

92:                                               ; preds = %78
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %33, %23
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @nsp32_prom_read(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @nsp32_msg(i32, i8*, ...) #1

declare dso_local i32 @nsp32_getprom_c16(%struct.TYPE_8__*) #1

declare dso_local i32 @nsp32_getprom_at24(%struct.TYPE_8__*) #1

declare dso_local i32 @nsp32_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
