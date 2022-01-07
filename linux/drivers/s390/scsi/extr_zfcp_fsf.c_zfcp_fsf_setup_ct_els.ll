; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_setup_ct_els.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_setup_ct_els.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.scatterlist = type { i32 }

@FSF_CLASS_3 = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_fsf_req*, %struct.scatterlist*, %struct.scatterlist*, i32)* @zfcp_fsf_setup_ct_els to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_fsf_setup_ct_els(%struct.zfcp_fsf_req* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.zfcp_fsf_req*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %12 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %13 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %14 = call i32 @zfcp_fsf_setup_ct_els_sbals(%struct.zfcp_fsf_req* %11, %struct.scatterlist* %12, %struct.scatterlist* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %5, align 4
  br label %44

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ugt i32 %20, 255
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 255, i32* %9, align 4
  br label %23

23:                                               ; preds = %22, %19
  %24 = load i32, i32* @FSF_CLASS_3, align 4
  %25 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %26 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 %24, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %33 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %31, i32* %37, align 4
  %38 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = add i32 %39, 10
  %41 = load i32, i32* @HZ, align 4
  %42 = mul i32 %40, %41
  %43 = call i32 @zfcp_fsf_start_timer(%struct.zfcp_fsf_req* %38, i32 %42)
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %23, %17
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @zfcp_fsf_setup_ct_els_sbals(%struct.zfcp_fsf_req*, %struct.scatterlist*, %struct.scatterlist*) #1

declare dso_local i32 @zfcp_fsf_start_timer(%struct.zfcp_fsf_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
