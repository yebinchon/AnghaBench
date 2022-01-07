; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_hpwdt.c_hpwdt_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_hpwdt.c_hpwdt_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32*, i64, i32 }
%struct.pci_dev = type { i64, i32 }
%struct.pci_device_id = type { i32, i32 }

@PCI_VENDOR_ID_HP = common dso_local global i64 0, align 8
@PCI_VENDOR_ID_HP_3PAR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"This server does not have an iLO2+ ASIC.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@hpwdt_blacklist = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Not supported on this device\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Not possible to enable PCI Device: 0x%x:0x%x.\0A\00", align 1
@pci_mem_addr = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"Unable to detect the iLO2+ server memory.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@hpwdt_nmistat = common dso_local global i8* null, align 8
@hpwdt_timer_reg = common dso_local global i8* null, align 8
@hpwdt_timer_con = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"timer is running\0A\00", align 1
@WDOG_HW_RUNNING = common dso_local global i32 0, align 4
@hpwdt_dev = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@nowayout = common dso_local global i32 0, align 4
@soft_margin = common dso_local global i32 0, align 4
@pretimeout = common dso_local global i64 0, align 8
@PRETIMEOUT_SEC = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [51 x i8] c"timeout <= pretimeout. Setting pretimeout to zero\0A\00", align 1
@kdumptimeout = common dso_local global i8* null, align 8
@HPWDT_MAX_TIMER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"HPE Watchdog Timer Driver: Version: %s\0A\00", align 1
@HPWDT_VERSION = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"timeout: %d seconds (nowayout=%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"pretimeout: %s.\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"kdumptimeout: %d.\0A\00", align 1
@ilo5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @hpwdt_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpwdt_init_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PCI_VENDOR_ID_HP, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PCI_VENDOR_ID_HP_3PAR, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 1
  %21 = call i32 (i32*, i8*, ...) @dev_warn(i32* %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %154

24:                                               ; preds = %12, %2
  %25 = load i32, i32* @hpwdt_blacklist, align 4
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = call i64 @pci_match_id(i32 %25, %struct.pci_dev* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 1
  %32 = call i32 @dev_dbg(i32* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %154

35:                                               ; preds = %24
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = call i64 @pci_enable_device(%struct.pci_dev* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 1
  %42 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %43 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %46 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32*, i8*, ...) @dev_warn(i32* %41, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %47)
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %154

51:                                               ; preds = %35
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = call i8* @pci_iomap(%struct.pci_dev* %52, i32 1, i32 128)
  store i8* %53, i8** @pci_mem_addr, align 8
  %54 = load i8*, i8** @pci_mem_addr, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 1
  %59 = call i32 (i32*, i8*, ...) @dev_warn(i32* %58, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %150

62:                                               ; preds = %51
  %63 = load i8*, i8** @pci_mem_addr, align 8
  %64 = getelementptr i8, i8* %63, i64 110
  store i8* %64, i8** @hpwdt_nmistat, align 8
  %65 = load i8*, i8** @pci_mem_addr, align 8
  %66 = getelementptr i8, i8* %65, i64 112
  store i8* %66, i8** @hpwdt_timer_reg, align 8
  %67 = load i8*, i8** @pci_mem_addr, align 8
  %68 = getelementptr i8, i8* %67, i64 114
  store i8* %68, i8** @hpwdt_timer_con, align 8
  %69 = call i64 (...) @hpwdt_hw_is_running()
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %62
  %72 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 1
  %74 = call i32 (i32*, i8*, ...) @dev_info(i32* %73, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %75 = load i32, i32* @WDOG_HW_RUNNING, align 4
  %76 = call i32 @set_bit(i32 %75, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hpwdt_dev, i32 0, i32 3))
  br label %77

77:                                               ; preds = %71, %62
  %78 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %79 = call i32 @hpwdt_init_nmi_decoding(%struct.pci_dev* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %146

83:                                               ; preds = %77
  %84 = call i32 @watchdog_stop_on_unregister(%struct.TYPE_6__* @hpwdt_dev)
  %85 = load i32, i32* @nowayout, align 4
  %86 = call i32 @watchdog_set_nowayout(%struct.TYPE_6__* @hpwdt_dev, i32 %85)
  %87 = load i32, i32* @soft_margin, align 4
  %88 = call i32 @watchdog_init_timeout(%struct.TYPE_6__* @hpwdt_dev, i32 %87, i32* null)
  %89 = load i64, i64* @pretimeout, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %83
  %92 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hpwdt_dev, i32 0, i32 0), align 8
  %93 = load i64, i64* @PRETIMEOUT_SEC, align 8
  %94 = icmp sle i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %97 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %96, i32 0, i32 1
  %98 = call i32 (i32*, i8*, ...) @dev_warn(i32* %97, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  store i64 0, i64* @pretimeout, align 8
  br label %99

99:                                               ; preds = %95, %91, %83
  %100 = load i64, i64* @pretimeout, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i64, i64* @PRETIMEOUT_SEC, align 8
  br label %105

104:                                              ; preds = %99
  br label %105

105:                                              ; preds = %104, %102
  %106 = phi i64 [ %103, %102 ], [ 0, %104 ]
  store i64 %106, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hpwdt_dev, i32 0, i32 2), align 8
  %107 = load i8*, i8** @kdumptimeout, align 8
  %108 = load i32, i32* @HPWDT_MAX_TIMER, align 4
  %109 = call i8* @min(i8* %107, i32 %108)
  store i8* %109, i8** @kdumptimeout, align 8
  %110 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %111 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %110, i32 0, i32 1
  store i32* %111, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hpwdt_dev, i32 0, i32 1), align 8
  %112 = call i32 @watchdog_register_device(%struct.TYPE_6__* @hpwdt_dev)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  br label %144

116:                                              ; preds = %105
  %117 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %118 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %117, i32 0, i32 1
  %119 = load i8*, i8** @HPWDT_VERSION, align 8
  %120 = call i32 (i32*, i8*, ...) @dev_info(i32* %118, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i8* %119)
  %121 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %122 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %121, i32 0, i32 1
  %123 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hpwdt_dev, i32 0, i32 0), align 8
  %124 = load i32, i32* @nowayout, align 4
  %125 = call i32 (i32*, i8*, ...) @dev_info(i32* %122, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i64 %123, i32 %124)
  %126 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %127 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %126, i32 0, i32 1
  %128 = load i64, i64* @pretimeout, align 8
  %129 = icmp ne i64 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)
  %132 = call i32 (i32*, i8*, ...) @dev_info(i32* %127, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %131)
  %133 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %134 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %133, i32 0, i32 1
  %135 = load i8*, i8** @kdumptimeout, align 8
  %136 = call i32 (i32*, i8*, ...) @dev_info(i32* %134, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* %135)
  %137 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %138 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @PCI_VENDOR_ID_HP_3PAR, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %116
  store i32 1, i32* @ilo5, align 4
  br label %143

143:                                              ; preds = %142, %116
  store i32 0, i32* %3, align 4
  br label %154

144:                                              ; preds = %115
  %145 = call i32 (...) @hpwdt_exit_nmi_decoding()
  br label %146

146:                                              ; preds = %144, %82
  %147 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %148 = load i8*, i8** @pci_mem_addr, align 8
  %149 = call i32 @pci_iounmap(%struct.pci_dev* %147, i8* %148)
  br label %150

150:                                              ; preds = %146, %56
  %151 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %152 = call i32 @pci_disable_device(%struct.pci_dev* %151)
  %153 = load i32, i32* %6, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %150, %143, %39, %29, %18
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i64 @pci_match_id(i32, %struct.pci_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i8* @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i64 @hpwdt_hw_is_running(...) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hpwdt_init_nmi_decoding(%struct.pci_dev*) #1

declare dso_local i32 @watchdog_stop_on_unregister(%struct.TYPE_6__*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i8* @min(i8*, i32) #1

declare dso_local i32 @watchdog_register_device(%struct.TYPE_6__*) #1

declare dso_local i32 @hpwdt_exit_nmi_decoding(...) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
