; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_fcxp_map_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_fcxp_map_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_buf_info = type { i32, i64, i32 }
%struct.bfad_s = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bfa_sge_s = type { i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bfad_buf_info* @bfad_fcxp_map_sg(%struct.bfad_s* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.bfad_buf_info*, align 8
  %6 = alloca %struct.bfad_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.bfad_buf_info*, align 8
  %11 = alloca %struct.bfad_buf_info*, align 8
  %12 = alloca %struct.bfa_sge_s*, align 8
  %13 = alloca i32, align 4
  store %struct.bfad_s* %0, %struct.bfad_s** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 1, i32* %13, align 4
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.bfad_buf_info* @kcalloc(i32 40, i32 %14, i32 %15)
  store %struct.bfad_buf_info* %16, %struct.bfad_buf_info** %10, align 8
  %17 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %10, align 8
  %18 = icmp ne %struct.bfad_buf_info* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store %struct.bfad_buf_info* null, %struct.bfad_buf_info** %5, align 8
  br label %76

20:                                               ; preds = %4
  %21 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %10, align 8
  %22 = bitcast %struct.bfad_buf_info* %21 to i32*
  %23 = load i32, i32* %13, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 24, %24
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = bitcast i32* %26 to %struct.bfa_sge_s*
  store %struct.bfa_sge_s* %27, %struct.bfa_sge_s** %12, align 8
  %28 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %10, align 8
  store %struct.bfad_buf_info* %28, %struct.bfad_buf_info** %11, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %11, align 8
  %31 = getelementptr inbounds %struct.bfad_buf_info, %struct.bfad_buf_info* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %33 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %11, align 8
  %37 = getelementptr inbounds %struct.bfad_buf_info, %struct.bfad_buf_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %11, align 8
  %40 = getelementptr inbounds %struct.bfad_buf_info, %struct.bfad_buf_info* %39, i32 0, i32 1
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i32 @dma_alloc_coherent(i32* %35, i32 %38, i64* %40, i32 %41)
  %43 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %11, align 8
  %44 = getelementptr inbounds %struct.bfad_buf_info, %struct.bfad_buf_info* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %11, align 8
  %46 = getelementptr inbounds %struct.bfad_buf_info, %struct.bfad_buf_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %20
  br label %73

50:                                               ; preds = %20
  %51 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %11, align 8
  %52 = getelementptr inbounds %struct.bfad_buf_info, %struct.bfad_buf_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %11, align 8
  %56 = getelementptr inbounds %struct.bfad_buf_info, %struct.bfad_buf_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @memcpy(i32 %53, i8* %54, i32 %57)
  %59 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %11, align 8
  %60 = getelementptr inbounds %struct.bfad_buf_info, %struct.bfad_buf_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.bfa_sge_s*, %struct.bfa_sge_s** %12, align 8
  %63 = getelementptr inbounds %struct.bfa_sge_s, %struct.bfa_sge_s* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %11, align 8
  %65 = getelementptr inbounds %struct.bfad_buf_info, %struct.bfad_buf_info* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = load %struct.bfa_sge_s*, %struct.bfa_sge_s** %12, align 8
  %69 = getelementptr inbounds %struct.bfa_sge_s, %struct.bfa_sge_s* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load i32*, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  %72 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %10, align 8
  store %struct.bfad_buf_info* %72, %struct.bfad_buf_info** %5, align 8
  br label %76

73:                                               ; preds = %49
  %74 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %10, align 8
  %75 = call i32 @kfree(%struct.bfad_buf_info* %74)
  store %struct.bfad_buf_info* null, %struct.bfad_buf_info** %5, align 8
  br label %76

76:                                               ; preds = %73, %50, %19
  %77 = load %struct.bfad_buf_info*, %struct.bfad_buf_info** %5, align 8
  ret %struct.bfad_buf_info* %77
}

declare dso_local %struct.bfad_buf_info* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.bfad_buf_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
