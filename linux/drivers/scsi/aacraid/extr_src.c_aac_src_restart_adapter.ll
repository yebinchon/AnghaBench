; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_src.c_aac_src_restart_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_src.c_aac_src_restart_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.aac_dev = type { %struct.TYPE_5__*, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"adapter kernel panic'd %x.\0A\00", align 1
@HW_IOP_RESET = common dso_local global i32 0, align 4
@aac_src_disable_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Controller reset type is %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Issuing IOP reset\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"IOP reset failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"IOP reset succeeded\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"ARC Reset attempt failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@HW_SOFT_RESET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"Issuing SOFT reset\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"SOFT reset failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"SOFT reset succeeded\0A\00", align 1
@startup_timeout = common dso_local global i32 0, align 4
@MUnit = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@KERNEL_PANIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_dev*, i32, i32)* @aac_src_restart_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_src_restart_adapter(%struct.aac_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.aac_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.aac_dev* %0, %struct.aac_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %135

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %17 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %5, align 4
  %21 = call i32 (i32*, i8*, ...) @dev_err(i32* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %15, %12
  %23 = load i32, i32* %5, align 4
  %24 = icmp sge i32 %23, 2
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %27 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @HW_IOP_RESET, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32, i32* @HW_IOP_RESET, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %35, %30, %25, %22
  %41 = load i32, i32* @aac_src_disable_interrupt, align 4
  %42 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %43 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %46 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %6, align 4
  %50 = call i32 (i32*, i8*, ...) @dev_err(i32* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @HW_IOP_RESET, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %80

55:                                               ; preds = %40
  %56 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %57 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = call i32 @dev_info(i32* %59, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %61 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %62 = call i32 @aac_send_iop_reset(%struct.aac_dev* %61)
  %63 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %64 = call i32 @aac_is_ctrl_up_and_running(%struct.aac_dev* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %55
  %68 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %69 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = call i32 (i32*, i8*, ...) @dev_err(i32* %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %79

73:                                               ; preds = %55
  %74 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %75 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = call i32 @dev_info(i32* %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %128

79:                                               ; preds = %67
  br label %80

80:                                               ; preds = %79, %40
  %81 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %82 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %80
  %86 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %87 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = call i32 (i32*, i8*, ...) @dev_err(i32* %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %91 = load i32, i32* @ENODEV, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %8, align 4
  br label %133

93:                                               ; preds = %80
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @HW_SOFT_RESET, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %127

98:                                               ; preds = %93
  %99 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %100 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %99, i32 0, i32 0
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = call i32 @dev_info(i32* %102, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %104 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %105 = call i32 @aac_send_hardware_soft_reset(%struct.aac_dev* %104)
  %106 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %107 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %106, i32 0, i32 1
  store i64 0, i64* %107, align 8
  %108 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %109 = call i32 @aac_is_ctrl_up_and_running(%struct.aac_dev* %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %98
  %113 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %114 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %113, i32 0, i32 0
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = call i32 (i32*, i8*, ...) @dev_err(i32* %116, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %118 = load i32, i32* @ENODEV, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %8, align 4
  br label %133

120:                                              ; preds = %98
  %121 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %122 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %121, i32 0, i32 0
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = call i32 @dev_info(i32* %124, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %126

126:                                              ; preds = %120
  br label %127

127:                                              ; preds = %126, %93
  br label %128

128:                                              ; preds = %127, %73
  %129 = load i32, i32* @startup_timeout, align 4
  %130 = icmp slt i32 %129, 300
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i32 300, i32* @startup_timeout, align 4
  br label %132

132:                                              ; preds = %131, %128
  br label %133

133:                                              ; preds = %145, %132, %112, %85
  %134 = load i32, i32* %8, align 4
  ret i32 %134

135:                                              ; preds = %11
  %136 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @MUnit, i32 0, i32 0), align 4
  %138 = call i32 @src_readl(%struct.aac_dev* %136, i32 %137)
  %139 = load i32, i32* @KERNEL_PANIC, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %135
  %143 = load i32, i32* @ENODEV, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %8, align 4
  br label %145

145:                                              ; preds = %142, %135
  br label %133
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @aac_send_iop_reset(%struct.aac_dev*) #1

declare dso_local i32 @aac_is_ctrl_up_and_running(%struct.aac_dev*) #1

declare dso_local i32 @aac_send_hardware_soft_reset(%struct.aac_dev*) #1

declare dso_local i32 @src_readl(%struct.aac_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
