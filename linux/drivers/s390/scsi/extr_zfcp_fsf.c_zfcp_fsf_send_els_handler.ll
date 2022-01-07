; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_send_els_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_send_els_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, %struct.TYPE_4__*, %struct.zfcp_fsf_ct_els* }
%struct.TYPE_4__ = type { %struct.fsf_qtcb_header }
%struct.fsf_qtcb_header = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.zfcp_fsf_ct_els = type { i32, i32 (i32)*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ZFCP_STATUS_FSFREQ_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fsselh1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*)* @zfcp_fsf_send_els_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fsf_send_els_handler(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  %3 = alloca %struct.zfcp_fsf_ct_els*, align 8
  %4 = alloca %struct.fsf_qtcb_header*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %5 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %6 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %5, i32 0, i32 2
  %7 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %6, align 8
  store %struct.zfcp_fsf_ct_els* %7, %struct.zfcp_fsf_ct_els** %3, align 8
  %8 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %9 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.fsf_qtcb_header* %11, %struct.fsf_qtcb_header** %4, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  %14 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %3, align 8
  %15 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %17 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %58

23:                                               ; preds = %1
  %24 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %4, align 8
  %25 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %51 [
    i32 136, label %27
    i32 131, label %32
    i32 138, label %35
    i32 137, label %49
    i32 135, label %49
    i32 134, label %49
    i32 133, label %49
    i32 132, label %50
  ]

27:                                               ; preds = %23
  %28 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %3, align 8
  %29 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %28, i32 0, i32 2
  store i32 0, i32* %29, align 8
  %30 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %31 = call i32 @zfcp_dbf_san_res(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.zfcp_fsf_req* %30)
  br label %57

32:                                               ; preds = %23
  %33 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %34 = call i32 @zfcp_fsf_class_not_supp(%struct.zfcp_fsf_req* %33)
  br label %57

35:                                               ; preds = %23
  %36 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %4, align 8
  %37 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %48 [
    i32 130, label %42
    i32 128, label %42
    i32 129, label %42
  ]

42:                                               ; preds = %35, %35, %35
  %43 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %44 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %45 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %35, %42
  br label %57

49:                                               ; preds = %23, %23, %23, %23
  br label %57

50:                                               ; preds = %23
  br label %51

51:                                               ; preds = %23, %50
  %52 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %53 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %54 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %51, %49, %48, %32, %27
  br label %58

58:                                               ; preds = %57, %22
  %59 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %3, align 8
  %60 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %59, i32 0, i32 1
  %61 = load i32 (i32)*, i32 (i32)** %60, align 8
  %62 = icmp ne i32 (i32)* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %3, align 8
  %65 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %64, i32 0, i32 1
  %66 = load i32 (i32)*, i32 (i32)** %65, align 8
  %67 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %3, align 8
  %68 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 %66(i32 %69)
  br label %71

71:                                               ; preds = %63, %58
  ret void
}

declare dso_local i32 @zfcp_dbf_san_res(i8*, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_class_not_supp(%struct.zfcp_fsf_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
