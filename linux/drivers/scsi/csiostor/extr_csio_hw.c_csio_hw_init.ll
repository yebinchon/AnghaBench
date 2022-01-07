; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32, i32, i32, %struct.TYPE_5__, i32*, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.csio_evt_msg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@csio_hws_uninit = common dso_local global i32 0, align 4
@CSIO_HW_NAME = common dso_local global i32 0, align 4
@t5_ops = common dso_local global i32 0, align 4
@csio_dbg_level = common dso_local global i64 0, align 8
@csio_hw_mb_timer = common dso_local global i32 0, align 4
@csio_evtq_sz = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to initialize eventq\00", align 1
@n_evt_freeq = common dso_local global i32 0, align 4
@dev_num = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csio_hw_init(%struct.csio_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csio_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.csio_evt_msg*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %3, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %4, align 4
  %11 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %12 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %11, i32 0, i32 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %16 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %15, i32 0, i32 8
  %17 = load i32, i32* @csio_hws_uninit, align 4
  %18 = call i32 @csio_init_state(%struct.TYPE_6__* %16, i32 %17)
  %19 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %20 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %19, i32 0, i32 7
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %23 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %22, i32 0, i32 6
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %26 = call i32 @csio_hw_get_device_id(%struct.csio_hw* %25)
  %27 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %28 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @CSIO_HW_NAME, align 4
  %31 = call i32 @strcpy(i32 %29, i32 %30)
  %32 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %33 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %32, i32 0, i32 4
  store i32* @t5_ops, i32** %33, align 8
  %34 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %35 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %6, align 4
  %39 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %40 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %7, align 4
  %44 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @csio_hw_set_description(%struct.csio_hw* %44, i32 %45, i32 %46)
  %48 = load i64, i64* @csio_dbg_level, align 8
  %49 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %50 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i64 %48, i64* %51, align 8
  %52 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %53 = call i32 @csio_set_fwevt_intr_idx(%struct.csio_hw* %52, i32 -1)
  %54 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %55 = call i32 @csio_set_nondata_intr_idx(%struct.csio_hw* %54, i32 -1)
  %56 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %57 = call i32 @csio_hw_to_mbm(%struct.csio_hw* %56)
  %58 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %59 = load i32, i32* @csio_hw_mb_timer, align 4
  %60 = call i64 @csio_mbm_init(i32 %57, %struct.csio_hw* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %1
  br label %145

63:                                               ; preds = %1
  %64 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %65 = call i32 @csio_hw_to_wrm(%struct.csio_hw* %64)
  %66 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %67 = call i32 @csio_wrm_init(i32 %65, %struct.csio_hw* %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %141

71:                                               ; preds = %63
  %72 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %73 = call i32 @csio_hw_to_scsim(%struct.csio_hw* %72)
  %74 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %75 = call i32 @csio_scsim_init(i32 %73, %struct.csio_hw* %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %136

79:                                               ; preds = %71
  %80 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %81 = call i32 @csio_hw_to_mgmtm(%struct.csio_hw* %80)
  %82 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %83 = call i32 @csio_mgmtm_init(i32 %81, %struct.csio_hw* %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %132

87:                                               ; preds = %79
  %88 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %89 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %88, i32 0, i32 2
  %90 = call i32 @INIT_LIST_HEAD(i32* %89)
  %91 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %92 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %91, i32 0, i32 1
  %93 = call i32 @INIT_LIST_HEAD(i32* %92)
  store i64 0, i64* %5, align 8
  br label %94

94:                                               ; preds = %117, %87
  %95 = load i64, i64* %5, align 8
  %96 = load i64, i64* @csio_evtq_sz, align 8
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %98, label %120

98:                                               ; preds = %94
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call %struct.csio_evt_msg* @kzalloc(i32 4, i32 %99)
  store %struct.csio_evt_msg* %100, %struct.csio_evt_msg** %8, align 8
  %101 = load %struct.csio_evt_msg*, %struct.csio_evt_msg** %8, align 8
  %102 = icmp ne %struct.csio_evt_msg* %101, null
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  %106 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %107 = call i32 @csio_err(%struct.csio_hw* %106, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %126

108:                                              ; preds = %98
  %109 = load %struct.csio_evt_msg*, %struct.csio_evt_msg** %8, align 8
  %110 = getelementptr inbounds %struct.csio_evt_msg, %struct.csio_evt_msg* %109, i32 0, i32 0
  %111 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %112 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %111, i32 0, i32 1
  %113 = call i32 @list_add_tail(i32* %110, i32* %112)
  %114 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %115 = load i32, i32* @n_evt_freeq, align 4
  %116 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %114, i32 %115)
  br label %117

117:                                              ; preds = %108
  %118 = load i64, i64* %5, align 8
  %119 = add nsw i64 %118, 1
  store i64 %119, i64* %5, align 8
  br label %94

120:                                              ; preds = %94
  %121 = load i32, i32* @dev_num, align 4
  %122 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %123 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* @dev_num, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* @dev_num, align 4
  store i32 0, i32* %2, align 4
  br label %147

126:                                              ; preds = %103
  %127 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %128 = call i32 @csio_evtq_cleanup(%struct.csio_hw* %127)
  %129 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %130 = call i32 @csio_hw_to_mgmtm(%struct.csio_hw* %129)
  %131 = call i32 @csio_mgmtm_exit(i32 %130)
  br label %132

132:                                              ; preds = %126, %86
  %133 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %134 = call i32 @csio_hw_to_scsim(%struct.csio_hw* %133)
  %135 = call i32 @csio_scsim_exit(i32 %134)
  br label %136

136:                                              ; preds = %132, %78
  %137 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %138 = call i32 @csio_hw_to_wrm(%struct.csio_hw* %137)
  %139 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %140 = call i32 @csio_wrm_exit(i32 %138, %struct.csio_hw* %139)
  br label %141

141:                                              ; preds = %136, %70
  %142 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %143 = call i32 @csio_hw_to_mbm(%struct.csio_hw* %142)
  %144 = call i32 @csio_mbm_exit(i32 %143)
  br label %145

145:                                              ; preds = %141, %62
  %146 = load i32, i32* %4, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %145, %120
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @csio_init_state(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @csio_hw_get_device_id(%struct.csio_hw*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @csio_hw_set_description(%struct.csio_hw*, i32, i32) #1

declare dso_local i32 @csio_set_fwevt_intr_idx(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_set_nondata_intr_idx(%struct.csio_hw*, i32) #1

declare dso_local i64 @csio_mbm_init(i32, %struct.csio_hw*, i32) #1

declare dso_local i32 @csio_hw_to_mbm(%struct.csio_hw*) #1

declare dso_local i32 @csio_wrm_init(i32, %struct.csio_hw*) #1

declare dso_local i32 @csio_hw_to_wrm(%struct.csio_hw*) #1

declare dso_local i32 @csio_scsim_init(i32, %struct.csio_hw*) #1

declare dso_local i32 @csio_hw_to_scsim(%struct.csio_hw*) #1

declare dso_local i32 @csio_mgmtm_init(i32, %struct.csio_hw*) #1

declare dso_local i32 @csio_hw_to_mgmtm(%struct.csio_hw*) #1

declare dso_local %struct.csio_evt_msg* @kzalloc(i32, i32) #1

declare dso_local i32 @csio_err(%struct.csio_hw*, i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_evtq_cleanup(%struct.csio_hw*) #1

declare dso_local i32 @csio_mgmtm_exit(i32) #1

declare dso_local i32 @csio_scsim_exit(i32) #1

declare dso_local i32 @csio_wrm_exit(i32, %struct.csio_hw*) #1

declare dso_local i32 @csio_mbm_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
