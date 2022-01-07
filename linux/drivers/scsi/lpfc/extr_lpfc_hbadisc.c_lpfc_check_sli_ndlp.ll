; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_check_sli_ndlp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_check_sli_ndlp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_sli_ring = type { i64 }
%struct.lpfc_iocbq = type { i32*, %struct.TYPE_5__, %struct.lpfc_vport*, %struct.TYPE_8__ }
%struct.TYPE_5__ = type { %struct.lpfc_nodelist* }
%struct.lpfc_vport = type { i32 }
%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.lpfc_nodelist = type { i32, i32, i64, i32, %struct.lpfc_vport* }

@LPFC_ELS_RING = common dso_local global i64 0, align 8
@LPFC_FCP_RING = common dso_local global i64 0, align 8
@NLP_FCP_TARGET = common dso_local global i32 0, align 4
@NLP_DELAY_TMO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_check_sli_ndlp(%struct.lpfc_hba* %0, %struct.lpfc_sli_ring* %1, %struct.lpfc_iocbq* %2, %struct.lpfc_nodelist* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca %struct.lpfc_sli_ring*, align 8
  %8 = alloca %struct.lpfc_iocbq*, align 8
  %9 = alloca %struct.lpfc_nodelist*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.lpfc_vport*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %6, align 8
  store %struct.lpfc_sli_ring* %1, %struct.lpfc_sli_ring** %7, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %8, align 8
  store %struct.lpfc_nodelist* %3, %struct.lpfc_nodelist** %9, align 8
  %12 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %13 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %12, i32 0, i32 3
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %10, align 8
  %14 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %15 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %14, i32 0, i32 4
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %15, align 8
  store %struct.lpfc_vport* %16, %struct.lpfc_vport** %11, align 8
  %17 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %18 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %17, i32 0, i32 2
  %19 = load %struct.lpfc_vport*, %struct.lpfc_vport** %18, align 8
  %20 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %21 = icmp ne %struct.lpfc_vport* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %97

23:                                               ; preds = %4
  %24 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %7, align 8
  %25 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @LPFC_ELS_RING, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %64

29:                                               ; preds = %23
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %63 [
    i32 129, label %33
    i32 130, label %42
    i32 128, label %54
  ]

33:                                               ; preds = %29
  %34 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %35 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %36, align 8
  %38 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %39 = icmp eq %struct.lpfc_nodelist* %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 1, i32* %5, align 4
  br label %97

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %29, %41
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %49 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i32 1, i32* %5, align 4
  br label %97

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %29, %53
  %55 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %56 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %59 = bitcast %struct.lpfc_nodelist* %58 to i32*
  %60 = icmp eq i32* %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 1, i32* %5, align 4
  br label %97

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %29
  br label %96

64:                                               ; preds = %23
  %65 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %7, align 8
  %66 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @LPFC_FCP_RING, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %95

70:                                               ; preds = %64
  %71 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %72 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @NLP_FCP_TARGET, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %79 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @NLP_DELAY_TMO, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i32 0, i32* %5, align 4
  br label %97

85:                                               ; preds = %77, %70
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load volatile i64, i64* %87, align 8
  %89 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %90 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  store i32 1, i32* %5, align 4
  br label %97

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94, %64
  br label %96

96:                                               ; preds = %95, %63
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %96, %93, %84, %61, %52, %40, %22
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
