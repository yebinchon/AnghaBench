; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_free_cmd_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_free_cmd_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ibmvscsis_cmd = type { i32, i32, %struct.iu_entry* }
%struct.iu_entry = type { i32 }

@PROCESSING_MAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"free_cmd_resources unknown type %d\0A\00", align 1
@WAIT_FOR_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_info*, %struct.ibmvscsis_cmd*)* @ibmvscsis_free_cmd_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvscsis_free_cmd_resources(%struct.scsi_info* %0, %struct.ibmvscsis_cmd* %1) #0 {
  %3 = alloca %struct.scsi_info*, align 8
  %4 = alloca %struct.ibmvscsis_cmd*, align 8
  %5 = alloca %struct.iu_entry*, align 8
  store %struct.scsi_info* %0, %struct.scsi_info** %3, align 8
  store %struct.ibmvscsis_cmd* %1, %struct.ibmvscsis_cmd** %4, align 8
  %6 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %4, align 8
  %7 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %6, i32 0, i32 2
  %8 = load %struct.iu_entry*, %struct.iu_entry** %7, align 8
  store %struct.iu_entry* %8, %struct.iu_entry** %5, align 8
  %9 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %4, align 8
  %10 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %31 [
    i32 129, label %12
    i32 130, label %12
    i32 131, label %23
    i32 128, label %30
  ]

12:                                               ; preds = %2, %2
  %13 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %19 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %17, %12
  br label %38

23:                                               ; preds = %2
  %24 = load i32, i32* @PROCESSING_MAD, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %27 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %38

30:                                               ; preds = %2
  br label %38

31:                                               ; preds = %2
  %32 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %33 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %32, i32 0, i32 7
  %34 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %4, align 8
  %35 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %31, %30, %23, %22
  %39 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %4, align 8
  %40 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %39, i32 0, i32 2
  store %struct.iu_entry* null, %struct.iu_entry** %40, align 8
  %41 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %4, align 8
  %42 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %41, i32 0, i32 1
  %43 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %44 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %43, i32 0, i32 6
  %45 = call i32 @list_add_tail(i32* %42, i32* %44)
  %46 = load %struct.iu_entry*, %struct.iu_entry** %5, align 8
  %47 = call i32 @srp_iu_put(%struct.iu_entry* %46)
  %48 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %49 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %48, i32 0, i32 5
  %50 = call i64 @list_empty(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %79

52:                                               ; preds = %38
  %53 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %54 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %53, i32 0, i32 4
  %55 = call i64 @list_empty(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %52
  %58 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %59 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %58, i32 0, i32 3
  %60 = call i64 @list_empty(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %57
  %63 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %64 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @WAIT_FOR_IDLE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %62
  %70 = load i32, i32* @WAIT_FOR_IDLE, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %73 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %77 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %76, i32 0, i32 2
  %78 = call i32 @complete(i32* %77)
  br label %79

79:                                               ; preds = %69, %62, %57, %52, %38
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @srp_iu_put(%struct.iu_entry*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
