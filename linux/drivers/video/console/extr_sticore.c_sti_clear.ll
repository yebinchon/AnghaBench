; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_sticore.c_sti_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_sticore.c_sti_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_struct = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sti_blkmv_outptr, %struct.sti_blkmv_inptr }
%struct.sti_blkmv_outptr = type { i32 }
%struct.sti_blkmv_inptr = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@clear_blkmv_flags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sti_clear(%struct.sti_struct* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sti_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sti_blkmv_inptr*, align 8
  %14 = alloca %struct.sti_blkmv_inptr, align 4
  %15 = alloca %struct.sti_blkmv_outptr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.sti_struct* %0, %struct.sti_struct** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %19 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %18, i32 0, i32 5
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store %struct.sti_blkmv_inptr* %21, %struct.sti_blkmv_inptr** %13, align 8
  %22 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %14, i32 0, i32 0
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %25 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %23, %26
  store i32 %27, i32* %22, align 4
  %28 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %14, i32 0, i32 1
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %31 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %29, %32
  store i32 %33, i32* %28, align 4
  %34 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %14, i32 0, i32 2
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %37 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %35, %38
  store i32 %39, i32* %34, align 4
  %40 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %14, i32 0, i32 3
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %43 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %41, %44
  store i32 %45, i32* %40, align 4
  %46 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %14, i32 0, i32 4
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %49 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = mul nsw i32 %47, %50
  store i32 %51, i32* %46, align 4
  %52 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %14, i32 0, i32 5
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %55 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %53, %56
  store i32 %57, i32* %52, align 4
  %58 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %14, i32 0, i32 6
  %59 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @c_bg(%struct.sti_struct* %59, i32 %60)
  store i32 %61, i32* %58, align 4
  %62 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %14, i32 0, i32 7
  %63 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @c_fg(%struct.sti_struct* %63, i32 %64)
  store i32 %65, i32* %62, align 4
  %66 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %67 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %66, i32 0, i32 5
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store %struct.sti_blkmv_outptr* %69, %struct.sti_blkmv_outptr** %15, align 8
  br label %70

70:                                               ; preds = %92, %6
  %71 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %72 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %71, i32 0, i32 2
  %73 = load i64, i64* %17, align 8
  %74 = call i32 @spin_lock_irqsave(i32* %72, i64 %73)
  %75 = load %struct.sti_blkmv_inptr*, %struct.sti_blkmv_inptr** %13, align 8
  %76 = bitcast %struct.sti_blkmv_inptr* %75 to i8*
  %77 = bitcast %struct.sti_blkmv_inptr* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %76, i8* align 4 %77, i64 32, i1 false)
  %78 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %79 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %80 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.sti_blkmv_inptr*, %struct.sti_blkmv_inptr** %13, align 8
  %83 = load %struct.sti_blkmv_outptr*, %struct.sti_blkmv_outptr** %15, align 8
  %84 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %85 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @sti_call(%struct.sti_struct* %78, i32 %81, i32* @clear_blkmv_flags, %struct.sti_blkmv_inptr* %82, %struct.sti_blkmv_outptr* %83, i32 %86)
  store i32 %87, i32* %16, align 4
  %88 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %89 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %88, i32 0, i32 2
  %90 = load i64, i64* %17, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  br label %92

92:                                               ; preds = %70
  %93 = load i32, i32* %16, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %70, label %95

95:                                               ; preds = %92
  ret void
}

declare dso_local i32 @c_bg(%struct.sti_struct*, i32) #1

declare dso_local i32 @c_fg(%struct.sti_struct*, i32) #1

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
