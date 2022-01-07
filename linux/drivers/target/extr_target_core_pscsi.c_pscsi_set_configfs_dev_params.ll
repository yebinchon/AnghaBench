; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pscsi.c_pscsi_set_configfs_dev_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pscsi.c_pscsi_set_configfs_dev_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pscsi_hba_virt* }
%struct.pscsi_hba_virt = type { i32, i32 }
%struct.pscsi_dev_virt = type { i32, i32, i32, i32, i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@tokens = common dso_local global i32 0, align 4
@PHV_LLD_SCSI_HOST_NO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [81 x i8] c"PSCSI[%d]: Unable to accept scsi_host_id while phv_mode == PHV_LLD_SCSI_HOST_NO\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"PSCSI[%d]: Referencing SCSI Host ID: %d\0A\00", align 1
@PDF_HAS_VIRT_HOST_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"PSCSI[%d]: Referencing SCSI Channel ID: %d\0A\00", align 1
@PDF_HAS_CHANNEL_ID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"PSCSI[%d]: Referencing SCSI Target ID: %d\0A\00", align 1
@PDF_HAS_TARGET_ID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"PSCSI[%d]: Referencing SCSI LUN ID: %d\0A\00", align 1
@PDF_HAS_LUN_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_device*, i8*, i32)* @pscsi_set_configfs_dev_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pscsi_set_configfs_dev_params(%struct.se_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.se_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pscsi_dev_virt*, align 8
  %9 = alloca %struct.pscsi_hba_virt*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.se_device*, %struct.se_device** %5, align 8
  %20 = call %struct.pscsi_dev_virt* @PSCSI_DEV(%struct.se_device* %19)
  store %struct.pscsi_dev_virt* %20, %struct.pscsi_dev_virt** %8, align 8
  %21 = load %struct.se_device*, %struct.se_device** %5, align 8
  %22 = getelementptr inbounds %struct.se_device, %struct.se_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.pscsi_hba_virt*, %struct.pscsi_hba_virt** %24, align 8
  store %struct.pscsi_hba_virt* %25, %struct.pscsi_hba_virt** %9, align 8
  %26 = load i32, i32* @MAX_OPT_ARGS, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %13, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kstrdup(i8* %30, i32 %31)
  store i8* %32, i8** %12, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %3
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %164

38:                                               ; preds = %3
  %39 = load i8*, i8** %12, align 8
  store i8* %39, i8** %10, align 8
  br label %40

40:                                               ; preds = %151, %47, %38
  %41 = call i8* @strsep(i8** %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %41, i8** %11, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %152

43:                                               ; preds = %40
  %44 = load i8*, i8** %11, align 8
  %45 = load i8, i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  br label %40

48:                                               ; preds = %43
  %49 = load i8*, i8** %11, align 8
  %50 = load i32, i32* @tokens, align 4
  %51 = call i32 @match_token(i8* %49, i32 %50, i32* %29)
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %17, align 4
  switch i32 %52, label %150 [
    i32 130, label %53
    i32 131, label %87
    i32 128, label %108
    i32 129, label %129
  ]

53:                                               ; preds = %48
  %54 = load %struct.pscsi_hba_virt*, %struct.pscsi_hba_virt** %9, align 8
  %55 = getelementptr inbounds %struct.pscsi_hba_virt, %struct.pscsi_hba_virt* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PHV_LLD_SCSI_HOST_NO, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load %struct.pscsi_hba_virt*, %struct.pscsi_hba_virt** %9, align 8
  %61 = getelementptr inbounds %struct.pscsi_hba_virt, %struct.pscsi_hba_virt* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pr_err(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %15, align 4
  br label %153

66:                                               ; preds = %53
  %67 = call i32 @match_int(i32* %29, i32* %16)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %153

71:                                               ; preds = %66
  %72 = load i32, i32* %16, align 4
  %73 = load %struct.pscsi_dev_virt*, %struct.pscsi_dev_virt** %8, align 8
  %74 = getelementptr inbounds %struct.pscsi_dev_virt, %struct.pscsi_dev_virt* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.pscsi_hba_virt*, %struct.pscsi_hba_virt** %9, align 8
  %76 = getelementptr inbounds %struct.pscsi_hba_virt, %struct.pscsi_hba_virt* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.pscsi_dev_virt*, %struct.pscsi_dev_virt** %8, align 8
  %79 = getelementptr inbounds %struct.pscsi_dev_virt, %struct.pscsi_dev_virt* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %80)
  %82 = load i32, i32* @PDF_HAS_VIRT_HOST_ID, align 4
  %83 = load %struct.pscsi_dev_virt*, %struct.pscsi_dev_virt** %8, align 8
  %84 = getelementptr inbounds %struct.pscsi_dev_virt, %struct.pscsi_dev_virt* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %151

87:                                               ; preds = %48
  %88 = call i32 @match_int(i32* %29, i32* %16)
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %153

92:                                               ; preds = %87
  %93 = load i32, i32* %16, align 4
  %94 = load %struct.pscsi_dev_virt*, %struct.pscsi_dev_virt** %8, align 8
  %95 = getelementptr inbounds %struct.pscsi_dev_virt, %struct.pscsi_dev_virt* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.pscsi_hba_virt*, %struct.pscsi_hba_virt** %9, align 8
  %97 = getelementptr inbounds %struct.pscsi_hba_virt, %struct.pscsi_hba_virt* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.pscsi_dev_virt*, %struct.pscsi_dev_virt** %8, align 8
  %100 = getelementptr inbounds %struct.pscsi_dev_virt, %struct.pscsi_dev_virt* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %98, i32 %101)
  %103 = load i32, i32* @PDF_HAS_CHANNEL_ID, align 4
  %104 = load %struct.pscsi_dev_virt*, %struct.pscsi_dev_virt** %8, align 8
  %105 = getelementptr inbounds %struct.pscsi_dev_virt, %struct.pscsi_dev_virt* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %151

108:                                              ; preds = %48
  %109 = call i32 @match_int(i32* %29, i32* %16)
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %15, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %153

113:                                              ; preds = %108
  %114 = load i32, i32* %16, align 4
  %115 = load %struct.pscsi_dev_virt*, %struct.pscsi_dev_virt** %8, align 8
  %116 = getelementptr inbounds %struct.pscsi_dev_virt, %struct.pscsi_dev_virt* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  %117 = load %struct.pscsi_hba_virt*, %struct.pscsi_hba_virt** %9, align 8
  %118 = getelementptr inbounds %struct.pscsi_hba_virt, %struct.pscsi_hba_virt* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.pscsi_dev_virt*, %struct.pscsi_dev_virt** %8, align 8
  %121 = getelementptr inbounds %struct.pscsi_dev_virt, %struct.pscsi_dev_virt* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %119, i32 %122)
  %124 = load i32, i32* @PDF_HAS_TARGET_ID, align 4
  %125 = load %struct.pscsi_dev_virt*, %struct.pscsi_dev_virt** %8, align 8
  %126 = getelementptr inbounds %struct.pscsi_dev_virt, %struct.pscsi_dev_virt* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %151

129:                                              ; preds = %48
  %130 = call i32 @match_int(i32* %29, i32* %16)
  store i32 %130, i32* %15, align 4
  %131 = load i32, i32* %15, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  br label %153

134:                                              ; preds = %129
  %135 = load i32, i32* %16, align 4
  %136 = load %struct.pscsi_dev_virt*, %struct.pscsi_dev_virt** %8, align 8
  %137 = getelementptr inbounds %struct.pscsi_dev_virt, %struct.pscsi_dev_virt* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  %138 = load %struct.pscsi_hba_virt*, %struct.pscsi_hba_virt** %9, align 8
  %139 = getelementptr inbounds %struct.pscsi_hba_virt, %struct.pscsi_hba_virt* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.pscsi_dev_virt*, %struct.pscsi_dev_virt** %8, align 8
  %142 = getelementptr inbounds %struct.pscsi_dev_virt, %struct.pscsi_dev_virt* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %140, i32 %143)
  %145 = load i32, i32* @PDF_HAS_LUN_ID, align 4
  %146 = load %struct.pscsi_dev_virt*, %struct.pscsi_dev_virt** %8, align 8
  %147 = getelementptr inbounds %struct.pscsi_dev_virt, %struct.pscsi_dev_virt* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %151

150:                                              ; preds = %48
  br label %151

151:                                              ; preds = %150, %134, %113, %92, %71
  br label %40

152:                                              ; preds = %40
  br label %153

153:                                              ; preds = %152, %133, %112, %91, %70, %59
  %154 = load i8*, i8** %10, align 8
  %155 = call i32 @kfree(i8* %154)
  %156 = load i32, i32* %15, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %153
  %159 = load i32, i32* %7, align 4
  br label %162

160:                                              ; preds = %153
  %161 = load i32, i32* %15, align 4
  br label %162

162:                                              ; preds = %160, %158
  %163 = phi i32 [ %159, %158 ], [ %161, %160 ]
  store i32 %163, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %164

164:                                              ; preds = %162, %35
  %165 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %165)
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local %struct.pscsi_dev_virt* @PSCSI_DEV(%struct.se_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @match_token(i8*, i32, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @match_int(i32*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
