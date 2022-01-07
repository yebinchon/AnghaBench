; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_ct_free_iocb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_ct_free_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_iocbq = type { i32*, i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.lpfc_dmabuf = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_ct_free_iocb(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_iocbq*, align 8
  %5 = alloca %struct.lpfc_dmabuf*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %4, align 8
  %6 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %7 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %13 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @lpfc_nlp_put(i32* %15)
  %17 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %18 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %11, %2
  %21 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %22 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %42

25:                                               ; preds = %20
  %26 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %27 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = bitcast i32* %28 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %29, %struct.lpfc_dmabuf** %5, align 8
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %31 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %32 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %35 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %30, i32 %33, i32 %36)
  %38 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %39 = call i32 @kfree(%struct.lpfc_dmabuf* %38)
  %40 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %41 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %25, %20
  %43 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %44 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %49 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %50 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = bitcast i32* %51 to %struct.lpfc_dmabuf*
  %53 = call i32 @lpfc_free_ct_rsp(%struct.lpfc_hba* %48, %struct.lpfc_dmabuf* %52)
  %54 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %55 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %54, i32 0, i32 1
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %47, %42
  %57 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %58 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %78

61:                                               ; preds = %56
  %62 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %63 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = bitcast i32* %64 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %65, %struct.lpfc_dmabuf** %5, align 8
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %67 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %68 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %71 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %66, i32 %69, i32 %72)
  %74 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %75 = call i32 @kfree(%struct.lpfc_dmabuf* %74)
  %76 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %77 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %76, i32 0, i32 0
  store i32* null, i32** %77, align 8
  br label %78

78:                                               ; preds = %61, %56
  %79 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %80 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %81 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %79, %struct.lpfc_iocbq* %80)
  ret i32 0
}

declare dso_local i32 @lpfc_nlp_put(i32*) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_free_ct_rsp(%struct.lpfc_hba*, %struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
