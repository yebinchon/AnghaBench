; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_file.c_fd_attach_hba.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_file.c_fd_attach_hba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_hba = type { i32, %struct.fd_host* }
%struct.fd_host = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Unable to allocate memory for struct fd_host\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"CORE_HBA[%d] - TCM FILEIO HBA Driver %s on Generic Target Core Stack %s\0A\00", align 1
@FD_VERSION = common dso_local global i32 0, align 4
@TARGET_CORE_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"CORE_HBA[%d] - Attached FILEIO HBA: %u to Generic\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_hba*, i32)* @fd_attach_hba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_attach_hba(%struct.se_hba* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.se_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fd_host*, align 8
  store %struct.se_hba* %0, %struct.se_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.fd_host* @kzalloc(i32 4, i32 %7)
  store %struct.fd_host* %8, %struct.fd_host** %6, align 8
  %9 = load %struct.fd_host*, %struct.fd_host** %6, align 8
  %10 = icmp ne %struct.fd_host* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %35

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.fd_host*, %struct.fd_host** %6, align 8
  %18 = getelementptr inbounds %struct.fd_host, %struct.fd_host* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.fd_host*, %struct.fd_host** %6, align 8
  %20 = load %struct.se_hba*, %struct.se_hba** %4, align 8
  %21 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %20, i32 0, i32 1
  store %struct.fd_host* %19, %struct.fd_host** %21, align 8
  %22 = load %struct.se_hba*, %struct.se_hba** %4, align 8
  %23 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @FD_VERSION, align 4
  %26 = load i32, i32* @TARGET_CORE_VERSION, align 4
  %27 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25, i32 %26)
  %28 = load %struct.se_hba*, %struct.se_hba** %4, align 8
  %29 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.fd_host*, %struct.fd_host** %6, align 8
  %32 = getelementptr inbounds %struct.fd_host, %struct.fd_host* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32 %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %15, %11
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.fd_host* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
