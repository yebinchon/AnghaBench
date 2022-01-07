; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_make_nexus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_make_nexus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_scsi_tpg = type { i32, %struct.vhost_scsi_nexus*, i32 }
%struct.vhost_scsi_nexus = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"tpg->tpg_nexus already exists\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Unable to allocate struct vhost_scsi_nexus\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@VHOST_SCSI_DEFAULT_TAGS = common dso_local global i32 0, align 4
@TARGET_PROT_DIN_PASS = common dso_local global i32 0, align 4
@TARGET_PROT_DOUT_PASS = common dso_local global i32 0, align 4
@vhost_scsi_nexus_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhost_scsi_tpg*, i8*)* @vhost_scsi_make_nexus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_scsi_make_nexus(%struct.vhost_scsi_tpg* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vhost_scsi_tpg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vhost_scsi_nexus*, align 8
  store %struct.vhost_scsi_tpg* %0, %struct.vhost_scsi_tpg** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %4, align 8
  %8 = getelementptr inbounds %struct.vhost_scsi_tpg, %struct.vhost_scsi_tpg* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %4, align 8
  %11 = getelementptr inbounds %struct.vhost_scsi_tpg, %struct.vhost_scsi_tpg* %10, i32 0, i32 1
  %12 = load %struct.vhost_scsi_nexus*, %struct.vhost_scsi_nexus** %11, align 8
  %13 = icmp ne %struct.vhost_scsi_nexus* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %4, align 8
  %16 = getelementptr inbounds %struct.vhost_scsi_tpg, %struct.vhost_scsi_tpg* %15, i32 0, i32 0
  %17 = call i32 @mutex_unlock(i32* %16)
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EEXIST, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %66

21:                                               ; preds = %2
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.vhost_scsi_nexus* @kzalloc(i32 4, i32 %22)
  store %struct.vhost_scsi_nexus* %23, %struct.vhost_scsi_nexus** %6, align 8
  %24 = load %struct.vhost_scsi_nexus*, %struct.vhost_scsi_nexus** %6, align 8
  %25 = icmp ne %struct.vhost_scsi_nexus* %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  %27 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %4, align 8
  %28 = getelementptr inbounds %struct.vhost_scsi_tpg, %struct.vhost_scsi_tpg* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %66

33:                                               ; preds = %21
  %34 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %4, align 8
  %35 = getelementptr inbounds %struct.vhost_scsi_tpg, %struct.vhost_scsi_tpg* %34, i32 0, i32 2
  %36 = load i32, i32* @VHOST_SCSI_DEFAULT_TAGS, align 4
  %37 = load i32, i32* @TARGET_PROT_DIN_PASS, align 4
  %38 = load i32, i32* @TARGET_PROT_DOUT_PASS, align 4
  %39 = or i32 %37, %38
  %40 = load i8*, i8** %5, align 8
  %41 = load %struct.vhost_scsi_nexus*, %struct.vhost_scsi_nexus** %6, align 8
  %42 = load i32, i32* @vhost_scsi_nexus_cb, align 4
  %43 = call i32 @target_setup_session(i32* %35, i32 %36, i32 4, i32 %39, i8* %40, %struct.vhost_scsi_nexus* %41, i32 %42)
  %44 = load %struct.vhost_scsi_nexus*, %struct.vhost_scsi_nexus** %6, align 8
  %45 = getelementptr inbounds %struct.vhost_scsi_nexus, %struct.vhost_scsi_nexus* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.vhost_scsi_nexus*, %struct.vhost_scsi_nexus** %6, align 8
  %47 = getelementptr inbounds %struct.vhost_scsi_nexus, %struct.vhost_scsi_nexus* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @IS_ERR(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %33
  %52 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %4, align 8
  %53 = getelementptr inbounds %struct.vhost_scsi_tpg, %struct.vhost_scsi_tpg* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load %struct.vhost_scsi_nexus*, %struct.vhost_scsi_nexus** %6, align 8
  %56 = call i32 @kfree(%struct.vhost_scsi_nexus* %55)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %66

59:                                               ; preds = %33
  %60 = load %struct.vhost_scsi_nexus*, %struct.vhost_scsi_nexus** %6, align 8
  %61 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %4, align 8
  %62 = getelementptr inbounds %struct.vhost_scsi_tpg, %struct.vhost_scsi_tpg* %61, i32 0, i32 1
  store %struct.vhost_scsi_nexus* %60, %struct.vhost_scsi_nexus** %62, align 8
  %63 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %4, align 8
  %64 = getelementptr inbounds %struct.vhost_scsi_tpg, %struct.vhost_scsi_tpg* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %59, %51, %26, %14
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.vhost_scsi_nexus* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @target_setup_session(i32*, i32, i32, i32, i8*, %struct.vhost_scsi_nexus*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @kfree(%struct.vhost_scsi_nexus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
