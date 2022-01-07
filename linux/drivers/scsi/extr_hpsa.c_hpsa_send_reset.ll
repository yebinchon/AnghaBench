; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_send_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_send_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hpsa_scsi_dev_t = type { i32 }
%struct.CommandList = type { %struct.ErrorInfo*, %struct.hpsa_scsi_dev_t* }
%struct.ErrorInfo = type { i64 }

@IO_OK = common dso_local global i32 0, align 4
@TYPE_MSG = common dso_local global i32 0, align 4
@NO_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to send reset command\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, %struct.hpsa_scsi_dev_t*, i32, i32)* @hpsa_send_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_send_reset(%struct.ctlr_info* %0, %struct.hpsa_scsi_dev_t* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ctlr_info*, align 8
  %6 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.CommandList*, align 8
  %11 = alloca %struct.ErrorInfo*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %5, align 8
  store %struct.hpsa_scsi_dev_t* %1, %struct.hpsa_scsi_dev_t** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @IO_OK, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %14 = call %struct.CommandList* @cmd_alloc(%struct.ctlr_info* %13)
  store %struct.CommandList* %14, %struct.CommandList** %10, align 8
  %15 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %16 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %17 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %16, i32 0, i32 1
  store %struct.hpsa_scsi_dev_t* %15, %struct.hpsa_scsi_dev_t** %17, align 8
  %18 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %21 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %22 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @TYPE_MSG, align 4
  %25 = call i32 @fill_cmd(%struct.CommandList* %18, i32 %19, %struct.ctlr_info* %20, i32* null, i32 0, i32 0, i32 %23, i32 %24)
  %26 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %27 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @NO_TIMEOUT, align 4
  %30 = call i32 @hpsa_scsi_do_simple_cmd(%struct.ctlr_info* %26, %struct.CommandList* %27, i32 %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %4
  %34 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %35 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @dev_warn(i32* %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %52

39:                                               ; preds = %4
  %40 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %41 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %40, i32 0, i32 0
  %42 = load %struct.ErrorInfo*, %struct.ErrorInfo** %41, align 8
  store %struct.ErrorInfo* %42, %struct.ErrorInfo** %11, align 8
  %43 = load %struct.ErrorInfo*, %struct.ErrorInfo** %11, align 8
  %44 = getelementptr inbounds %struct.ErrorInfo, %struct.ErrorInfo* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %49 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %50 = call i32 @hpsa_scsi_interpret_error(%struct.ctlr_info* %48, %struct.CommandList* %49)
  store i32 -1, i32* %9, align 4
  br label %51

51:                                               ; preds = %47, %39
  br label %52

52:                                               ; preds = %51, %33
  %53 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %54 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %55 = call i32 @cmd_free(%struct.ctlr_info* %53, %struct.CommandList* %54)
  %56 = load i32, i32* %9, align 4
  ret i32 %56
}

declare dso_local %struct.CommandList* @cmd_alloc(%struct.ctlr_info*) #1

declare dso_local i32 @fill_cmd(%struct.CommandList*, i32, %struct.ctlr_info*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @hpsa_scsi_do_simple_cmd(%struct.ctlr_info*, %struct.CommandList*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @hpsa_scsi_interpret_error(%struct.ctlr_info*, %struct.CommandList*) #1

declare dso_local i32 @cmd_free(%struct.ctlr_info*, %struct.CommandList*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
