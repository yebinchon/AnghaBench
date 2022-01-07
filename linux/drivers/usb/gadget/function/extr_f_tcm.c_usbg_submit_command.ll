; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_usbg_submit_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_usbg_submit_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f_uas = type { i32, i32*, %struct.usbg_tpg* }
%struct.usbg_tpg = type { i32, %struct.tcm_usbg_nexus* }
%struct.tcm_usbg_nexus = type { i32 }
%struct.command_iu = type { i64, i32, i32, i32, i32, i32 }
%struct.usbg_cmd = type { i32, i32, i32, i32, i32, i32*, i32 }

@IU_ID_COMMAND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Unsupported type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Missing nexus, ignoring command\0A\00", align 1
@USBG_MAX_CMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"usbg_get_cmd failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@USBG_USE_STREAMS = common dso_local global i32 0, align 4
@UASP_SS_EP_COMP_NUM_STREAMS = common dso_local global i32 0, align 4
@TCM_HEAD_TAG = common dso_local global i32 0, align 4
@TCM_ORDERED_TAG = common dso_local global i32 0, align 4
@TCM_ACA_TAG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Unsupported prio_attr: %02x.\0A\00", align 1
@TCM_SIMPLE_TAG = common dso_local global i32 0, align 4
@usbg_cmd_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f_uas*, i8*, i32)* @usbg_submit_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbg_submit_command(%struct.f_uas* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.f_uas*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.command_iu*, align 8
  %9 = alloca %struct.usbg_cmd*, align 8
  %10 = alloca %struct.usbg_tpg*, align 8
  %11 = alloca %struct.tcm_usbg_nexus*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.f_uas* %0, %struct.f_uas** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.command_iu*
  store %struct.command_iu* %15, %struct.command_iu** %8, align 8
  %16 = load %struct.f_uas*, %struct.f_uas** %5, align 8
  %17 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %16, i32 0, i32 2
  %18 = load %struct.usbg_tpg*, %struct.usbg_tpg** %17, align 8
  store %struct.usbg_tpg* %18, %struct.usbg_tpg** %10, align 8
  %19 = load %struct.command_iu*, %struct.command_iu** %8, align 8
  %20 = getelementptr inbounds %struct.command_iu, %struct.command_iu* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IU_ID_COMMAND, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load %struct.command_iu*, %struct.command_iu** %8, align 8
  %26 = getelementptr inbounds %struct.command_iu, %struct.command_iu* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %170

31:                                               ; preds = %3
  %32 = load %struct.usbg_tpg*, %struct.usbg_tpg** %10, align 8
  %33 = getelementptr inbounds %struct.usbg_tpg, %struct.usbg_tpg* %32, i32 0, i32 1
  %34 = load %struct.tcm_usbg_nexus*, %struct.tcm_usbg_nexus** %33, align 8
  store %struct.tcm_usbg_nexus* %34, %struct.tcm_usbg_nexus** %11, align 8
  %35 = load %struct.tcm_usbg_nexus*, %struct.tcm_usbg_nexus** %11, align 8
  %36 = icmp ne %struct.tcm_usbg_nexus* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %170

41:                                               ; preds = %31
  %42 = load %struct.command_iu*, %struct.command_iu** %8, align 8
  %43 = getelementptr inbounds %struct.command_iu, %struct.command_iu* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, -4
  %46 = add nsw i32 %45, 16
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @USBG_MAX_CMD, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %170

53:                                               ; preds = %41
  %54 = load %struct.command_iu*, %struct.command_iu** %8, align 8
  %55 = getelementptr inbounds %struct.command_iu, %struct.command_iu* %54, i32 0, i32 5
  %56 = call i32 @be16_to_cpup(i32* %55)
  store i32 %56, i32* %13, align 4
  %57 = load %struct.f_uas*, %struct.f_uas** %5, align 8
  %58 = load %struct.tcm_usbg_nexus*, %struct.tcm_usbg_nexus** %11, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call %struct.usbg_cmd* @usbg_get_cmd(%struct.f_uas* %57, %struct.tcm_usbg_nexus* %58, i32 %59)
  store %struct.usbg_cmd* %60, %struct.usbg_cmd** %9, align 8
  %61 = load %struct.usbg_cmd*, %struct.usbg_cmd** %9, align 8
  %62 = call i64 @IS_ERR(%struct.usbg_cmd* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %53
  %65 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %170

68:                                               ; preds = %53
  %69 = load %struct.usbg_cmd*, %struct.usbg_cmd** %9, align 8
  %70 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.command_iu*, %struct.command_iu** %8, align 8
  %73 = getelementptr inbounds %struct.command_iu, %struct.command_iu* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @memcpy(i32 %71, i32 %74, i32 %75)
  %77 = load %struct.f_uas*, %struct.f_uas** %5, align 8
  %78 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @USBG_USE_STREAMS, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %115

83:                                               ; preds = %68
  %84 = load %struct.usbg_cmd*, %struct.usbg_cmd** %9, align 8
  %85 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @UASP_SS_EP_COMP_NUM_STREAMS, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %164

90:                                               ; preds = %83
  %91 = load %struct.usbg_cmd*, %struct.usbg_cmd** %9, align 8
  %92 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %90
  %96 = load %struct.f_uas*, %struct.f_uas** %5, align 8
  %97 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load %struct.usbg_cmd*, %struct.usbg_cmd** %9, align 8
  %101 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %100, i32 0, i32 5
  store i32* %99, i32** %101, align 8
  br label %114

102:                                              ; preds = %90
  %103 = load %struct.f_uas*, %struct.f_uas** %5, align 8
  %104 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.usbg_cmd*, %struct.usbg_cmd** %9, align 8
  %107 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %105, i64 %110
  %112 = load %struct.usbg_cmd*, %struct.usbg_cmd** %9, align 8
  %113 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %112, i32 0, i32 5
  store i32* %111, i32** %113, align 8
  br label %114

114:                                              ; preds = %102, %95
  br label %122

115:                                              ; preds = %68
  %116 = load %struct.f_uas*, %struct.f_uas** %5, align 8
  %117 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load %struct.usbg_cmd*, %struct.usbg_cmd** %9, align 8
  %121 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %120, i32 0, i32 5
  store i32* %119, i32** %121, align 8
  br label %122

122:                                              ; preds = %115, %114
  %123 = load %struct.command_iu*, %struct.command_iu** %8, align 8
  %124 = getelementptr inbounds %struct.command_iu, %struct.command_iu* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, 7
  switch i32 %126, label %139 [
    i32 130, label %127
    i32 129, label %131
    i32 131, label %135
    i32 128, label %144
  ]

127:                                              ; preds = %122
  %128 = load i32, i32* @TCM_HEAD_TAG, align 4
  %129 = load %struct.usbg_cmd*, %struct.usbg_cmd** %9, align 8
  %130 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 8
  br label %148

131:                                              ; preds = %122
  %132 = load i32, i32* @TCM_ORDERED_TAG, align 4
  %133 = load %struct.usbg_cmd*, %struct.usbg_cmd** %9, align 8
  %134 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 8
  br label %148

135:                                              ; preds = %122
  %136 = load i32, i32* @TCM_ACA_TAG, align 4
  %137 = load %struct.usbg_cmd*, %struct.usbg_cmd** %9, align 8
  %138 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 8
  br label %148

139:                                              ; preds = %122
  %140 = load %struct.command_iu*, %struct.command_iu** %8, align 8
  %141 = getelementptr inbounds %struct.command_iu, %struct.command_iu* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @pr_debug_once(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %122, %139
  %145 = load i32, i32* @TCM_SIMPLE_TAG, align 4
  %146 = load %struct.usbg_cmd*, %struct.usbg_cmd** %9, align 8
  %147 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %146, i32 0, i32 4
  store i32 %145, i32* %147, align 8
  br label %148

148:                                              ; preds = %144, %135, %131, %127
  %149 = load %struct.command_iu*, %struct.command_iu** %8, align 8
  %150 = getelementptr inbounds %struct.command_iu, %struct.command_iu* %149, i32 0, i32 3
  %151 = call i32 @scsilun_to_int(i32* %150)
  %152 = load %struct.usbg_cmd*, %struct.usbg_cmd** %9, align 8
  %153 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %152, i32 0, i32 3
  store i32 %151, i32* %153, align 4
  %154 = load %struct.usbg_cmd*, %struct.usbg_cmd** %9, align 8
  %155 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %154, i32 0, i32 2
  %156 = load i32, i32* @usbg_cmd_work, align 4
  %157 = call i32 @INIT_WORK(i32* %155, i32 %156)
  %158 = load %struct.usbg_tpg*, %struct.usbg_tpg** %10, align 8
  %159 = getelementptr inbounds %struct.usbg_tpg, %struct.usbg_tpg* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.usbg_cmd*, %struct.usbg_cmd** %9, align 8
  %162 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %161, i32 0, i32 2
  %163 = call i32 @queue_work(i32 %160, i32* %162)
  store i32 0, i32* %4, align 4
  br label %170

164:                                              ; preds = %89
  %165 = load %struct.usbg_cmd*, %struct.usbg_cmd** %9, align 8
  %166 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %165, i32 0, i32 1
  %167 = call i32 @usbg_release_cmd(i32* %166)
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %4, align 4
  br label %170

170:                                              ; preds = %164, %148, %64, %50, %37, %24
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @be16_to_cpup(i32*) #1

declare dso_local %struct.usbg_cmd* @usbg_get_cmd(%struct.f_uas*, %struct.tcm_usbg_nexus*, i32) #1

declare dso_local i64 @IS_ERR(%struct.usbg_cmd*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @pr_debug_once(i8*, i32) #1

declare dso_local i32 @scsilun_to_int(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @usbg_release_cmd(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
