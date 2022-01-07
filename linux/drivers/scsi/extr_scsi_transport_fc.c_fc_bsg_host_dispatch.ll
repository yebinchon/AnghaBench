; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_fc_bsg_host_dispatch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_fc_bsg_host_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.bsg_job = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.fc_bsg_reply*, %struct.fc_bsg_request* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.fc_bsg_reply = type { i32, i64 }
%struct.fc_bsg_request = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.fc_internal = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.bsg_job*)* }

@ENOMSG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@EBADR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.bsg_job*)* @fc_bsg_host_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_bsg_host_dispatch(%struct.Scsi_Host* %0, %struct.bsg_job* %1) #0 {
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
  %12 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
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
  br label %125

29:                                               ; preds = %2
  %30 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %7, align 8
  %31 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %110 [
    i32 132, label %33
    i32 130, label %38
    i32 129, label %43
    i32 131, label %63
    i32 128, label %83
  ]

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = add i64 %35, 4
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %9, align 4
  br label %113

38:                                               ; preds = %29
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, 4
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %9, align 4
  br label %113

43:                                               ; preds = %29
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 %45, 4
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %9, align 4
  %48 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %49 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %55 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %53, %43
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %10, align 4
  br label %125

62:                                               ; preds = %53
  br label %113

63:                                               ; preds = %29
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = add i64 %65, 4
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %9, align 4
  %68 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %69 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %63
  %74 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %75 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %73, %63
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %10, align 4
  br label %125

82:                                               ; preds = %73
  br label %113

83:                                               ; preds = %29
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = add i64 %85, 4
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %9, align 4
  %88 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %89 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %88, i32 0, i32 0
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %83
  %95 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %7, align 8
  %96 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %101 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %100, i32 0, i32 0
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %99, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %94, %83
  %107 = load i32, i32* @ESRCH, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %10, align 4
  br label %125

109:                                              ; preds = %94
  br label %113

110:                                              ; preds = %29
  %111 = load i32, i32* @EBADR, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %10, align 4
  br label %125

113:                                              ; preds = %109, %82, %62, %38, %33
  %114 = load %struct.fc_internal*, %struct.fc_internal** %6, align 8
  %115 = getelementptr inbounds %struct.fc_internal, %struct.fc_internal* %114, i32 0, i32 0
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32 (%struct.bsg_job*)*, i32 (%struct.bsg_job*)** %117, align 8
  %119 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %120 = call i32 %118(%struct.bsg_job* %119)
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %113
  store i32 0, i32* %3, align 4
  br label %148

124:                                              ; preds = %113
  br label %125

125:                                              ; preds = %124, %110, %106, %79, %59, %26
  %126 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %127 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = icmp ult i64 %129, 4
  %131 = zext i1 %130 to i32
  %132 = call i32 @BUG_ON(i32 %131)
  %133 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %8, align 8
  %134 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %133, i32 0, i32 1
  store i64 0, i64* %134, align 8
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %8, align 8
  %137 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %139 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %138, i32 0, i32 1
  store i32 4, i32* %139, align 4
  %140 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %141 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %8, align 8
  %142 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %8, align 8
  %145 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @bsg_job_done(%struct.bsg_job* %140, i32 %143, i64 %146)
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %125, %123
  %149 = load i32, i32* %3, align 4
  ret i32 %149
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
