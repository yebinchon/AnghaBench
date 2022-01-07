; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_sticore.c_sti_bmove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_sticore.c_sti_bmove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_struct = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sti_blkmv_outptr, %struct.sti_blkmv_inptr }
%struct.sti_blkmv_outptr = type { i32 }
%struct.sti_blkmv_inptr = type { i32, i32, i32, i32, i32, i32 }

@default_blkmv_flags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sti_bmove(%struct.sti_struct* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.sti_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sti_blkmv_inptr*, align 8
  %16 = alloca %struct.sti_blkmv_inptr, align 4
  %17 = alloca %struct.sti_blkmv_outptr*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.sti_struct* %0, %struct.sti_struct** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %20 = load %struct.sti_struct*, %struct.sti_struct** %8, align 8
  %21 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %20, i32 0, i32 5
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store %struct.sti_blkmv_inptr* %23, %struct.sti_blkmv_inptr** %15, align 8
  %24 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %16, i32 0, i32 0
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.sti_struct*, %struct.sti_struct** %8, align 8
  %27 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %25, %28
  store i32 %29, i32* %24, align 4
  %30 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %16, i32 0, i32 1
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.sti_struct*, %struct.sti_struct** %8, align 8
  %33 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  store i32 %35, i32* %30, align 4
  %36 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %16, i32 0, i32 2
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.sti_struct*, %struct.sti_struct** %8, align 8
  %39 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 %37, %40
  store i32 %41, i32* %36, align 4
  %42 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %16, i32 0, i32 3
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.sti_struct*, %struct.sti_struct** %8, align 8
  %45 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %43, %46
  store i32 %47, i32* %42, align 4
  %48 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %16, i32 0, i32 4
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.sti_struct*, %struct.sti_struct** %8, align 8
  %51 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 %49, %52
  store i32 %53, i32* %48, align 4
  %54 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %16, i32 0, i32 5
  %55 = load i32, i32* %13, align 4
  %56 = load %struct.sti_struct*, %struct.sti_struct** %8, align 8
  %57 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %55, %58
  store i32 %59, i32* %54, align 4
  %60 = load %struct.sti_struct*, %struct.sti_struct** %8, align 8
  %61 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %60, i32 0, i32 5
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store %struct.sti_blkmv_outptr* %63, %struct.sti_blkmv_outptr** %17, align 8
  br label %64

64:                                               ; preds = %86, %7
  %65 = load %struct.sti_struct*, %struct.sti_struct** %8, align 8
  %66 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %65, i32 0, i32 2
  %67 = load i64, i64* %19, align 8
  %68 = call i32 @spin_lock_irqsave(i32* %66, i64 %67)
  %69 = load %struct.sti_blkmv_inptr*, %struct.sti_blkmv_inptr** %15, align 8
  %70 = bitcast %struct.sti_blkmv_inptr* %69 to i8*
  %71 = bitcast %struct.sti_blkmv_inptr* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 24, i1 false)
  %72 = load %struct.sti_struct*, %struct.sti_struct** %8, align 8
  %73 = load %struct.sti_struct*, %struct.sti_struct** %8, align 8
  %74 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.sti_blkmv_inptr*, %struct.sti_blkmv_inptr** %15, align 8
  %77 = load %struct.sti_blkmv_outptr*, %struct.sti_blkmv_outptr** %17, align 8
  %78 = load %struct.sti_struct*, %struct.sti_struct** %8, align 8
  %79 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @sti_call(%struct.sti_struct* %72, i32 %75, i32* @default_blkmv_flags, %struct.sti_blkmv_inptr* %76, %struct.sti_blkmv_outptr* %77, i32 %80)
  store i32 %81, i32* %18, align 4
  %82 = load %struct.sti_struct*, %struct.sti_struct** %8, align 8
  %83 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %82, i32 0, i32 2
  %84 = load i64, i64* %19, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  br label %86

86:                                               ; preds = %64
  %87 = load i32, i32* %18, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %64, label %89

89:                                               ; preds = %86
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sti_call(%struct.sti_struct*, i32, i32*, %struct.sti_blkmv_inptr*, %struct.sti_blkmv_outptr*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
