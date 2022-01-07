; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_register_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_register_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i32, %struct.typec_altmode*, i32, %struct.typec_altmode**, %struct.typec_altmode*, %struct.TYPE_5__, %struct.device*, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.tcpc_dev* }
%struct.typec_altmode = type { i32* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.device = type { i32 }
%struct.tcpc_dev = type { %struct.TYPE_6__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.typec_altmode_desc*, i32 }
%struct.typec_altmode_desc = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tcpm_state_machine_work = common dso_local global i32 0, align 4
@vdm_state_machine_work = common dso_local global i32 0, align 4
@tcpm_pd_event_handler = common dso_local global i32 0, align 4
@TYPEC_NO_PREFERRED_ROLE = common dso_local global i32 0, align 4
@tcpm_dr_set = common dso_local global i32 0, align 4
@tcpm_pr_set = common dso_local global i32 0, align 4
@tcpm_vconn_set = common dso_local global i32 0, align 4
@tcpm_try_role = common dso_local global i32 0, align 4
@tcpm_port_type_set = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"%s: failed to register port alternate mode 0x%x\00", align 1
@tcpm_altmode_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%s: registered\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tcpm_port* @tcpm_register_port(%struct.device* %0, %struct.tcpc_dev* %1) #0 {
  %3 = alloca %struct.tcpm_port*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.tcpc_dev*, align 8
  %6 = alloca %struct.tcpm_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.typec_altmode_desc*, align 8
  %10 = alloca %struct.typec_altmode*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.tcpc_dev* %1, %struct.tcpc_dev** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = icmp ne %struct.device* %11, null
  br i1 %12, label %13, label %61

13:                                               ; preds = %2
  %14 = load %struct.tcpc_dev*, %struct.tcpc_dev** %5, align 8
  %15 = icmp ne %struct.tcpc_dev* %14, null
  br i1 %15, label %16, label %61

16:                                               ; preds = %13
  %17 = load %struct.tcpc_dev*, %struct.tcpc_dev** %5, align 8
  %18 = getelementptr inbounds %struct.tcpc_dev, %struct.tcpc_dev* %17, i32 0, i32 10
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %61

21:                                               ; preds = %16
  %22 = load %struct.tcpc_dev*, %struct.tcpc_dev** %5, align 8
  %23 = getelementptr inbounds %struct.tcpc_dev, %struct.tcpc_dev* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %61

26:                                               ; preds = %21
  %27 = load %struct.tcpc_dev*, %struct.tcpc_dev** %5, align 8
  %28 = getelementptr inbounds %struct.tcpc_dev, %struct.tcpc_dev* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %61

31:                                               ; preds = %26
  %32 = load %struct.tcpc_dev*, %struct.tcpc_dev** %5, align 8
  %33 = getelementptr inbounds %struct.tcpc_dev, %struct.tcpc_dev* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %31
  %37 = load %struct.tcpc_dev*, %struct.tcpc_dev** %5, align 8
  %38 = getelementptr inbounds %struct.tcpc_dev, %struct.tcpc_dev* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %36
  %42 = load %struct.tcpc_dev*, %struct.tcpc_dev** %5, align 8
  %43 = getelementptr inbounds %struct.tcpc_dev, %struct.tcpc_dev* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %41
  %47 = load %struct.tcpc_dev*, %struct.tcpc_dev** %5, align 8
  %48 = getelementptr inbounds %struct.tcpc_dev, %struct.tcpc_dev* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load %struct.tcpc_dev*, %struct.tcpc_dev** %5, align 8
  %53 = getelementptr inbounds %struct.tcpc_dev, %struct.tcpc_dev* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.tcpc_dev*, %struct.tcpc_dev** %5, align 8
  %58 = getelementptr inbounds %struct.tcpc_dev, %struct.tcpc_dev* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56, %51, %46, %41, %36, %31, %26, %21, %16, %13, %2
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  %64 = call %struct.tcpm_port* @ERR_PTR(i32 %63)
  store %struct.tcpm_port* %64, %struct.tcpm_port** %3, align 8
  br label %353

65:                                               ; preds = %56
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call %struct.tcpm_port* @devm_kzalloc(%struct.device* %66, i32 152, i32 %67)
  store %struct.tcpm_port* %68, %struct.tcpm_port** %6, align 8
  %69 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %70 = icmp ne %struct.tcpm_port* %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  %74 = call %struct.tcpm_port* @ERR_PTR(i32 %73)
  store %struct.tcpm_port* %74, %struct.tcpm_port** %3, align 8
  br label %353

75:                                               ; preds = %65
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %78 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %77, i32 0, i32 6
  store %struct.device* %76, %struct.device** %78, align 8
  %79 = load %struct.tcpc_dev*, %struct.tcpc_dev** %5, align 8
  %80 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %81 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %80, i32 0, i32 19
  store %struct.tcpc_dev* %79, %struct.tcpc_dev** %81, align 8
  %82 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %83 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %82, i32 0, i32 2
  %84 = call i32 @mutex_init(i32* %83)
  %85 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %86 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %85, i32 0, i32 18
  %87 = call i32 @mutex_init(i32* %86)
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = call i32 @dev_name(%struct.device* %88)
  %90 = call i32 @create_singlethread_workqueue(i32 %89)
  %91 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %92 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %94 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %75
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  %100 = call %struct.tcpm_port* @ERR_PTR(i32 %99)
  store %struct.tcpm_port* %100, %struct.tcpm_port** %3, align 8
  br label %353

101:                                              ; preds = %75
  %102 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %103 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %102, i32 0, i32 17
  %104 = load i32, i32* @tcpm_state_machine_work, align 4
  %105 = call i32 @INIT_DELAYED_WORK(i32* %103, i32 %104)
  %106 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %107 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %106, i32 0, i32 16
  %108 = load i32, i32* @vdm_state_machine_work, align 4
  %109 = call i32 @INIT_DELAYED_WORK(i32* %107, i32 %108)
  %110 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %111 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %110, i32 0, i32 15
  %112 = load i32, i32* @tcpm_pd_event_handler, align 4
  %113 = call i32 @INIT_WORK(i32* %111, i32 %112)
  %114 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %115 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %114, i32 0, i32 14
  %116 = call i32 @spin_lock_init(i32* %115)
  %117 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %118 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %117, i32 0, i32 13
  %119 = call i32 @init_completion(i32* %118)
  %120 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %121 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %120, i32 0, i32 12
  %122 = call i32 @init_completion(i32* %121)
  %123 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %124 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %123, i32 0, i32 11
  %125 = call i32 @init_completion(i32* %124)
  %126 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %127 = call i32 @tcpm_debugfs_init(%struct.tcpm_port* %126)
  %128 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %129 = load %struct.tcpc_dev*, %struct.tcpc_dev** %5, align 8
  %130 = getelementptr inbounds %struct.tcpc_dev, %struct.tcpc_dev* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @tcpm_fw_get_caps(%struct.tcpm_port* %128, i32 %131)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %101
  %136 = load %struct.tcpc_dev*, %struct.tcpc_dev** %5, align 8
  %137 = getelementptr inbounds %struct.tcpc_dev, %struct.tcpc_dev* %136, i32 0, i32 0
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = icmp ne %struct.TYPE_6__* %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %142 = load %struct.tcpc_dev*, %struct.tcpc_dev** %5, align 8
  %143 = getelementptr inbounds %struct.tcpc_dev, %struct.tcpc_dev* %142, i32 0, i32 0
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = call i32 @tcpm_copy_caps(%struct.tcpm_port* %141, %struct.TYPE_6__* %144)
  store i32 %145, i32* %8, align 4
  br label %146

146:                                              ; preds = %140, %135, %101
  %147 = load i32, i32* %8, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  br label %344

150:                                              ; preds = %146
  %151 = load %struct.tcpc_dev*, %struct.tcpc_dev** %5, align 8
  %152 = getelementptr inbounds %struct.tcpc_dev, %struct.tcpc_dev* %151, i32 0, i32 0
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = icmp ne %struct.TYPE_6__* %153, null
  br i1 %154, label %155, label %162

155:                                              ; preds = %150
  %156 = load %struct.tcpc_dev*, %struct.tcpc_dev** %5, align 8
  %157 = getelementptr inbounds %struct.tcpc_dev, %struct.tcpc_dev* %156, i32 0, i32 0
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %169, label %162

162:                                              ; preds = %155, %150
  %163 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %164 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %163, i32 0, i32 5
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 9
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %168 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %167, i32 0, i32 10
  store i32 %166, i32* %168, align 8
  br label %173

169:                                              ; preds = %155
  %170 = load i32, i32* @TYPEC_NO_PREFERRED_ROLE, align 4
  %171 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %172 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %171, i32 0, i32 10
  store i32 %170, i32* %172, align 8
  br label %173

173:                                              ; preds = %169, %162
  %174 = load %struct.tcpc_dev*, %struct.tcpc_dev** %5, align 8
  %175 = getelementptr inbounds %struct.tcpc_dev, %struct.tcpc_dev* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %178 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 8
  store i32 %176, i32* %179, align 8
  %180 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %181 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %180, i32 0, i32 5
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  store i32 288, i32* %182, align 8
  %183 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %184 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %183, i32 0, i32 5
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 1
  store i32 768, i32* %185, align 4
  %186 = load i32, i32* @tcpm_dr_set, align 4
  %187 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %188 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %187, i32 0, i32 5
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 7
  store i32 %186, i32* %189, align 4
  %190 = load i32, i32* @tcpm_pr_set, align 4
  %191 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %192 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 6
  store i32 %190, i32* %193, align 8
  %194 = load i32, i32* @tcpm_vconn_set, align 4
  %195 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %196 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %195, i32 0, i32 5
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 5
  store i32 %194, i32* %197, align 4
  %198 = load i32, i32* @tcpm_try_role, align 4
  %199 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %200 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %199, i32 0, i32 5
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 4
  store i32 %198, i32* %201, align 8
  %202 = load i32, i32* @tcpm_port_type_set, align 4
  %203 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %204 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %203, i32 0, i32 5
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 3
  store i32 %202, i32* %205, align 4
  %206 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %207 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %206, i32 0, i32 8
  %208 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %209 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %208, i32 0, i32 9
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  store i32* %207, i32** %210, align 8
  %211 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %212 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %211, i32 0, i32 5
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %216 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %215, i32 0, i32 7
  store i32 %214, i32* %216, align 8
  %217 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %218 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %217, i32 0, i32 6
  %219 = load %struct.device*, %struct.device** %218, align 8
  %220 = call %struct.typec_altmode* @usb_role_switch_get(%struct.device* %219)
  %221 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %222 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %221, i32 0, i32 1
  store %struct.typec_altmode* %220, %struct.typec_altmode** %222, align 8
  %223 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %224 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %223, i32 0, i32 1
  %225 = load %struct.typec_altmode*, %struct.typec_altmode** %224, align 8
  %226 = call i64 @IS_ERR(%struct.typec_altmode* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %173
  %229 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %230 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %229, i32 0, i32 1
  %231 = load %struct.typec_altmode*, %struct.typec_altmode** %230, align 8
  %232 = call i32 @PTR_ERR(%struct.typec_altmode* %231)
  store i32 %232, i32* %8, align 4
  br label %344

233:                                              ; preds = %173
  %234 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %235 = call i32 @devm_tcpm_psy_register(%struct.tcpm_port* %234)
  store i32 %235, i32* %8, align 4
  %236 = load i32, i32* %8, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %233
  br label %339

239:                                              ; preds = %233
  %240 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %241 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %240, i32 0, i32 6
  %242 = load %struct.device*, %struct.device** %241, align 8
  %243 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %244 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %243, i32 0, i32 5
  %245 = call %struct.typec_altmode* @typec_register_port(%struct.device* %242, %struct.TYPE_5__* %244)
  %246 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %247 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %246, i32 0, i32 4
  store %struct.typec_altmode* %245, %struct.typec_altmode** %247, align 8
  %248 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %249 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %248, i32 0, i32 4
  %250 = load %struct.typec_altmode*, %struct.typec_altmode** %249, align 8
  %251 = call i64 @IS_ERR(%struct.typec_altmode* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %239
  %254 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %255 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %254, i32 0, i32 4
  %256 = load %struct.typec_altmode*, %struct.typec_altmode** %255, align 8
  %257 = call i32 @PTR_ERR(%struct.typec_altmode* %256)
  store i32 %257, i32* %8, align 4
  br label %339

258:                                              ; preds = %239
  %259 = load %struct.tcpc_dev*, %struct.tcpc_dev** %5, align 8
  %260 = getelementptr inbounds %struct.tcpc_dev, %struct.tcpc_dev* %259, i32 0, i32 0
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %260, align 8
  %262 = icmp ne %struct.TYPE_6__* %261, null
  br i1 %262, label %263, label %325

263:                                              ; preds = %258
  %264 = load %struct.tcpc_dev*, %struct.tcpc_dev** %5, align 8
  %265 = getelementptr inbounds %struct.tcpc_dev, %struct.tcpc_dev* %264, i32 0, i32 0
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 0
  %268 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %267, align 8
  %269 = icmp ne %struct.typec_altmode_desc* %268, null
  br i1 %269, label %270, label %325

270:                                              ; preds = %263
  %271 = load %struct.tcpc_dev*, %struct.tcpc_dev** %5, align 8
  %272 = getelementptr inbounds %struct.tcpc_dev, %struct.tcpc_dev* %271, i32 0, i32 0
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 0
  %275 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %274, align 8
  store %struct.typec_altmode_desc* %275, %struct.typec_altmode_desc** %9, align 8
  store i32 0, i32* %7, align 4
  br label %276

276:                                              ; preds = %307, %270
  %277 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %9, align 8
  %278 = getelementptr inbounds %struct.typec_altmode_desc, %struct.typec_altmode_desc* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %288

281:                                              ; preds = %276
  %282 = load i32, i32* %7, align 4
  %283 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %284 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %283, i32 0, i32 3
  %285 = load %struct.typec_altmode**, %struct.typec_altmode*** %284, align 8
  %286 = call i32 @ARRAY_SIZE(%struct.typec_altmode** %285)
  %287 = icmp slt i32 %282, %286
  br label %288

288:                                              ; preds = %281, %276
  %289 = phi i1 [ false, %276 ], [ %287, %281 ]
  br i1 %289, label %290, label %324

290:                                              ; preds = %288
  %291 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %292 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %291, i32 0, i32 4
  %293 = load %struct.typec_altmode*, %struct.typec_altmode** %292, align 8
  %294 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %9, align 8
  %295 = call %struct.typec_altmode* @typec_port_register_altmode(%struct.typec_altmode* %293, %struct.typec_altmode_desc* %294)
  store %struct.typec_altmode* %295, %struct.typec_altmode** %10, align 8
  %296 = load %struct.typec_altmode*, %struct.typec_altmode** %10, align 8
  %297 = call i64 @IS_ERR(%struct.typec_altmode* %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %307

299:                                              ; preds = %290
  %300 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %301 = load %struct.device*, %struct.device** %4, align 8
  %302 = call i32 @dev_name(%struct.device* %301)
  %303 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %9, align 8
  %304 = getelementptr inbounds %struct.typec_altmode_desc, %struct.typec_altmode_desc* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = call i32 (%struct.tcpm_port*, i8*, i32, ...) @tcpm_log(%struct.tcpm_port* %300, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %302, i64 %305)
  br label %324

307:                                              ; preds = %290
  %308 = load %struct.typec_altmode*, %struct.typec_altmode** %10, align 8
  %309 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %310 = call i32 @typec_altmode_set_drvdata(%struct.typec_altmode* %308, %struct.tcpm_port* %309)
  %311 = load %struct.typec_altmode*, %struct.typec_altmode** %10, align 8
  %312 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %311, i32 0, i32 0
  store i32* @tcpm_altmode_ops, i32** %312, align 8
  %313 = load %struct.typec_altmode*, %struct.typec_altmode** %10, align 8
  %314 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %315 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %314, i32 0, i32 3
  %316 = load %struct.typec_altmode**, %struct.typec_altmode*** %315, align 8
  %317 = load i32, i32* %7, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.typec_altmode*, %struct.typec_altmode** %316, i64 %318
  store %struct.typec_altmode* %313, %struct.typec_altmode** %319, align 8
  %320 = load i32, i32* %7, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %7, align 4
  %322 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %9, align 8
  %323 = getelementptr inbounds %struct.typec_altmode_desc, %struct.typec_altmode_desc* %322, i32 1
  store %struct.typec_altmode_desc* %323, %struct.typec_altmode_desc** %9, align 8
  br label %276

324:                                              ; preds = %299, %288
  br label %325

325:                                              ; preds = %324, %263, %258
  %326 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %327 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %326, i32 0, i32 2
  %328 = call i32 @mutex_lock(i32* %327)
  %329 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %330 = call i32 @tcpm_init(%struct.tcpm_port* %329)
  %331 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %332 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %331, i32 0, i32 2
  %333 = call i32 @mutex_unlock(i32* %332)
  %334 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %335 = load %struct.device*, %struct.device** %4, align 8
  %336 = call i32 @dev_name(%struct.device* %335)
  %337 = call i32 (%struct.tcpm_port*, i8*, i32, ...) @tcpm_log(%struct.tcpm_port* %334, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %336)
  %338 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  store %struct.tcpm_port* %338, %struct.tcpm_port** %3, align 8
  br label %353

339:                                              ; preds = %253, %238
  %340 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %341 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %340, i32 0, i32 1
  %342 = load %struct.typec_altmode*, %struct.typec_altmode** %341, align 8
  %343 = call i32 @usb_role_switch_put(%struct.typec_altmode* %342)
  br label %344

344:                                              ; preds = %339, %228, %149
  %345 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %346 = call i32 @tcpm_debugfs_exit(%struct.tcpm_port* %345)
  %347 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %348 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = call i32 @destroy_workqueue(i32 %349)
  %351 = load i32, i32* %8, align 4
  %352 = call %struct.tcpm_port* @ERR_PTR(i32 %351)
  store %struct.tcpm_port* %352, %struct.tcpm_port** %3, align 8
  br label %353

353:                                              ; preds = %344, %325, %97, %71, %61
  %354 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  ret %struct.tcpm_port* %354
}

declare dso_local %struct.tcpm_port* @ERR_PTR(i32) #1

declare dso_local %struct.tcpm_port* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @create_singlethread_workqueue(i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @tcpm_debugfs_init(%struct.tcpm_port*) #1

declare dso_local i32 @tcpm_fw_get_caps(%struct.tcpm_port*, i32) #1

declare dso_local i32 @tcpm_copy_caps(%struct.tcpm_port*, %struct.TYPE_6__*) #1

declare dso_local %struct.typec_altmode* @usb_role_switch_get(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.typec_altmode*) #1

declare dso_local i32 @PTR_ERR(%struct.typec_altmode*) #1

declare dso_local i32 @devm_tcpm_psy_register(%struct.tcpm_port*) #1

declare dso_local %struct.typec_altmode* @typec_register_port(%struct.device*, %struct.TYPE_5__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.typec_altmode**) #1

declare dso_local %struct.typec_altmode* @typec_port_register_altmode(%struct.typec_altmode*, %struct.typec_altmode_desc*) #1

declare dso_local i32 @tcpm_log(%struct.tcpm_port*, i8*, i32, ...) #1

declare dso_local i32 @typec_altmode_set_drvdata(%struct.typec_altmode*, %struct.tcpm_port*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tcpm_init(%struct.tcpm_port*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_role_switch_put(%struct.typec_altmode*) #1

declare dso_local i32 @tcpm_debugfs_exit(%struct.tcpm_port*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
