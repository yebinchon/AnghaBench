; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_send_ct_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_send_ct_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, %struct.TYPE_3__*, %struct.zfcp_fsf_ct_els*, %struct.zfcp_adapter* }
%struct.TYPE_3__ = type { %struct.fsf_qtcb_header }
%struct.fsf_qtcb_header = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.zfcp_fsf_ct_els = type { i32, i32 (i32)*, i32 }
%struct.zfcp_adapter = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ZFCP_STATUS_FSFREQ_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fsscth2\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"fsscth1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*)* @zfcp_fsf_send_ct_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fsf_send_ct_handler(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  %3 = alloca %struct.zfcp_adapter*, align 8
  %4 = alloca %struct.zfcp_fsf_ct_els*, align 8
  %5 = alloca %struct.fsf_qtcb_header*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %6 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %7 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %6, i32 0, i32 3
  %8 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  store %struct.zfcp_adapter* %8, %struct.zfcp_adapter** %3, align 8
  %9 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %10 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %9, i32 0, i32 2
  %11 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %10, align 8
  store %struct.zfcp_fsf_ct_els* %11, %struct.zfcp_fsf_ct_els** %4, align 8
  %12 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %13 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.fsf_qtcb_header* %15, %struct.fsf_qtcb_header** %5, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %4, align 8
  %19 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %21 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %69

27:                                               ; preds = %1
  %28 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %5, align 8
  %29 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %68 [
    i32 137, label %31
    i32 130, label %36
    i32 139, label %39
    i32 135, label %53
    i32 134, label %59
    i32 138, label %62
    i32 136, label %62
    i32 133, label %62
    i32 132, label %62
    i32 131, label %62
  ]

31:                                               ; preds = %27
  %32 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %4, align 8
  %33 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %32, i32 0, i32 2
  store i32 0, i32* %33, align 8
  %34 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %35 = call i32 @zfcp_dbf_san_res(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.zfcp_fsf_req* %34)
  br label %68

36:                                               ; preds = %27
  %37 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %38 = call i32 @zfcp_fsf_class_not_supp(%struct.zfcp_fsf_req* %37)
  br label %68

39:                                               ; preds = %27
  %40 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %5, align 8
  %41 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %52 [
    i32 129, label %46
    i32 128, label %46
  ]

46:                                               ; preds = %39, %39
  %47 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %48 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %49 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %39, %46
  br label %68

53:                                               ; preds = %27
  %54 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %55 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %56 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %68

59:                                               ; preds = %27
  %60 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %61 = call i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter* %60, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %27, %27, %27, %27, %27, %59
  %63 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %64 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %65 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %27, %62, %53, %52, %36, %31
  br label %69

69:                                               ; preds = %68, %26
  %70 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %4, align 8
  %71 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %70, i32 0, i32 1
  %72 = load i32 (i32)*, i32 (i32)** %71, align 8
  %73 = icmp ne i32 (i32)* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %4, align 8
  %76 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %75, i32 0, i32 1
  %77 = load i32 (i32)*, i32 (i32)** %76, align 8
  %78 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %4, align 8
  %79 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 %77(i32 %80)
  br label %82

82:                                               ; preds = %74, %69
  ret void
}

declare dso_local i32 @zfcp_dbf_san_res(i8*, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_class_not_supp(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
