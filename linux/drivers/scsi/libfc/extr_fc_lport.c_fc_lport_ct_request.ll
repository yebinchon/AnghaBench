; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_ct_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_ct_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.fc_lport = type { i32, i32 }
%struct.fc_bsg_info = type { i32, i32, i32, %struct.fc_lport*, %struct.bsg_job* }
%struct.fc_frame = type { i32 }
%struct.fc_frame_header = type { i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.fc_ct_req = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@FC_RCTL_DD_UNSOL_CTL = common dso_local global i32 0, align 4
@FC_TYPE_CT = common dso_local global i32 0, align 4
@FC_FCTL_REQ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@FC_FS_ACC = common dso_local global i32 0, align 4
@fc_lport_bsg_resp = common dso_local global i32 0, align 4
@ECOMM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*, %struct.fc_lport*, i32, i32)* @fc_lport_ct_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_lport_ct_request(%struct.bsg_job* %0, %struct.fc_lport* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bsg_job*, align 8
  %7 = alloca %struct.fc_lport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fc_bsg_info*, align 8
  %11 = alloca %struct.fc_frame*, align 8
  %12 = alloca %struct.fc_frame_header*, align 8
  %13 = alloca %struct.fc_ct_req*, align 8
  %14 = alloca i64, align 8
  store %struct.bsg_job* %0, %struct.bsg_job** %6, align 8
  store %struct.fc_lport* %1, %struct.fc_lport** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %16 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %15, i32 0, i32 1
  %17 = call i32 @lockdep_assert_held(i32* %16)
  %18 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %19 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %20 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 4, %23
  %25 = trunc i64 %24 to i32
  %26 = call %struct.fc_frame* @fc_frame_alloc(%struct.fc_lport* %18, i32 %25)
  store %struct.fc_frame* %26, %struct.fc_frame** %11, align 8
  %27 = load %struct.fc_frame*, %struct.fc_frame** %11, align 8
  %28 = icmp ne %struct.fc_frame* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %127

32:                                               ; preds = %4
  %33 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %34 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %14, align 8
  %38 = load %struct.fc_frame*, %struct.fc_frame** %11, align 8
  %39 = load i64, i64* %14, align 8
  %40 = call %struct.fc_ct_req* @fc_frame_payload_get(%struct.fc_frame* %38, i64 %39)
  store %struct.fc_ct_req* %40, %struct.fc_ct_req** %13, align 8
  %41 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %42 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %46 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.fc_ct_req*, %struct.fc_ct_req** %13, align 8
  %50 = load i64, i64* %14, align 8
  %51 = call i32 @sg_copy_to_buffer(i32 %44, i32 %48, %struct.fc_ct_req* %49, i64 %50)
  %52 = load %struct.fc_frame*, %struct.fc_frame** %11, align 8
  %53 = call %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame* %52)
  store %struct.fc_frame_header* %53, %struct.fc_frame_header** %12, align 8
  %54 = load i32, i32* @FC_RCTL_DD_UNSOL_CTL, align 4
  %55 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %56 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 8
  %57 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %58 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @hton24(i32 %59, i32 %60)
  %62 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %63 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %66 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @hton24(i32 %64, i32 %67)
  %69 = load i32, i32* @FC_TYPE_CT, align 4
  %70 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %71 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 4
  %72 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %73 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @FC_FCTL_REQ, align 4
  %76 = call i32 @hton24(i32 %74, i32 %75)
  %77 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %78 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  %79 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %80 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  %81 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %82 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call %struct.fc_bsg_info* @kzalloc(i32 32, i32 %83)
  store %struct.fc_bsg_info* %84, %struct.fc_bsg_info** %10, align 8
  %85 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %10, align 8
  %86 = icmp ne %struct.fc_bsg_info* %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %32
  %88 = load %struct.fc_frame*, %struct.fc_frame** %11, align 8
  %89 = call i32 @fc_frame_free(%struct.fc_frame* %88)
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %127

92:                                               ; preds = %32
  %93 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %94 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %10, align 8
  %95 = getelementptr inbounds %struct.fc_bsg_info, %struct.fc_bsg_info* %94, i32 0, i32 4
  store %struct.bsg_job* %93, %struct.bsg_job** %95, align 8
  %96 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %97 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %10, align 8
  %98 = getelementptr inbounds %struct.fc_bsg_info, %struct.fc_bsg_info* %97, i32 0, i32 3
  store %struct.fc_lport* %96, %struct.fc_lport** %98, align 8
  %99 = load i32, i32* @FC_FS_ACC, align 4
  %100 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %10, align 8
  %101 = getelementptr inbounds %struct.fc_bsg_info, %struct.fc_bsg_info* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %103 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %10, align 8
  %107 = getelementptr inbounds %struct.fc_bsg_info, %struct.fc_bsg_info* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %109 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %10, align 8
  %113 = getelementptr inbounds %struct.fc_bsg_info, %struct.fc_bsg_info* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %115 = load %struct.fc_frame*, %struct.fc_frame** %11, align 8
  %116 = load i32, i32* @fc_lport_bsg_resp, align 4
  %117 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %10, align 8
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @fc_exch_seq_send(%struct.fc_lport* %114, %struct.fc_frame* %115, i32 %116, i32* null, %struct.fc_bsg_info* %117, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %92
  %122 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %10, align 8
  %123 = call i32 @kfree(%struct.fc_bsg_info* %122)
  %124 = load i32, i32* @ECOMM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %5, align 4
  br label %127

126:                                              ; preds = %92
  store i32 0, i32* %5, align 4
  br label %127

127:                                              ; preds = %126, %121, %87, %29
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.fc_frame* @fc_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local %struct.fc_ct_req* @fc_frame_payload_get(%struct.fc_frame*, i64) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, %struct.fc_ct_req*, i64) #1

declare dso_local %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame*) #1

declare dso_local i32 @hton24(i32, i32) #1

declare dso_local %struct.fc_bsg_info* @kzalloc(i32, i32) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

declare dso_local i32 @fc_exch_seq_send(%struct.fc_lport*, %struct.fc_frame*, i32, i32*, %struct.fc_bsg_info*, i32) #1

declare dso_local i32 @kfree(%struct.fc_bsg_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
