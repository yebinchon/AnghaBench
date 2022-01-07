; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_setup_ct_els_sbals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_setup_ct_els_sbals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, %struct.fsf_qtcb*, %struct.zfcp_adapter* }
%struct.fsf_qtcb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.zfcp_adapter = type { i32, %struct.zfcp_qdio* }
%struct.zfcp_qdio = type { i32 }
%struct.scatterlist = type { i32 }

@EIO = common dso_local global i32 0, align 4
@FSF_FEATURE_ELS_CT_CHAINED_SBALS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_fsf_req*, %struct.scatterlist*, %struct.scatterlist*)* @zfcp_fsf_setup_ct_els_sbals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_fsf_setup_ct_els_sbals(%struct.zfcp_fsf_req* %0, %struct.scatterlist* %1, %struct.scatterlist* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zfcp_fsf_req*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca %struct.zfcp_adapter*, align 8
  %9 = alloca %struct.zfcp_qdio*, align 8
  %10 = alloca %struct.fsf_qtcb*, align 8
  %11 = alloca i32, align 4
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  %12 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %13 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %12, i32 0, i32 2
  %14 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %13, align 8
  store %struct.zfcp_adapter* %14, %struct.zfcp_adapter** %8, align 8
  %15 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  %16 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %15, i32 0, i32 1
  %17 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %16, align 8
  store %struct.zfcp_qdio* %17, %struct.zfcp_qdio** %9, align 8
  %18 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %19 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %18, i32 0, i32 1
  %20 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %19, align 8
  store %struct.fsf_qtcb* %20, %struct.fsf_qtcb** %10, align 8
  %21 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  %22 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %11, align 4
  %24 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  %25 = call i64 @zfcp_adapter_multi_buffer_active(%struct.zfcp_adapter* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %74

27:                                               ; preds = %3
  %28 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %9, align 8
  %29 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %30 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %29, i32 0, i32 0
  %31 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %32 = call i64 @zfcp_qdio_sbals_from_sg(%struct.zfcp_qdio* %28, i32* %30, %struct.scatterlist* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %142

37:                                               ; preds = %27
  %38 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %39 = call i8* @zfcp_qdio_real_bytes(%struct.scatterlist* %38)
  %40 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %10, align 8
  %41 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i8* %39, i8** %43, align 8
  %44 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %9, align 8
  %45 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %46 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %45, i32 0, i32 0
  %47 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %48 = call i64 @zfcp_qdio_sbals_from_sg(%struct.zfcp_qdio* %44, i32* %46, %struct.scatterlist* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %142

53:                                               ; preds = %37
  %54 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %55 = call i8* @zfcp_qdio_real_bytes(%struct.scatterlist* %54)
  %56 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %10, align 8
  %57 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i8* %55, i8** %59, align 8
  %60 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %9, align 8
  %61 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %62 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %61, i32 0, i32 0
  %63 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %64 = call i32 @sg_nents(%struct.scatterlist* %63)
  %65 = call i32 @zfcp_qdio_set_data_div(%struct.zfcp_qdio* %60, i32* %62, i32 %64)
  %66 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %9, align 8
  %67 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %68 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %67, i32 0, i32 0
  %69 = call i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio* %66, i32* %68)
  %70 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %9, align 8
  %71 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %72 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %71, i32 0, i32 0
  %73 = call i32 @zfcp_qdio_set_scount(%struct.zfcp_qdio* %70, i32* %72)
  store i32 0, i32* %4, align 4
  br label %142

74:                                               ; preds = %3
  %75 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %76 = call i64 @zfcp_qdio_sg_one_sbale(%struct.scatterlist* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %74
  %79 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %80 = call i64 @zfcp_qdio_sg_one_sbale(%struct.scatterlist* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %9, align 8
  %84 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %85 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %84, i32 0, i32 0
  %86 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %87 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %88 = call i32 @zfcp_fsf_setup_ct_els_unchained(%struct.zfcp_qdio* %83, i32* %85, %struct.scatterlist* %86, %struct.scatterlist* %87)
  store i32 0, i32* %4, align 4
  br label %142

89:                                               ; preds = %78, %74
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @FSF_FEATURE_ELS_CT_CHAINED_SBALS, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %89
  %95 = load i32, i32* @EOPNOTSUPP, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %142

97:                                               ; preds = %89
  %98 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %9, align 8
  %99 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %100 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %99, i32 0, i32 0
  %101 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %102 = call i64 @zfcp_qdio_sbals_from_sg(%struct.zfcp_qdio* %98, i32* %100, %struct.scatterlist* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load i32, i32* @EIO, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  br label %142

107:                                              ; preds = %97
  %108 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %109 = call i8* @zfcp_qdio_real_bytes(%struct.scatterlist* %108)
  %110 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %10, align 8
  %111 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  store i8* %109, i8** %113, align 8
  %114 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %9, align 8
  %115 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %116 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %115, i32 0, i32 0
  %117 = call i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio* %114, i32* %116)
  %118 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %9, align 8
  %119 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %120 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %119, i32 0, i32 0
  %121 = call i32 @zfcp_qdio_skip_to_last_sbale(%struct.zfcp_qdio* %118, i32* %120)
  %122 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %9, align 8
  %123 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %124 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %123, i32 0, i32 0
  %125 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %126 = call i64 @zfcp_qdio_sbals_from_sg(%struct.zfcp_qdio* %122, i32* %124, %struct.scatterlist* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %107
  %129 = load i32, i32* @EIO, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %4, align 4
  br label %142

131:                                              ; preds = %107
  %132 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %133 = call i8* @zfcp_qdio_real_bytes(%struct.scatterlist* %132)
  %134 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %10, align 8
  %135 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  store i8* %133, i8** %137, align 8
  %138 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %9, align 8
  %139 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %140 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %139, i32 0, i32 0
  %141 = call i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio* %138, i32* %140)
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %131, %128, %104, %94, %82, %53, %50, %34
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i64 @zfcp_adapter_multi_buffer_active(%struct.zfcp_adapter*) #1

declare dso_local i64 @zfcp_qdio_sbals_from_sg(%struct.zfcp_qdio*, i32*, %struct.scatterlist*) #1

declare dso_local i8* @zfcp_qdio_real_bytes(%struct.scatterlist*) #1

declare dso_local i32 @zfcp_qdio_set_data_div(%struct.zfcp_qdio*, i32*, i32) #1

declare dso_local i32 @sg_nents(%struct.scatterlist*) #1

declare dso_local i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio*, i32*) #1

declare dso_local i32 @zfcp_qdio_set_scount(%struct.zfcp_qdio*, i32*) #1

declare dso_local i64 @zfcp_qdio_sg_one_sbale(%struct.scatterlist*) #1

declare dso_local i32 @zfcp_fsf_setup_ct_els_unchained(%struct.zfcp_qdio*, i32*, %struct.scatterlist*, %struct.scatterlist*) #1

declare dso_local i32 @zfcp_qdio_skip_to_last_sbale(%struct.zfcp_qdio*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
