; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_sticore.c_sti_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_sticore.c_sti_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_struct = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sti_blkmv_outptr, %struct.sti_blkmv_inptr }
%struct.sti_blkmv_outptr = type { i32 }
%struct.sti_blkmv_inptr = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@clear_blkmv_flags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sti_set(%struct.sti_struct* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
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
  %19 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store %struct.sti_blkmv_inptr* %21, %struct.sti_blkmv_inptr** %13, align 8
  %22 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %14, i32 0, i32 0
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %14, i32 0, i32 1
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %14, i32 0, i32 2
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %14, i32 0, i32 3
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %14, i32 0, i32 4
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %14, i32 0, i32 5
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %14, i32 0, i32 6
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %14, i32 0, i32 7
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %36, align 4
  %38 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %39 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store %struct.sti_blkmv_outptr* %41, %struct.sti_blkmv_outptr** %15, align 8
  br label %42

42:                                               ; preds = %64, %6
  %43 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %44 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %43, i32 0, i32 0
  %45 = load i64, i64* %17, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.sti_blkmv_inptr*, %struct.sti_blkmv_inptr** %13, align 8
  %48 = bitcast %struct.sti_blkmv_inptr* %47 to i8*
  %49 = bitcast %struct.sti_blkmv_inptr* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 32, i1 false)
  %50 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %51 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %52 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.sti_blkmv_inptr*, %struct.sti_blkmv_inptr** %13, align 8
  %55 = load %struct.sti_blkmv_outptr*, %struct.sti_blkmv_outptr** %15, align 8
  %56 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %57 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @sti_call(%struct.sti_struct* %50, i32 %53, i32* @clear_blkmv_flags, %struct.sti_blkmv_inptr* %54, %struct.sti_blkmv_outptr* %55, i32 %58)
  store i32 %59, i32* %16, align 4
  %60 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %61 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %60, i32 0, i32 0
  %62 = load i64, i64* %17, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  br label %64

64:                                               ; preds = %42
  %65 = load i32, i32* %16, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %42, label %67

67:                                               ; preds = %64
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
