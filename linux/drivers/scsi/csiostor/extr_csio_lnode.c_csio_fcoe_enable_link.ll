; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_fcoe_enable_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_fcoe_enable_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_lnode = type { i64, %struct.csio_hw* }
%struct.csio_hw = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.csio_mb = type { i64 }
%struct.fw_fcoe_link_cmd = type { i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@n_err_nomem = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FCOE_LINK_UP = common dso_local global i64 0, align 8
@FCOE_LINK_DOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"bringing FCOE LINK %s on Port:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@CSIO_MB_DEFAULT_TMO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"failed to issue FCOE LINK cmd on port[%d]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FW_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"FCOE LINK %s cmd on port[%d] failed with ret:x%x\0A\00", align 1
@CSIO_MAX_PPORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_lnode*, i32)* @csio_fcoe_enable_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_fcoe_enable_link(%struct.csio_lnode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.csio_lnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.csio_hw*, align 8
  %7 = alloca %struct.csio_mb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.fw_fcoe_link_cmd*, align 8
  %12 = alloca i32, align 4
  store %struct.csio_lnode* %0, %struct.csio_lnode** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.csio_lnode*, %struct.csio_lnode** %4, align 8
  %14 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %13, i32 0, i32 1
  %15 = load %struct.csio_hw*, %struct.csio_hw** %14, align 8
  store %struct.csio_hw* %15, %struct.csio_hw** %6, align 8
  %16 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %17 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.csio_mb* @mempool_alloc(i32 %18, i32 %19)
  store %struct.csio_mb* %20, %struct.csio_mb** %7, align 8
  %21 = load %struct.csio_mb*, %struct.csio_mb** %7, align 8
  %22 = icmp ne %struct.csio_mb* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %25 = load i32, i32* @n_err_nomem, align 4
  %26 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %24, i32 %25)
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %152

29:                                               ; preds = %2
  %30 = load %struct.csio_lnode*, %struct.csio_lnode** %4, align 8
  %31 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %9, align 8
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i64, i64* @FCOE_LINK_UP, align 8
  br label %39

37:                                               ; preds = %29
  %38 = load i64, i64* @FCOE_LINK_DOWN, align 8
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i64 [ %36, %35 ], [ %38, %37 ]
  store i64 %40, i64* %10, align 8
  %41 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %42 = load i64, i64* %10, align 8
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @csio_dbg(%struct.csio_hw* %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %45, i64 %46)
  %48 = load %struct.csio_lnode*, %struct.csio_lnode** %4, align 8
  %49 = load %struct.csio_mb*, %struct.csio_mb** %7, align 8
  %50 = load i32, i32* @CSIO_MB_DEFAULT_TMO, align 4
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @csio_write_fcoe_link_cond_init_mb(%struct.csio_lnode* %48, %struct.csio_mb* %49, i32 %50, i64 %51, i64 %52, i32 0, i32 0, i32 0, i32* null)
  %54 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %55 = load %struct.csio_mb*, %struct.csio_mb** %7, align 8
  %56 = call i64 @csio_mb_issue(%struct.csio_hw* %54, %struct.csio_mb* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %39
  %59 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %60 = load i64, i64* %9, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 (%struct.csio_hw*, i8*, i8*, ...) @csio_err(%struct.csio_hw* %59, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  %63 = load %struct.csio_mb*, %struct.csio_mb** %7, align 8
  %64 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %65 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @mempool_free(%struct.csio_mb* %63, i32 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %152

70:                                               ; preds = %39
  %71 = load %struct.csio_mb*, %struct.csio_mb** %7, align 8
  %72 = call i32 @csio_mb_fw_retval(%struct.csio_mb* %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @FW_SUCCESS, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %70
  %77 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %78 = load i64, i64* %10, align 8
  %79 = icmp ne i64 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %82 = load i64, i64* %9, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 (%struct.csio_hw*, i8*, i8*, ...) @csio_err(%struct.csio_hw* %77, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i8* %81, i64 %82, i32 %83)
  %85 = load %struct.csio_mb*, %struct.csio_mb** %7, align 8
  %86 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %87 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @mempool_free(%struct.csio_mb* %85, i32 %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %152

92:                                               ; preds = %70
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  br label %146

96:                                               ; preds = %92
  %97 = load %struct.csio_mb*, %struct.csio_mb** %7, align 8
  %98 = getelementptr inbounds %struct.csio_mb, %struct.csio_mb* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to %struct.fw_fcoe_link_cmd*
  store %struct.fw_fcoe_link_cmd* %100, %struct.fw_fcoe_link_cmd** %11, align 8
  %101 = load %struct.csio_lnode*, %struct.csio_lnode** %4, align 8
  %102 = call i32 @csio_ln_wwnn(%struct.csio_lnode* %101)
  %103 = load %struct.fw_fcoe_link_cmd*, %struct.fw_fcoe_link_cmd** %11, align 8
  %104 = getelementptr inbounds %struct.fw_fcoe_link_cmd, %struct.fw_fcoe_link_cmd* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @memcpy(i32 %102, i32 %105, i32 8)
  %107 = load %struct.csio_lnode*, %struct.csio_lnode** %4, align 8
  %108 = call i32 @csio_ln_wwpn(%struct.csio_lnode* %107)
  %109 = load %struct.fw_fcoe_link_cmd*, %struct.fw_fcoe_link_cmd** %11, align 8
  %110 = getelementptr inbounds %struct.fw_fcoe_link_cmd, %struct.fw_fcoe_link_cmd* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @memcpy(i32 %108, i32 %111, i32 8)
  store i32 0, i32* %12, align 4
  br label %113

113:                                              ; preds = %142, %96
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* @CSIO_MAX_PPORTS, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %145

117:                                              ; preds = %113
  %118 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %119 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %118, i32 0, i32 1
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %9, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %141

128:                                              ; preds = %117
  %129 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %130 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %129, i32 0, i32 1
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.fw_fcoe_link_cmd*, %struct.fw_fcoe_link_cmd** %11, align 8
  %138 = getelementptr inbounds %struct.fw_fcoe_link_cmd, %struct.fw_fcoe_link_cmd* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @memcpy(i32 %136, i32 %139, i32 6)
  br label %141

141:                                              ; preds = %128, %117
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %12, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %12, align 4
  br label %113

145:                                              ; preds = %113
  br label %146

146:                                              ; preds = %145, %95
  %147 = load %struct.csio_mb*, %struct.csio_mb** %7, align 8
  %148 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %149 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @mempool_free(%struct.csio_mb* %147, i32 %150)
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %146, %76, %58, %23
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local %struct.csio_mb* @mempool_alloc(i32, i32) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_dbg(%struct.csio_hw*, i8*, i8*, i64) #1

declare dso_local i32 @csio_write_fcoe_link_cond_init_mb(%struct.csio_lnode*, %struct.csio_mb*, i32, i64, i64, i32, i32, i32, i32*) #1

declare dso_local i64 @csio_mb_issue(%struct.csio_hw*, %struct.csio_mb*) #1

declare dso_local i32 @csio_err(%struct.csio_hw*, i8*, i8*, ...) #1

declare dso_local i32 @mempool_free(%struct.csio_mb*, i32) #1

declare dso_local i32 @csio_mb_fw_retval(%struct.csio_mb*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @csio_ln_wwnn(%struct.csio_lnode*) #1

declare dso_local i32 @csio_ln_wwpn(%struct.csio_lnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
