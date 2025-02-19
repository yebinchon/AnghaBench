; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_rd.c_rd_attach_hba.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_rd.c_rd_attach_hba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_hba = type { i32, %struct.rd_host* }
%struct.rd_host = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"CORE_HBA[%d] - TCM Ramdisk HBA Driver %s on Generic Target Core Stack %s\0A\00", align 1
@RD_HBA_VERSION = common dso_local global i32 0, align 4
@TARGET_CORE_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_hba*, i32)* @rd_attach_hba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rd_attach_hba(%struct.se_hba* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.se_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rd_host*, align 8
  store %struct.se_hba* %0, %struct.se_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.rd_host* @kzalloc(i32 4, i32 %7)
  store %struct.rd_host* %8, %struct.rd_host** %6, align 8
  %9 = load %struct.rd_host*, %struct.rd_host** %6, align 8
  %10 = icmp ne %struct.rd_host* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %27

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.rd_host*, %struct.rd_host** %6, align 8
  %17 = getelementptr inbounds %struct.rd_host, %struct.rd_host* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.rd_host*, %struct.rd_host** %6, align 8
  %19 = load %struct.se_hba*, %struct.se_hba** %4, align 8
  %20 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %19, i32 0, i32 1
  store %struct.rd_host* %18, %struct.rd_host** %20, align 8
  %21 = load %struct.se_hba*, %struct.se_hba** %4, align 8
  %22 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @RD_HBA_VERSION, align 4
  %25 = load i32, i32* @TARGET_CORE_VERSION, align 4
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i32 %25)
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %14, %11
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.rd_host* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
