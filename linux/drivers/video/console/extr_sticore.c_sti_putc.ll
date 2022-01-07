; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_sticore.c_sti_putc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_sticore.c_sti_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_struct = type { i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.sti_font_outptr, %struct.sti_font_inptr }
%struct.sti_font_outptr = type { i32 }
%struct.sti_font_inptr = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@default_font_flags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sti_putc(%struct.sti_struct* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sti_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sti_font_inptr*, align 8
  %10 = alloca %struct.sti_font_inptr, align 4
  %11 = alloca %struct.sti_font_outptr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.sti_struct* %0, %struct.sti_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.sti_struct*, %struct.sti_struct** %5, align 8
  %15 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %14, i32 0, i32 5
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store %struct.sti_font_inptr* %17, %struct.sti_font_inptr** %9, align 8
  %18 = getelementptr inbounds %struct.sti_font_inptr, %struct.sti_font_inptr* %10, i32 0, i32 0
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.sti_struct*, %struct.sti_struct** %5, align 8
  %21 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %19, %22
  store i32 %23, i32* %18, align 4
  %24 = getelementptr inbounds %struct.sti_font_inptr, %struct.sti_font_inptr* %10, i32 0, i32 1
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.sti_struct*, %struct.sti_struct** %5, align 8
  %27 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %25, %28
  store i32 %29, i32* %24, align 4
  %30 = getelementptr inbounds %struct.sti_font_inptr, %struct.sti_font_inptr* %10, i32 0, i32 2
  %31 = load %struct.sti_struct*, %struct.sti_struct** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @c_bg(%struct.sti_struct* %31, i32 %32)
  store i32 %33, i32* %30, align 4
  %34 = getelementptr inbounds %struct.sti_font_inptr, %struct.sti_font_inptr* %10, i32 0, i32 3
  %35 = load %struct.sti_struct*, %struct.sti_struct** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @c_fg(%struct.sti_struct* %35, i32 %36)
  store i32 %37, i32* %34, align 4
  %38 = getelementptr inbounds %struct.sti_font_inptr, %struct.sti_font_inptr* %10, i32 0, i32 4
  %39 = load %struct.sti_struct*, %struct.sti_struct** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @c_index(%struct.sti_struct* %39, i32 %40)
  store i32 %41, i32* %38, align 4
  %42 = getelementptr inbounds %struct.sti_font_inptr, %struct.sti_font_inptr* %10, i32 0, i32 5
  %43 = load %struct.sti_struct*, %struct.sti_struct** %5, align 8
  %44 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %43, i32 0, i32 6
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @STI_PTR(i32 %47)
  store i32 %48, i32* %42, align 4
  %49 = load %struct.sti_struct*, %struct.sti_struct** %5, align 8
  %50 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %49, i32 0, i32 5
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store %struct.sti_font_outptr* %52, %struct.sti_font_outptr** %11, align 8
  br label %53

53:                                               ; preds = %75, %4
  %54 = load %struct.sti_struct*, %struct.sti_struct** %5, align 8
  %55 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %54, i32 0, i32 2
  %56 = load i64, i64* %13, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load %struct.sti_font_inptr*, %struct.sti_font_inptr** %9, align 8
  %59 = bitcast %struct.sti_font_inptr* %58 to i8*
  %60 = bitcast %struct.sti_font_inptr* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %60, i64 24, i1 false)
  %61 = load %struct.sti_struct*, %struct.sti_struct** %5, align 8
  %62 = load %struct.sti_struct*, %struct.sti_struct** %5, align 8
  %63 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.sti_font_inptr*, %struct.sti_font_inptr** %9, align 8
  %66 = load %struct.sti_font_outptr*, %struct.sti_font_outptr** %11, align 8
  %67 = load %struct.sti_struct*, %struct.sti_struct** %5, align 8
  %68 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @sti_call(%struct.sti_struct* %61, i32 %64, i32* @default_font_flags, %struct.sti_font_inptr* %65, %struct.sti_font_outptr* %66, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load %struct.sti_struct*, %struct.sti_struct** %5, align 8
  %72 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %71, i32 0, i32 2
  %73 = load i64, i64* %13, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  br label %75

75:                                               ; preds = %53
  %76 = load i32, i32* %12, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %53, label %78

78:                                               ; preds = %75
  ret void
}

declare dso_local i32 @c_bg(%struct.sti_struct*, i32) #1

declare dso_local i32 @c_fg(%struct.sti_struct*, i32) #1

declare dso_local i32 @c_index(%struct.sti_struct*, i32) #1

declare dso_local i32 @STI_PTR(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sti_call(%struct.sti_struct*, i32, i32*, %struct.sti_font_inptr*, %struct.sti_font_outptr*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
