; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_boot.c_wlcore_boot_run_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_boot.c_wlcore_boot_run_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64, i64*, i64, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@PART_BOOT = common dso_local global i64 0, align 8
@ECPU_CONTROL_HALT = common dso_local global i32 0, align 4
@REG_CHIP_ID_B = common dso_local global i32 0, align 4
@DEBUG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"chip id after firmware boot: 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"chip id doesn't match after firmware boot\00", align 1
@EIO = common dso_local global i32 0, align 4
@INIT_LOOP = common dso_local global i32 0, align 4
@INIT_LOOP_DELAY = common dso_local global i32 0, align 4
@REG_INTERRUPT_NO_CLEAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"error reading hardware complete init indication\00", align 1
@WL1271_ACX_INTR_INIT_COMPLETE = common dso_local global i64 0, align 8
@REG_INTERRUPT_ACK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"timeout waiting for the hardware to complete initialization\00", align 1
@REG_COMMAND_MAILBOX_PTR = common dso_local global i32 0, align 4
@DEBUG_MAILBOX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"cmd_box_addr 0x%x\00", align 1
@REG_EVENT_MAILBOX_PTR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"MBOX ptrs: 0x%x 0x%x\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"error getting static data\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"EVENT mask setting failed\00", align 1
@PART_WORK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlcore_boot_run_firmware(%struct.wl1271* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  %8 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %9 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %10 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @PART_BOOT, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = call i32 @wlcore_set_partition(%struct.wl1271* %8, i32* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %174

19:                                               ; preds = %1
  %20 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %21 = load i32, i32* @ECPU_CONTROL_HALT, align 4
  %22 = call i32 @wl1271_boot_set_ecpu_ctrl(%struct.wl1271* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %174

27:                                               ; preds = %19
  %28 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %29 = load i32, i32* @REG_CHIP_ID_B, align 4
  %30 = call i32 @wlcore_read_reg(%struct.wl1271* %28, i32 %29, i64* %6)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %174

35:                                               ; preds = %27
  %36 = load i32, i32* @DEBUG_BOOT, align 4
  %37 = load i64, i64* %6, align 8
  %38 = call i32 (i32, i8*, i64, ...) @wl1271_debug(i32 %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %37)
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %41 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %39, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = call i32 @wl1271_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %174

49:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %88, %49
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* @INIT_LOOP, align 4
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %89

55:                                               ; preds = %50
  %56 = load i32, i32* @INIT_LOOP_DELAY, align 4
  %57 = call i32 @udelay(i32 %56)
  %58 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %59 = load i32, i32* @REG_INTERRUPT_NO_CLEAR, align 4
  %60 = call i32 @wlcore_read_reg(%struct.wl1271* %58, i32 %59, i64* %7)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %174

65:                                               ; preds = %55
  %66 = load i64, i64* %7, align 8
  %67 = icmp eq i64 %66, 4294967295
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = call i32 @wl1271_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %174

72:                                               ; preds = %65
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* @WL1271_ACX_INTR_INIT_COMPLETE, align 8
  %75 = and i64 %73, %74
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %72
  %78 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %79 = load i32, i32* @REG_INTERRUPT_ACK, align 4
  %80 = load i64, i64* @WL1271_ACX_INTR_INIT_COMPLETE, align 8
  %81 = call i32 @wlcore_write_reg(%struct.wl1271* %78, i32 %79, i64 %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %174

86:                                               ; preds = %77
  br label %89

87:                                               ; preds = %72
  br label %88

88:                                               ; preds = %87
  br label %50

89:                                               ; preds = %86, %50
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @INIT_LOOP, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = call i32 @wl1271_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %174

97:                                               ; preds = %89
  %98 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %99 = load i32, i32* @REG_COMMAND_MAILBOX_PTR, align 4
  %100 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %101 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %100, i32 0, i32 0
  %102 = call i32 @wlcore_read_reg(%struct.wl1271* %98, i32 %99, i64* %101)
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %97
  %106 = load i32, i32* %5, align 4
  store i32 %106, i32* %2, align 4
  br label %174

107:                                              ; preds = %97
  %108 = load i32, i32* @DEBUG_MAILBOX, align 4
  %109 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %110 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 (i32, i8*, i64, ...) @wl1271_debug(i32 %108, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i64 %111)
  %113 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %114 = load i32, i32* @REG_EVENT_MAILBOX_PTR, align 4
  %115 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %116 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %115, i32 0, i32 1
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 0
  %119 = call i32 @wlcore_read_reg(%struct.wl1271* %113, i32 %114, i64* %118)
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %5, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %107
  %123 = load i32, i32* %5, align 4
  store i32 %123, i32* %2, align 4
  br label %174

124:                                              ; preds = %107
  %125 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %126 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %125, i32 0, i32 1
  %127 = load i64*, i64** %126, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %131 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %129, %132
  %134 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %135 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %134, i32 0, i32 1
  %136 = load i64*, i64** %135, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 1
  store i64 %133, i64* %137, align 8
  %138 = load i32, i32* @DEBUG_MAILBOX, align 4
  %139 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %140 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %139, i32 0, i32 1
  %141 = load i64*, i64** %140, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %145 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %144, i32 0, i32 1
  %146 = load i64*, i64** %145, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 1
  %148 = load i64, i64* %147, align 8
  %149 = call i32 (i32, i8*, i64, ...) @wl1271_debug(i32 %138, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %143, i64 %148)
  %150 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %151 = call i32 @wlcore_boot_static_data(%struct.wl1271* %150)
  store i32 %151, i32* %5, align 4
  %152 = load i32, i32* %5, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %124
  %155 = call i32 @wl1271_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %156 = load i32, i32* %5, align 4
  store i32 %156, i32* %2, align 4
  br label %174

157:                                              ; preds = %124
  %158 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %159 = call i32 @wl1271_event_unmask(%struct.wl1271* %158)
  store i32 %159, i32* %5, align 4
  %160 = load i32, i32* %5, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = call i32 @wl1271_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %164 = load i32, i32* %5, align 4
  store i32 %164, i32* %2, align 4
  br label %174

165:                                              ; preds = %157
  %166 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %167 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %168 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = load i64, i64* @PART_WORK, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  %172 = call i32 @wlcore_set_partition(%struct.wl1271* %166, i32* %171)
  store i32 %172, i32* %5, align 4
  %173 = load i32, i32* %5, align 4
  store i32 %173, i32* %2, align 4
  br label %174

174:                                              ; preds = %165, %162, %154, %122, %105, %93, %84, %68, %63, %45, %33, %25, %17
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local i32 @wlcore_set_partition(%struct.wl1271*, i32*) #1

declare dso_local i32 @wl1271_boot_set_ecpu_ctrl(%struct.wl1271*, i32) #1

declare dso_local i32 @wlcore_read_reg(%struct.wl1271*, i32, i64*) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i64, ...) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wlcore_write_reg(%struct.wl1271*, i32, i64) #1

declare dso_local i32 @wlcore_boot_static_data(%struct.wl1271*) #1

declare dso_local i32 @wl1271_event_unmask(%struct.wl1271*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
