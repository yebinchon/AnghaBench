; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_nls.c_nls_upper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_nls.c_nls_upper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fs_info_t = type { i32** }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.fs_info_t }
%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nls_upper(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fs_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.super_block*, %struct.super_block** %4, align 8
  %8 = call %struct.TYPE_4__* @EXFAT_SB(%struct.super_block* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store %struct.fs_info_t* %9, %struct.fs_info_t** %6, align 8
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = call %struct.TYPE_4__* @EXFAT_SB(%struct.super_block* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %3, align 4
  br label %46

18:                                               ; preds = %2
  %19 = load %struct.fs_info_t*, %struct.fs_info_t** %6, align 8
  %20 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %19, i32 0, i32 0
  %21 = load i32**, i32*** %20, align 8
  %22 = icmp ne i32** %21, null
  br i1 %22, label %23, label %44

23:                                               ; preds = %18
  %24 = load %struct.fs_info_t*, %struct.fs_info_t** %6, align 8
  %25 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %24, i32 0, i32 0
  %26 = load i32**, i32*** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @get_col_index(i32 %27)
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %23
  %33 = load %struct.fs_info_t*, %struct.fs_info_t** %6, align 8
  %34 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %33, i32 0, i32 0
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @get_col_index(i32 %36)
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @get_row_index(i32 %40)
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %3, align 4
  br label %46

44:                                               ; preds = %23, %18
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %32, %16
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.TYPE_4__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i64 @get_col_index(i32) #1

declare dso_local i64 @get_row_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
