; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_board_mode_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_board_mode_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.completion = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"3050 lpfc_board_mode set to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"online\00", align 1
@LPFC_EVT_ONLINE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"offline\00", align 1
@LPFC_EVT_OFFLINE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"warm\00", align 1
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@LPFC_EVT_WARM_START = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@LPFC_EVT_KILL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@LPFC_FW_DUMP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"fw_reset\00", align 1
@LPFC_FW_RESET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"dv_reset\00", align 1
@LPFC_DV_RESET = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"pci_bus_reset\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"trunk\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"3097 Failed \22%s\22, status(%d), fc_flag(x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @lpfc_board_mode_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_board_mode_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.lpfc_vport*, align 8
  %12 = alloca %struct.lpfc_hba*, align 8
  %13 = alloca %struct.completion, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %17)
  store %struct.Scsi_Host* %18, %struct.Scsi_Host** %10, align 8
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %20 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %22, %struct.lpfc_vport** %11, align 8
  %23 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %24 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %23, i32 0, i32 0
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %24, align 8
  store %struct.lpfc_hba* %25, %struct.lpfc_hba** %12, align 8
  store i8* null, i8** %14, align 8
  store i32 0, i32* %15, align 4
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %27 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* @EACCES, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %15, align 4
  br label %156

33:                                               ; preds = %4
  %34 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %35 = load i32, i32* @KERN_ERR, align 4
  %36 = load i32, i32* @LOG_INIT, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %34, i32 %35, i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = call i32 @init_completion(%struct.completion* %13)
  %40 = load i8*, i8** %8, align 8
  %41 = call i64 @strncmp(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %33
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %45 = load i32, i32* @LPFC_EVT_ONLINE, align 4
  %46 = call i32 @lpfc_workq_post_event(%struct.lpfc_hba* %44, i32* %15, %struct.completion* %13, i32 %45)
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %15, align 4
  br label %156

52:                                               ; preds = %43
  %53 = call i32 @wait_for_completion(%struct.completion* %13)
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %15, align 4
  br label %59

59:                                               ; preds = %56, %52
  br label %155

60:                                               ; preds = %33
  %61 = load i8*, i8** %8, align 8
  %62 = call i64 @strncmp(i8* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %66 = load i32, i32* @LPFC_EVT_OFFLINE, align 4
  %67 = call i32 @lpfc_do_offline(%struct.lpfc_hba* %65, i32 %66)
  store i32 %67, i32* %15, align 4
  br label %154

68:                                               ; preds = %60
  %69 = load i8*, i8** %8, align 8
  %70 = call i64 @strncmp(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %68
  %73 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %74 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @LPFC_SLI_REV4, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %15, align 4
  br label %85

81:                                               ; preds = %72
  %82 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %83 = load i32, i32* @LPFC_EVT_WARM_START, align 4
  %84 = call i32 @lpfc_do_offline(%struct.lpfc_hba* %82, i32 %83)
  store i32 %84, i32* %15, align 4
  br label %85

85:                                               ; preds = %81, %78
  br label %153

86:                                               ; preds = %68
  %87 = load i8*, i8** %8, align 8
  %88 = call i64 @strncmp(i8* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %86
  %91 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %92 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @LPFC_SLI_REV4, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %15, align 4
  br label %103

99:                                               ; preds = %90
  %100 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %101 = load i32, i32* @LPFC_EVT_KILL, align 4
  %102 = call i32 @lpfc_do_offline(%struct.lpfc_hba* %100, i32 %101)
  store i32 %102, i32* %15, align 4
  br label %103

103:                                              ; preds = %99, %96
  br label %152

104:                                              ; preds = %86
  %105 = load i8*, i8** %8, align 8
  %106 = call i64 @strncmp(i8* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %110 = load i32, i32* @LPFC_FW_DUMP, align 4
  %111 = call i32 @lpfc_sli4_pdev_reg_request(%struct.lpfc_hba* %109, i32 %110)
  store i32 %111, i32* %15, align 4
  br label %151

112:                                              ; preds = %104
  %113 = load i8*, i8** %8, align 8
  %114 = call i64 @strncmp(i8* %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 8)
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %118 = load i32, i32* @LPFC_FW_RESET, align 4
  %119 = call i32 @lpfc_sli4_pdev_reg_request(%struct.lpfc_hba* %117, i32 %118)
  store i32 %119, i32* %15, align 4
  br label %150

120:                                              ; preds = %112
  %121 = load i8*, i8** %8, align 8
  %122 = call i64 @strncmp(i8* %121, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 8)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %126 = load i32, i32* @LPFC_DV_RESET, align 4
  %127 = call i32 @lpfc_sli4_pdev_reg_request(%struct.lpfc_hba* %125, i32 %126)
  store i32 %127, i32* %15, align 4
  br label %149

128:                                              ; preds = %120
  %129 = load i8*, i8** %8, align 8
  %130 = call i64 @strncmp(i8* %129, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 13)
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %134 = call i32 @lpfc_reset_pci_bus(%struct.lpfc_hba* %133)
  store i32 %134, i32* %15, align 4
  br label %148

135:                                              ; preds = %128
  %136 = load i8*, i8** %8, align 8
  %137 = call i64 @strncmp(i8* %136, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 5)
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %141 = load i8*, i8** %8, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 6
  %143 = call i32 @lpfc_set_trunking(%struct.lpfc_hba* %140, i8* %142)
  store i32 %143, i32* %15, align 4
  br label %147

144:                                              ; preds = %135
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %15, align 4
  br label %147

147:                                              ; preds = %144, %139
  br label %148

148:                                              ; preds = %147, %132
  br label %149

149:                                              ; preds = %148, %124
  br label %150

150:                                              ; preds = %149, %116
  br label %151

151:                                              ; preds = %150, %108
  br label %152

152:                                              ; preds = %151, %103
  br label %153

153:                                              ; preds = %152, %85
  br label %154

154:                                              ; preds = %153, %64
  br label %155

155:                                              ; preds = %154, %59
  br label %156

156:                                              ; preds = %155, %49, %30
  %157 = load i32, i32* %15, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %156
  %160 = load i8*, i8** %8, align 8
  %161 = call i32 @strlen(i8* %160)
  store i32 %161, i32* %5, align 4
  br label %182

162:                                              ; preds = %156
  %163 = load i8*, i8** %8, align 8
  %164 = call i8* @strchr(i8* %163, i8 signext 10)
  store i8* %164, i8** %14, align 8
  %165 = load i8*, i8** %14, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %169

167:                                              ; preds = %162
  %168 = load i8*, i8** %14, align 8
  store i8 0, i8* %168, align 1
  br label %169

169:                                              ; preds = %167, %162
  %170 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %171 = load i32, i32* @KERN_ERR, align 4
  %172 = load i32, i32* @LOG_INIT, align 4
  %173 = load i8*, i8** %8, align 8
  %174 = load i32, i32* %15, align 4
  %175 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %176 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %175, i32 0, i32 1
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %170, i32 %171, i32 %172, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i8* %173, i32 %174, i32 %179)
  %181 = load i32, i32* %15, align 4
  store i32 %181, i32* %5, align 4
  br label %182

182:                                              ; preds = %169, %159
  %183 = load i32, i32* %5, align 4
  ret i32 %183
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i8*, ...) #1

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @lpfc_workq_post_event(%struct.lpfc_hba*, i32*, %struct.completion*, i32) #1

declare dso_local i32 @wait_for_completion(%struct.completion*) #1

declare dso_local i32 @lpfc_do_offline(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_sli4_pdev_reg_request(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_reset_pci_bus(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_set_trunking(%struct.lpfc_hba*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
