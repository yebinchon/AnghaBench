; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_nexus_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_nexus_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_portal_group = type { i32 }
%struct.se_session = type { i64 }
%struct.vhost_scsi_cmd = type { i8*, i8*, i8* }

@VHOST_SCSI_DEFAULT_TAGS = common dso_local global i32 0, align 4
@VHOST_SCSI_PREALLOC_SGLS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unable to allocate tv_cmd->tvc_sgl\0A\00", align 1
@VHOST_SCSI_PREALLOC_UPAGES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Unable to allocate tv_cmd->tvc_upages\0A\00", align 1
@VHOST_SCSI_PREALLOC_PROT_SGLS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Unable to allocate tv_cmd->tvc_prot_sgl\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_portal_group*, %struct.se_session*, i8*)* @vhost_scsi_nexus_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_scsi_nexus_cb(%struct.se_portal_group* %0, %struct.se_session* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.se_portal_group*, align 8
  %6 = alloca %struct.se_session*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.vhost_scsi_cmd*, align 8
  %9 = alloca i32, align 4
  store %struct.se_portal_group* %0, %struct.se_portal_group** %5, align 8
  store %struct.se_session* %1, %struct.se_session** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %58, %3
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @VHOST_SCSI_DEFAULT_TAGS, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %61

14:                                               ; preds = %10
  %15 = load %struct.se_session*, %struct.se_session** %6, align 8
  %16 = getelementptr inbounds %struct.se_session, %struct.se_session* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.vhost_scsi_cmd*
  %19 = load i32, i32* %9, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %18, i64 %20
  store %struct.vhost_scsi_cmd* %21, %struct.vhost_scsi_cmd** %8, align 8
  %22 = load i32, i32* @VHOST_SCSI_PREALLOC_SGLS, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kcalloc(i32 %22, i32 4, i32 %23)
  %25 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %8, align 8
  %26 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %8, align 8
  %28 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %14
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %62

33:                                               ; preds = %14
  %34 = load i32, i32* @VHOST_SCSI_PREALLOC_UPAGES, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kcalloc(i32 %34, i32 8, i32 %35)
  %37 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %8, align 8
  %38 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %8, align 8
  %40 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %33
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %62

45:                                               ; preds = %33
  %46 = load i32, i32* @VHOST_SCSI_PREALLOC_PROT_SGLS, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @kcalloc(i32 %46, i32 4, i32 %47)
  %49 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %8, align 8
  %50 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %8, align 8
  %52 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %45
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %62

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %10

61:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %67

62:                                               ; preds = %55, %43, %31
  %63 = load %struct.se_session*, %struct.se_session** %6, align 8
  %64 = call i32 @vhost_scsi_free_cmd_map_res(%struct.se_session* %63)
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %62, %61
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @vhost_scsi_free_cmd_map_res(%struct.se_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
