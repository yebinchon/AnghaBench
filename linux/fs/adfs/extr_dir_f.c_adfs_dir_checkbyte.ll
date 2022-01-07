; ModuleID = '/home/carl/AnghaBench/linux/fs/adfs/extr_dir_f.c_adfs_dir_checkbyte.c'
source_filename = "/home/carl/AnghaBench/linux/fs/adfs/extr_dir_f.c_adfs_dir_checkbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adfs_dir = type { %struct.TYPE_2__*, %struct.buffer_head** }
%struct.TYPE_2__ = type { i32 }
%struct.buffer_head = type { i32 }
%union.anon = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adfs_dir*)* @adfs_dir_checkbyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adfs_dir_checkbyte(%struct.adfs_dir* %0) #0 {
  %2 = alloca %struct.adfs_dir*, align 8
  %3 = alloca %struct.buffer_head**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.anon, align 8
  %6 = alloca %union.anon, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.adfs_dir* %0, %struct.adfs_dir** %2, align 8
  %11 = load %struct.adfs_dir*, %struct.adfs_dir** %2, align 8
  %12 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %11, i32 0, i32 1
  %13 = load %struct.buffer_head**, %struct.buffer_head*** %12, align 8
  store %struct.buffer_head** %13, %struct.buffer_head*** %3, align 8
  %14 = load %struct.adfs_dir*, %struct.adfs_dir** %2, align 8
  %15 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 -21, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %39, %1
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, 26
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %33, %19
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @dir_u32(i32 %23)
  %25 = call i32 @le32_to_cpu(i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @ror13(i32 %26)
  %28 = xor i32 %25, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 %30, 4
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, -4
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %22, label %38

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @dir_u8(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %19, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %78

47:                                               ; preds = %43
  %48 = load %struct.buffer_head**, %struct.buffer_head*** %3, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i8* @bufoff(%struct.buffer_head** %48, i32 %49)
  %51 = bitcast i8* %50 to i32*
  %52 = bitcast %union.anon* %5 to i32**
  store i32* %51, i32** %52, align 8
  %53 = bitcast %union.anon* %5 to i32**
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = sub i64 0, %59
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = bitcast %union.anon* %6 to i32**
  store i32* %61, i32** %62, align 8
  br label %63

63:                                               ; preds = %71, %47
  %64 = bitcast %union.anon* %5 to i32**
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %64, align 8
  %67 = load i32, i32* %65, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @ror13(i32 %68)
  %70 = xor i32 %67, %69
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %63
  %72 = bitcast %union.anon* %5 to i32**
  %73 = load i32*, i32** %72, align 8
  %74 = bitcast %union.anon* %6 to i32**
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ult i32* %73, %75
  br i1 %76, label %63, label %77

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77, %43
  %79 = load %struct.buffer_head**, %struct.buffer_head*** %3, align 8
  %80 = call i8* @bufoff(%struct.buffer_head** %79, i32 2008)
  %81 = bitcast i8* %80 to i32*
  %82 = bitcast %union.anon* %5 to i32**
  store i32* %81, i32** %82, align 8
  %83 = bitcast %union.anon* %5 to i32**
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 36
  %86 = bitcast %union.anon* %6 to i32**
  store i32* %85, i32** %86, align 8
  br label %87

87:                                               ; preds = %97, %78
  %88 = bitcast %union.anon* %5 to i32**
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %88, align 8
  %91 = load i32, i32* %89, align 4
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @le32_to_cpu(i32 %92)
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @ror13(i32 %94)
  %96 = xor i32 %93, %95
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %87
  %98 = bitcast %union.anon* %5 to i32**
  %99 = load i32*, i32** %98, align 8
  %100 = bitcast %union.anon* %6 to i32**
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ult i32* %99, %101
  br i1 %102, label %87, label %103

103:                                              ; preds = %97
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = ashr i32 %105, 8
  %107 = xor i32 %104, %106
  %108 = load i32, i32* %7, align 4
  %109 = ashr i32 %108, 16
  %110 = xor i32 %107, %109
  %111 = load i32, i32* %7, align 4
  %112 = ashr i32 %111, 24
  %113 = xor i32 %110, %112
  %114 = and i32 %113, 255
  ret i32 %114
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dir_u32(i32) #1

declare dso_local i32 @ror13(i32) #1

declare dso_local i64 @dir_u8(i32) #1

declare dso_local i8* @bufoff(%struct.buffer_head**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
