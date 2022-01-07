; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_alloc_cmds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_alloc_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { i32, i64 }
%struct.ibmvscsis_cmd = type { i32, i32, %struct.scsi_info*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ibmvscsis_scheduler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_info*, i32)* @ibmvscsis_alloc_cmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvscsis_alloc_cmds(%struct.scsi_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ibmvscsis_cmd*, align 8
  %7 = alloca i32, align 4
  store %struct.scsi_info* %0, %struct.scsi_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %9 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %8, i32 0, i32 0
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i64 @kcalloc(i32 %11, i32 24, i32 %12)
  %14 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %15 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %14, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  %16 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %17 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %53

23:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %24 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %25 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.ibmvscsis_cmd*
  store %struct.ibmvscsis_cmd* %27, %struct.ibmvscsis_cmd** %6, align 8
  br label %28

28:                                               ; preds = %47, %23
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  %33 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %6, align 8
  %34 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %33, i32 0, i32 3
  store i32* null, i32** %34, align 8
  %35 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %36 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %6, align 8
  %37 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %36, i32 0, i32 2
  store %struct.scsi_info* %35, %struct.scsi_info** %37, align 8
  %38 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %6, align 8
  %39 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %38, i32 0, i32 1
  %40 = load i32, i32* @ibmvscsis_scheduler, align 4
  %41 = call i32 @INIT_WORK(i32* %39, i32 %40)
  %42 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %6, align 8
  %43 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %42, i32 0, i32 0
  %44 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %45 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %44, i32 0, i32 0
  %46 = call i32 @list_add_tail(i32* %43, i32* %45)
  br label %47

47:                                               ; preds = %32
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  %50 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %6, align 8
  %51 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %50, i32 1
  store %struct.ibmvscsis_cmd* %51, %struct.ibmvscsis_cmd** %6, align 8
  br label %28

52:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %20
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
