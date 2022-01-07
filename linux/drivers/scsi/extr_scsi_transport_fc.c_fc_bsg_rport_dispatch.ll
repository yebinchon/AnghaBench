; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_fc_bsg_rport_dispatch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_fc_bsg_rport_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.bsg_job = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, %struct.fc_bsg_reply*, %struct.fc_bsg_request* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fc_bsg_reply = type { i32, i64 }
%struct.fc_bsg_request = type { i32 }
%struct.fc_internal = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.bsg_job*)* }

@ENOMSG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBADR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.bsg_job*)* @fc_bsg_rport_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_bsg_rport_dispatch(%struct.Scsi_Host* %0, %struct.bsg_job* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.bsg_job*, align 8
  %6 = alloca %struct.fc_internal*, align 8
  %7 = alloca %struct.fc_bsg_request*, align 8
  %8 = alloca %struct.fc_bsg_reply*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.bsg_job* %1, %struct.bsg_job** %5, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %12 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.fc_internal* @to_fc_internal(i32 %13)
  store %struct.fc_internal* %14, %struct.fc_internal** %6, align 8
  %15 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %16 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %15, i32 0, i32 5
  %17 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %16, align 8
  store %struct.fc_bsg_request* %17, %struct.fc_bsg_request** %7, align 8
  %18 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %19 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %18, i32 0, i32 4
  %20 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %19, align 8
  store %struct.fc_bsg_reply* %20, %struct.fc_bsg_reply** %8, align 8
  store i32 4, i32* %9, align 4
  %21 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %22 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMSG, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %10, align 4
  br label %74

29:                                               ; preds = %2
  %30 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %7, align 8
  %31 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %59 [
    i32 128, label %33
    i32 129, label %38
  ]

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = add i64 %35, 4
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %9, align 4
  br label %43

38:                                               ; preds = %29
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, 4
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %45 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %51 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %49, %43
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %10, align 4
  br label %74

58:                                               ; preds = %49
  br label %62

59:                                               ; preds = %29
  %60 = load i32, i32* @EBADR, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %10, align 4
  br label %74

62:                                               ; preds = %58
  %63 = load %struct.fc_internal*, %struct.fc_internal** %6, align 8
  %64 = getelementptr inbounds %struct.fc_internal, %struct.fc_internal* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32 (%struct.bsg_job*)*, i32 (%struct.bsg_job*)** %66, align 8
  %68 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %69 = call i32 %67(%struct.bsg_job* %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %97

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %59, %55, %26
  %75 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %76 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = icmp ult i64 %78, 4
  %80 = zext i1 %79 to i32
  %81 = call i32 @BUG_ON(i32 %80)
  %82 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %8, align 8
  %83 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %8, align 8
  %86 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %88 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %87, i32 0, i32 1
  store i32 4, i32* %88, align 4
  %89 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %90 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %8, align 8
  %91 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %8, align 8
  %94 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @bsg_job_done(%struct.bsg_job* %89, i32 %92, i64 %95)
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %74, %72
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.fc_internal* @to_fc_internal(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
