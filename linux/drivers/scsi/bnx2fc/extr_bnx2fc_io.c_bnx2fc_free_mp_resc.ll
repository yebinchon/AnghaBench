; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_io.c_bnx2fc_free_mp_resc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_io.c_bnx2fc_free_mp_resc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_cmd = type { %struct.TYPE_3__*, %struct.bnx2fc_mp_req }
%struct.TYPE_3__ = type { %struct.bnx2fc_interface* }
%struct.bnx2fc_interface = type { %struct.bnx2fc_hba* }
%struct.bnx2fc_hba = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.bnx2fc_mp_req = type { i32*, i32, i32*, i32, i32*, i32, i32*, i32, i64 }

@CNIC_PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2fc_cmd*)* @bnx2fc_free_mp_resc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2fc_free_mp_resc(%struct.bnx2fc_cmd* %0) #0 {
  %2 = alloca %struct.bnx2fc_cmd*, align 8
  %3 = alloca %struct.bnx2fc_mp_req*, align 8
  %4 = alloca %struct.bnx2fc_interface*, align 8
  %5 = alloca %struct.bnx2fc_hba*, align 8
  %6 = alloca i64, align 8
  store %struct.bnx2fc_cmd* %0, %struct.bnx2fc_cmd** %2, align 8
  %7 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %2, align 8
  %8 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %7, i32 0, i32 1
  store %struct.bnx2fc_mp_req* %8, %struct.bnx2fc_mp_req** %3, align 8
  %9 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %2, align 8
  %10 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %12, align 8
  store %struct.bnx2fc_interface* %13, %struct.bnx2fc_interface** %4, align 8
  %14 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %4, align 8
  %15 = getelementptr inbounds %struct.bnx2fc_interface, %struct.bnx2fc_interface* %14, i32 0, i32 0
  %16 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %15, align 8
  store %struct.bnx2fc_hba* %16, %struct.bnx2fc_hba** %5, align 8
  store i64 4, i64* %6, align 8
  %17 = load %struct.bnx2fc_mp_req*, %struct.bnx2fc_mp_req** %3, align 8
  %18 = getelementptr inbounds %struct.bnx2fc_mp_req, %struct.bnx2fc_mp_req* %17, i32 0, i32 8
  store i64 0, i64* %18, align 8
  %19 = load %struct.bnx2fc_mp_req*, %struct.bnx2fc_mp_req** %3, align 8
  %20 = getelementptr inbounds %struct.bnx2fc_mp_req, %struct.bnx2fc_mp_req* %19, i32 0, i32 6
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %1
  %24 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %5, align 8
  %25 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.bnx2fc_mp_req*, %struct.bnx2fc_mp_req** %3, align 8
  %30 = getelementptr inbounds %struct.bnx2fc_mp_req, %struct.bnx2fc_mp_req* %29, i32 0, i32 6
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.bnx2fc_mp_req*, %struct.bnx2fc_mp_req** %3, align 8
  %33 = getelementptr inbounds %struct.bnx2fc_mp_req, %struct.bnx2fc_mp_req* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dma_free_coherent(i32* %27, i64 %28, i32* %31, i32 %34)
  %36 = load %struct.bnx2fc_mp_req*, %struct.bnx2fc_mp_req** %3, align 8
  %37 = getelementptr inbounds %struct.bnx2fc_mp_req, %struct.bnx2fc_mp_req* %36, i32 0, i32 6
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %23, %1
  %39 = load %struct.bnx2fc_mp_req*, %struct.bnx2fc_mp_req** %3, align 8
  %40 = getelementptr inbounds %struct.bnx2fc_mp_req, %struct.bnx2fc_mp_req* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %58

43:                                               ; preds = %38
  %44 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %5, align 8
  %45 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.bnx2fc_mp_req*, %struct.bnx2fc_mp_req** %3, align 8
  %50 = getelementptr inbounds %struct.bnx2fc_mp_req, %struct.bnx2fc_mp_req* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.bnx2fc_mp_req*, %struct.bnx2fc_mp_req** %3, align 8
  %53 = getelementptr inbounds %struct.bnx2fc_mp_req, %struct.bnx2fc_mp_req* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dma_free_coherent(i32* %47, i64 %48, i32* %51, i32 %54)
  %56 = load %struct.bnx2fc_mp_req*, %struct.bnx2fc_mp_req** %3, align 8
  %57 = getelementptr inbounds %struct.bnx2fc_mp_req, %struct.bnx2fc_mp_req* %56, i32 0, i32 4
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %43, %38
  %59 = load %struct.bnx2fc_mp_req*, %struct.bnx2fc_mp_req** %3, align 8
  %60 = getelementptr inbounds %struct.bnx2fc_mp_req, %struct.bnx2fc_mp_req* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %78

63:                                               ; preds = %58
  %64 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %5, align 8
  %65 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* @CNIC_PAGE_SIZE, align 8
  %69 = load %struct.bnx2fc_mp_req*, %struct.bnx2fc_mp_req** %3, align 8
  %70 = getelementptr inbounds %struct.bnx2fc_mp_req, %struct.bnx2fc_mp_req* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.bnx2fc_mp_req*, %struct.bnx2fc_mp_req** %3, align 8
  %73 = getelementptr inbounds %struct.bnx2fc_mp_req, %struct.bnx2fc_mp_req* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @dma_free_coherent(i32* %67, i64 %68, i32* %71, i32 %74)
  %76 = load %struct.bnx2fc_mp_req*, %struct.bnx2fc_mp_req** %3, align 8
  %77 = getelementptr inbounds %struct.bnx2fc_mp_req, %struct.bnx2fc_mp_req* %76, i32 0, i32 2
  store i32* null, i32** %77, align 8
  br label %78

78:                                               ; preds = %63, %58
  %79 = load %struct.bnx2fc_mp_req*, %struct.bnx2fc_mp_req** %3, align 8
  %80 = getelementptr inbounds %struct.bnx2fc_mp_req, %struct.bnx2fc_mp_req* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %98

83:                                               ; preds = %78
  %84 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %5, align 8
  %85 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* @CNIC_PAGE_SIZE, align 8
  %89 = load %struct.bnx2fc_mp_req*, %struct.bnx2fc_mp_req** %3, align 8
  %90 = getelementptr inbounds %struct.bnx2fc_mp_req, %struct.bnx2fc_mp_req* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.bnx2fc_mp_req*, %struct.bnx2fc_mp_req** %3, align 8
  %93 = getelementptr inbounds %struct.bnx2fc_mp_req, %struct.bnx2fc_mp_req* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @dma_free_coherent(i32* %87, i64 %88, i32* %91, i32 %94)
  %96 = load %struct.bnx2fc_mp_req*, %struct.bnx2fc_mp_req** %3, align 8
  %97 = getelementptr inbounds %struct.bnx2fc_mp_req, %struct.bnx2fc_mp_req* %96, i32 0, i32 0
  store i32* null, i32** %97, align 8
  br label %98

98:                                               ; preds = %83, %78
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
