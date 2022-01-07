; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_els_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_els_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.fc_lport = type { i32, i32 }
%struct.fc_bsg_info = type { i32, i32, i32, %struct.fc_lport*, %struct.bsg_job* }
%struct.fc_frame = type { i32 }
%struct.fc_frame_header = type { i64, i64, i64, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@FC_RCTL_ELS_REQ = common dso_local global i32 0, align 4
@FC_TYPE_ELS = common dso_local global i32 0, align 4
@FC_FCTL_REQ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ELS_LS_ACC = common dso_local global i32 0, align 4
@fc_lport_bsg_resp = common dso_local global i32 0, align 4
@ECOMM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*, %struct.fc_lport*, i32, i32)* @fc_lport_els_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_lport_els_request(%struct.bsg_job* %0, %struct.fc_lport* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bsg_job*, align 8
  %7 = alloca %struct.fc_lport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fc_bsg_info*, align 8
  %11 = alloca %struct.fc_frame*, align 8
  %12 = alloca %struct.fc_frame_header*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
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
  %23 = call %struct.fc_frame* @fc_frame_alloc(%struct.fc_lport* %18, i32 %22)
  store %struct.fc_frame* %23, %struct.fc_frame** %11, align 8
  %24 = load %struct.fc_frame*, %struct.fc_frame** %11, align 8
  %25 = icmp ne %struct.fc_frame* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %123

29:                                               ; preds = %4
  %30 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %31 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %14, align 4
  %34 = load %struct.fc_frame*, %struct.fc_frame** %11, align 8
  %35 = load i32, i32* %14, align 4
  %36 = call i8* @fc_frame_payload_get(%struct.fc_frame* %34, i32 %35)
  store i8* %36, i8** %13, align 8
  %37 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %38 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %42 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %13, align 8
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @sg_copy_to_buffer(i32 %40, i32 %44, i8* %45, i32 %46)
  %48 = load %struct.fc_frame*, %struct.fc_frame** %11, align 8
  %49 = call %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame* %48)
  store %struct.fc_frame_header* %49, %struct.fc_frame_header** %12, align 8
  %50 = load i32, i32* @FC_RCTL_ELS_REQ, align 4
  %51 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %52 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 8
  %53 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %54 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @hton24(i32 %55, i32 %56)
  %58 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %59 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %62 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @hton24(i32 %60, i32 %63)
  %65 = load i32, i32* @FC_TYPE_ELS, align 4
  %66 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %67 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 4
  %68 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %69 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @FC_FCTL_REQ, align 4
  %72 = call i32 @hton24(i32 %70, i32 %71)
  %73 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %74 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %76 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %78 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call %struct.fc_bsg_info* @kzalloc(i32 32, i32 %79)
  store %struct.fc_bsg_info* %80, %struct.fc_bsg_info** %10, align 8
  %81 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %10, align 8
  %82 = icmp ne %struct.fc_bsg_info* %81, null
  br i1 %82, label %88, label %83

83:                                               ; preds = %29
  %84 = load %struct.fc_frame*, %struct.fc_frame** %11, align 8
  %85 = call i32 @fc_frame_free(%struct.fc_frame* %84)
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %123

88:                                               ; preds = %29
  %89 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %90 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %10, align 8
  %91 = getelementptr inbounds %struct.fc_bsg_info, %struct.fc_bsg_info* %90, i32 0, i32 4
  store %struct.bsg_job* %89, %struct.bsg_job** %91, align 8
  %92 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %93 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %10, align 8
  %94 = getelementptr inbounds %struct.fc_bsg_info, %struct.fc_bsg_info* %93, i32 0, i32 3
  store %struct.fc_lport* %92, %struct.fc_lport** %94, align 8
  %95 = load i32, i32* @ELS_LS_ACC, align 4
  %96 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %10, align 8
  %97 = getelementptr inbounds %struct.fc_bsg_info, %struct.fc_bsg_info* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %99 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %10, align 8
  %103 = getelementptr inbounds %struct.fc_bsg_info, %struct.fc_bsg_info* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %105 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %10, align 8
  %109 = getelementptr inbounds %struct.fc_bsg_info, %struct.fc_bsg_info* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %111 = load %struct.fc_frame*, %struct.fc_frame** %11, align 8
  %112 = load i32, i32* @fc_lport_bsg_resp, align 4
  %113 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %10, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @fc_exch_seq_send(%struct.fc_lport* %110, %struct.fc_frame* %111, i32 %112, i32* null, %struct.fc_bsg_info* %113, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %88
  %118 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %10, align 8
  %119 = call i32 @kfree(%struct.fc_bsg_info* %118)
  %120 = load i32, i32* @ECOMM, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %5, align 4
  br label %123

122:                                              ; preds = %88
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %122, %117, %83, %26
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.fc_frame* @fc_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local i8* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, i8*, i32) #1

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
