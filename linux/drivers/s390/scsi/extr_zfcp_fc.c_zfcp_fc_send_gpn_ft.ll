; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_send_gpn_ft.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_send_gpn_ft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fc_req = type { i32, i32, %struct.TYPE_6__, %struct.zfcp_fsf_ct_els }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.zfcp_fc_gpn_ft_req }
%struct.zfcp_fc_gpn_ft_req = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.zfcp_fsf_ct_els = type { i32*, i32*, i32*, i32 }
%struct.zfcp_adapter = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@completion = common dso_local global i32 0, align 4
@FC_NS_GPN_FT = common dso_local global i32 0, align 4
@FC_TYPE_FCP = common dso_local global i32 0, align 4
@zfcp_fc_complete = common dso_local global i32 0, align 4
@ZFCP_FC_CTELS_TMO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_fc_req*, %struct.zfcp_adapter*, i32)* @zfcp_fc_send_gpn_ft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_fc_send_gpn_ft(%struct.zfcp_fc_req* %0, %struct.zfcp_adapter* %1, i32 %2) #0 {
  %4 = alloca %struct.zfcp_fc_req*, align 8
  %5 = alloca %struct.zfcp_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.zfcp_fsf_ct_els*, align 8
  %8 = alloca %struct.zfcp_fc_gpn_ft_req*, align 8
  %9 = alloca i32, align 4
  store %struct.zfcp_fc_req* %0, %struct.zfcp_fc_req** %4, align 8
  store %struct.zfcp_adapter* %1, %struct.zfcp_adapter** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %11 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %10, i32 0, i32 3
  store %struct.zfcp_fsf_ct_els* %11, %struct.zfcp_fsf_ct_els** %7, align 8
  %12 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %13 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store %struct.zfcp_fc_gpn_ft_req* %15, %struct.zfcp_fc_gpn_ft_req** %8, align 8
  %16 = load i32, i32* @completion, align 4
  %17 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %16)
  %18 = load %struct.zfcp_fc_gpn_ft_req*, %struct.zfcp_fc_gpn_ft_req** %8, align 8
  %19 = getelementptr inbounds %struct.zfcp_fc_gpn_ft_req, %struct.zfcp_fc_gpn_ft_req* %18, i32 0, i32 1
  %20 = load i32, i32* @FC_NS_GPN_FT, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @zfcp_fc_ct_ns_init(i32* %19, i32 %20, i32 %21)
  %23 = load i32, i32* @FC_TYPE_FCP, align 4
  %24 = load %struct.zfcp_fc_gpn_ft_req*, %struct.zfcp_fc_gpn_ft_req** %8, align 8
  %25 = getelementptr inbounds %struct.zfcp_fc_gpn_ft_req, %struct.zfcp_fc_gpn_ft_req* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @zfcp_fc_complete, align 4
  %28 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %7, align 8
  %29 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %7, align 8
  %31 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %30, i32 0, i32 2
  store i32* @completion, i32** %31, align 8
  %32 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %33 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %32, i32 0, i32 1
  %34 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %7, align 8
  %35 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %34, i32 0, i32 1
  store i32* %33, i32** %35, align 8
  %36 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %37 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %36, i32 0, i32 0
  %38 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %7, align 8
  %39 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %38, i32 0, i32 0
  store i32* %37, i32** %39, align 8
  %40 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %41 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %7, align 8
  %45 = load i32, i32* @ZFCP_FC_CTELS_TMO, align 4
  %46 = call i32 @zfcp_fsf_send_ct(i32* %43, %struct.zfcp_fsf_ct_els* %44, i32* null, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %3
  %50 = call i32 @wait_for_completion(i32* @completion)
  br label %51

51:                                               ; preds = %49, %3
  %52 = load i32, i32* %9, align 4
  ret i32 %52
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @zfcp_fc_ct_ns_init(i32*, i32, i32) #1

declare dso_local i32 @zfcp_fsf_send_ct(i32*, %struct.zfcp_fsf_ct_els*, i32*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
