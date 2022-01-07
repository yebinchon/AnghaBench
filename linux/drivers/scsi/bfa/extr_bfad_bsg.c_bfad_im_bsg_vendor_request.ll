; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_im_bsg_vendor_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_im_bsg_vendor_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.fc_bsg_reply*, %struct.fc_bsg_request* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.fc_bsg_reply = type { i32, i32 }
%struct.fc_bsg_request = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.Scsi_Host = type { i32 }
%struct.bfad_im_port_s = type { %struct.bfad_s* }
%struct.bfad_s = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @bfad_im_bsg_vendor_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfad_im_bsg_vendor_request(%struct.bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsg_job*, align 8
  %4 = alloca %struct.fc_bsg_request*, align 8
  %5 = alloca %struct.fc_bsg_reply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.bfad_im_port_s*, align 8
  %9 = alloca %struct.bfad_s*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.bsg_job* %0, %struct.bsg_job** %3, align 8
  %12 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %13 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %12, i32 0, i32 4
  %14 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %13, align 8
  store %struct.fc_bsg_request* %14, %struct.fc_bsg_request** %4, align 8
  %15 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %16 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %15, i32 0, i32 3
  %17 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %16, align 8
  store %struct.fc_bsg_reply* %17, %struct.fc_bsg_reply** %5, align 8
  %18 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %4, align 8
  %19 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %26 = call %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job* %25)
  store %struct.Scsi_Host* %26, %struct.Scsi_Host** %7, align 8
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %28 = call %struct.bfad_im_port_s* @bfad_get_im_port(%struct.Scsi_Host* %27)
  store %struct.bfad_im_port_s* %28, %struct.bfad_im_port_s** %8, align 8
  %29 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %8, align 8
  %30 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %29, i32 0, i32 0
  %31 = load %struct.bfad_s*, %struct.bfad_s** %30, align 8
  store %struct.bfad_s* %31, %struct.bfad_s** %9, align 8
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %11, align 4
  %34 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %35 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @kzalloc(i32 %37, i32 %38)
  store i8* %39, i8** %10, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %1
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %11, align 4
  br label %116

45:                                               ; preds = %1
  %46 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %47 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %51 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %10, align 8
  %55 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %56 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @sg_copy_to_buffer(i32 %49, i32 %53, i8* %54, i32 %58)
  %60 = load %struct.bfad_s*, %struct.bfad_s** %9, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i8*, i8** %10, align 8
  %63 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %64 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @bfad_iocmd_handler(%struct.bfad_s* %60, i32 %61, i8* %62, i32 %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @BFA_STATUS_OK, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %45
  br label %113

72:                                               ; preds = %45
  %73 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %74 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %78 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %10, align 8
  %82 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %83 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @sg_copy_from_buffer(i32 %76, i32 %80, i8* %81, i32 %85)
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 @kfree(i8* %87)
  %89 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %90 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %94 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %96 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %100 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %103 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %105 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %106 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %109 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @bsg_job_done(%struct.bsg_job* %104, i32 %107, i32 %110)
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %2, align 4
  br label %125

113:                                              ; preds = %71
  %114 = load i8*, i8** %10, align 8
  %115 = call i32 @kfree(i8* %114)
  br label %116

116:                                              ; preds = %113, %42
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %119 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %121 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %120, i32 0, i32 0
  store i32 4, i32* %121, align 8
  %122 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %123 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %122, i32 0, i32 0
  store i32 0, i32* %123, align 4
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %116, %72
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local %struct.bfad_im_port_s* @bfad_get_im_port(%struct.Scsi_Host*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, i8*, i32) #1

declare dso_local i32 @bfad_iocmd_handler(%struct.bfad_s*, i32, i8*, i32) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
