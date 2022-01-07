; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_fixup_ioaccel_cdb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_fixup_ioaccel_cdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IO_ACCEL_INELIGIBLE = common dso_local global i32 0, align 4
@WRITE_10 = common dso_local global i32 0, align 4
@READ_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @fixup_ioaccel_cdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fixup_ioaccel_cdb(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %96 [
    i32 128, label %12
    i32 129, label %12
    i32 130, label %13
    i32 131, label %13
  ]

12:                                               ; preds = %2, %2
  store i32 1, i32* %6, align 4
  br label %13

13:                                               ; preds = %2, %2, %12
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 6
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 31
  %22 = shl i32 %21, 16
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 8
  %27 = or i32 %22, %26
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %27, %30
  store i32 %31, i32* %7, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %17
  store i32 256, i32* %8, align 4
  br label %38

38:                                               ; preds = %37, %17
  br label %51

39:                                               ; preds = %13
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 12
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = call i32 @get_unaligned_be32(i32* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 6
  %50 = call i32 @get_unaligned_be32(i32* %49)
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %39, %38
  %52 = load i32, i32* %8, align 4
  %53 = icmp sgt i32 %52, 65535
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @IO_ACCEL_INELIGIBLE, align 4
  store i32 %55, i32* %3, align 4
  br label %97

56:                                               ; preds = %51
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @WRITE_10, align 4
  br label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @READ_10, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 %64, i32* %66, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 0, i32* %68, align 4
  %69 = load i32, i32* %7, align 4
  %70 = ashr i32 %69, 24
  %71 = load i32*, i32** %4, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %7, align 4
  %74 = ashr i32 %73, 16
  %75 = load i32*, i32** %4, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 3
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %7, align 4
  %78 = ashr i32 %77, 8
  %79 = load i32*, i32** %4, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 4
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 5
  store i32 %81, i32* %83, align 4
  %84 = load i32*, i32** %4, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 6
  store i32 0, i32* %85, align 4
  %86 = load i32, i32* %8, align 4
  %87 = ashr i32 %86, 8
  %88 = load i32*, i32** %4, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 7
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32*, i32** %4, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 8
  store i32 %90, i32* %92, align 4
  %93 = load i32*, i32** %4, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 9
  store i32 0, i32* %94, align 4
  %95 = load i32*, i32** %5, align 8
  store i32 10, i32* %95, align 4
  br label %96

96:                                               ; preds = %2, %63
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %54
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @get_unaligned_be32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
