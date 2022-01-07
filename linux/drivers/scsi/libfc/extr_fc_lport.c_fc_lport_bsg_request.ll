; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_bsg_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_bsg_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { %struct.fc_bsg_reply*, %struct.fc_bsg_request* }
%struct.fc_bsg_reply = type { i64 }
%struct.fc_bsg_request = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.fc_lport = type { i32, i32, %struct.fc_rport_priv* }
%struct.fc_rport_priv = type { i32, i32 }
%struct.fc_rport = type { i32, %struct.fc_rport_priv* }

@EINVAL = common dso_local global i32 0, align 4
@FC_FID_DIR_SERV = common dso_local global i32 0, align 4
@fc_rport_destroy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_lport_bsg_request(%struct.bsg_job* %0) #0 {
  %2 = alloca %struct.bsg_job*, align 8
  %3 = alloca %struct.fc_bsg_request*, align 8
  %4 = alloca %struct.fc_bsg_reply*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.fc_lport*, align 8
  %7 = alloca %struct.fc_rport*, align 8
  %8 = alloca %struct.fc_rport_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bsg_job* %0, %struct.bsg_job** %2, align 8
  %12 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %13 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %12, i32 0, i32 1
  %14 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %13, align 8
  store %struct.fc_bsg_request* %14, %struct.fc_bsg_request** %3, align 8
  %15 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %16 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %15, i32 0, i32 0
  %17 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %16, align 8
  store %struct.fc_bsg_reply* %17, %struct.fc_bsg_reply** %4, align 8
  %18 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %19 = call %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job* %18)
  store %struct.Scsi_Host* %19, %struct.Scsi_Host** %5, align 8
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %21 = call %struct.fc_lport* @shost_priv(%struct.Scsi_Host* %20)
  store %struct.fc_lport* %21, %struct.fc_lport** %6, align 8
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %9, align 4
  %24 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %25 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %27 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %3, align 8
  %30 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %126 [
    i32 128, label %32
    i32 129, label %51
    i32 131, label %70
    i32 130, label %112
  ]

32:                                               ; preds = %1
  %33 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %34 = call %struct.fc_rport* @fc_bsg_to_rport(%struct.bsg_job* %33)
  store %struct.fc_rport* %34, %struct.fc_rport** %7, align 8
  %35 = load %struct.fc_rport*, %struct.fc_rport** %7, align 8
  %36 = icmp ne %struct.fc_rport* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %126

38:                                               ; preds = %32
  %39 = load %struct.fc_rport*, %struct.fc_rport** %7, align 8
  %40 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %39, i32 0, i32 1
  %41 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %40, align 8
  store %struct.fc_rport_priv* %41, %struct.fc_rport_priv** %8, align 8
  %42 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %43 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %44 = load %struct.fc_rport*, %struct.fc_rport** %7, align 8
  %45 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %8, align 8
  %48 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @fc_lport_els_request(%struct.bsg_job* %42, %struct.fc_lport* %43, i32 %46, i32 %49)
  store i32 %50, i32* %9, align 4
  br label %126

51:                                               ; preds = %1
  %52 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %53 = call %struct.fc_rport* @fc_bsg_to_rport(%struct.bsg_job* %52)
  store %struct.fc_rport* %53, %struct.fc_rport** %7, align 8
  %54 = load %struct.fc_rport*, %struct.fc_rport** %7, align 8
  %55 = icmp ne %struct.fc_rport* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %126

57:                                               ; preds = %51
  %58 = load %struct.fc_rport*, %struct.fc_rport** %7, align 8
  %59 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %58, i32 0, i32 1
  %60 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %59, align 8
  store %struct.fc_rport_priv* %60, %struct.fc_rport_priv** %8, align 8
  %61 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %62 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %63 = load %struct.fc_rport*, %struct.fc_rport** %7, align 8
  %64 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %8, align 8
  %67 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @fc_lport_ct_request(%struct.bsg_job* %61, %struct.fc_lport* %62, i32 %65, i32 %68)
  store i32 %69, i32* %9, align 4
  br label %126

70:                                               ; preds = %1
  %71 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %3, align 8
  %72 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ntoh24(i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @FC_FID_DIR_SERV, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %70
  %81 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %82 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %81, i32 0, i32 2
  %83 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %82, align 8
  store %struct.fc_rport_priv* %83, %struct.fc_rport_priv** %8, align 8
  %84 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %8, align 8
  %85 = icmp ne %struct.fc_rport_priv* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %80
  br label %126

87:                                               ; preds = %80
  %88 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %8, align 8
  %89 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %11, align 4
  br label %106

91:                                               ; preds = %70
  %92 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call %struct.fc_rport_priv* @fc_rport_lookup(%struct.fc_lport* %92, i32 %93)
  store %struct.fc_rport_priv* %94, %struct.fc_rport_priv** %8, align 8
  %95 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %8, align 8
  %96 = icmp ne %struct.fc_rport_priv* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %91
  br label %126

98:                                               ; preds = %91
  %99 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %8, align 8
  %100 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %11, align 4
  %102 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %8, align 8
  %103 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %102, i32 0, i32 0
  %104 = load i32, i32* @fc_rport_destroy, align 4
  %105 = call i32 @kref_put(i32* %103, i32 %104)
  br label %106

106:                                              ; preds = %98, %87
  %107 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %108 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @fc_lport_ct_request(%struct.bsg_job* %107, %struct.fc_lport* %108, i32 %109, i32 %110)
  store i32 %111, i32* %9, align 4
  br label %126

112:                                              ; preds = %1
  %113 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %3, align 8
  %114 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ntoh24(i32 %117)
  store i32 %118, i32* %10, align 4
  %119 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %120 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %123 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @fc_lport_els_request(%struct.bsg_job* %119, %struct.fc_lport* %120, i32 %121, i32 %124)
  store i32 %125, i32* %9, align 4
  br label %126

126:                                              ; preds = %1, %112, %106, %97, %86, %57, %56, %38, %37
  %127 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %128 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %127, i32 0, i32 0
  %129 = call i32 @mutex_unlock(i32* %128)
  %130 = load i32, i32* %9, align 4
  ret i32 %130
}

declare dso_local %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local %struct.fc_lport* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.fc_rport* @fc_bsg_to_rport(%struct.bsg_job*) #1

declare dso_local i32 @fc_lport_els_request(%struct.bsg_job*, %struct.fc_lport*, i32, i32) #1

declare dso_local i32 @fc_lport_ct_request(%struct.bsg_job*, %struct.fc_lport*, i32, i32) #1

declare dso_local i32 @ntoh24(i32) #1

declare dso_local %struct.fc_rport_priv* @fc_rport_lookup(%struct.fc_lport*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
