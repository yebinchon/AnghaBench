; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_post_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_post_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"post_disconnect: Invalid new state %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"post_disconnect: new_state 0x%x, flag_bits 0x%x, vscsi->flags 0x%x, state %hx\0A\00", align 1
@DISCONNECT_SCHEDULED = common dso_local global i32 0, align 4
@SCHEDULE_DISCONNECT = common dso_local global i32 0, align 4
@ibmvscsis_disconnect = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Leaving post_disconnect: flags 0x%x, new_state 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_info*, i32, i32)* @ibmvscsis_post_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvscsis_post_disconnect(%struct.scsi_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.scsi_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scsi_info* %0, %struct.scsi_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %10 [
    i32 132, label %9
    i32 137, label %9
    i32 135, label %9
    i32 128, label %9
  ]

9:                                                ; preds = %3, %3, %3, %3
  br label %15

10:                                               ; preds = %3
  %11 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %12 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %11, i32 0, i32 3
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @dev_err(i32* %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %107

15:                                               ; preds = %9
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %18 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %22 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %21, i32 0, i32 3
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %26 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %29 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %22, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %24, i32 %27, i32 %30)
  %32 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %33 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @DISCONNECT_SCHEDULED, align 4
  %36 = load i32, i32* @SCHEDULE_DISCONNECT, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %15
  %41 = load i32, i32* @SCHEDULE_DISCONNECT, align 4
  %42 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %43 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %48 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %50 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %49, i32 0, i32 4
  %51 = load i32, i32* @ibmvscsis_disconnect, align 4
  %52 = call i32 @INIT_WORK(i32* %50, i32 %51)
  %53 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %54 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %57 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %56, i32 0, i32 4
  %58 = call i32 @queue_work(i32 %55, i32* %57)
  br label %97

59:                                               ; preds = %15
  %60 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %61 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %66 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %7, align 4
  br label %72

68:                                               ; preds = %59
  %69 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %70 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i32, i32* %7, align 4
  switch i32 %73, label %95 [
    i32 134, label %74
    i32 132, label %74
    i32 136, label %75
    i32 137, label %75
    i32 131, label %75
    i32 135, label %83
    i32 129, label %91
    i32 128, label %91
    i32 130, label %91
    i32 138, label %91
    i32 133, label %91
  ]

74:                                               ; preds = %72, %72
  br label %96

75:                                               ; preds = %72, %72, %72
  %76 = load i32, i32* %5, align 4
  %77 = icmp eq i32 %76, 132
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %81 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %78, %75
  br label %96

83:                                               ; preds = %72
  %84 = load i32, i32* %5, align 4
  switch i32 %84, label %89 [
    i32 132, label %85
    i32 137, label %85
  ]

85:                                               ; preds = %83, %83
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %88 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  br label %90

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %89, %85
  br label %96

91:                                               ; preds = %72, %72, %72, %72, %72
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %94 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  br label %96

95:                                               ; preds = %72
  br label %96

96:                                               ; preds = %95, %91, %90, %82, %74
  br label %97

97:                                               ; preds = %96, %40
  %98 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %99 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %98, i32 0, i32 3
  %100 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %101 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %104 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %99, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %102, i32 %105)
  br label %107

107:                                              ; preds = %97, %10
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
